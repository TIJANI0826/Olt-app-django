import asyncio
import logging # Import the logging module
from datetime import timedelta

from django.shortcuts import get_object_or_404
from django.utils import timezone
from django.db.models import Count, Q

from rest_framework.permissions import IsAuthenticated
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import viewsets, status, generics, mixins
from rest_framework.decorators import action,api_view, permission_classes # For function-based views
from rest_framework.response import Response


from .models import (
    OLT, Card, PONPort, UplinkPort, VLAN,
    ONUType, ONU, Zone, ODB, SpeedProfile,PONOutageEvent
)
from .serializers import ( # Import the new serializers
    OLTListSerializer, OLTDetailSerializer, OLTCreateUpdateSerializer, PONPortSerializer,
        CardSerializer, PONPortSerializer, ONUSerializer, UplinkPortSerializer, VLANSerializer,ONUTypeSerializer, ONUSerializer,
    ZoneSerializer, ODBSerializer, SpeedProfileSerializer,PONOutageEventSerializer
)
from .utils.board_utils import get_installed_board_info # Assuming this is the correct pa
# from .tasks import update_olt_metrics
from .utils.snmp_utils import get_ont_info_per_slot_async, get_all_ont_details_for_pon_port_async
from .tasks import (
    discover_and_create_cards_task, 
    discover_and_create_pon_ports_task, 
    discover_and_update_onts_for_pon_port_task, 
    update_olt_system_metrics_task,
    check_olt_reachability_task 
)

logger = logging.getLogger(__name__) # Get a logger for this module

class OLTViewSet(viewsets.ModelViewSet):
    queryset = OLT.objects.all()
    # Remove the fixed serializer_class here
    # serializer_class = OLTSerializer

    def get_serializer_class(self):
        """Return appropriate serializer class based on action."""
        if self.action == 'retrieve':
            return OLTDetailSerializer
        elif self.action in ['create', 'update', 'partial_update']:
            return OLTCreateUpdateSerializer
        # Default to list serializer for 'list' action or others
        return OLTListSerializer

    @action(detail=True, methods=['get'])
    def cards(self, request, pk=None):
        """Return cards for this OLT; if none, fetch via SSH and create them."""
        # Try to get cards from DB
        cards_qs = Card.objects.filter(olt_id=pk)
        if cards_qs.exists():
            serializer = CardSerializer(cards_qs, many=True)
            return Response(serializer.data)
        # No cards: fetch via SSH and create
        olt = self.get_object()
        try:
            # Use the already imported function
            # from network.utils.board_utils import get_installed_board_info
            board_info = get_installed_board_info(
                olt.ip_address,
                olt.telnet_username,
                olt.telnet_password # Assuming password is required, add port if needed
            )
            boards = board_info.get('data', {}).get('boards', [])
            created_cards = []
            for board in boards:
                card = Card.objects.create(
                    olt=olt,
                    slot_number=board.get('slot'),
                    card_type=board.get('board_name'),
                    port_count=board.get('port_count'),
                    status=board.get('status')
                )
                created_cards.append(card)
            serializer = CardSerializer(created_cards, many=True)
            return Response(serializer.data)
        except ImportError:
            return Response({'error': 'SSH board info utility not found'}, status=500)
        
        
    @action(detail=True, methods=['get'], url_path='slot/(?P<slot_number_str>[^/.]+)/pon-port-details')
    def pon_port_details_for_slot(self, request, pk=None, slot_number_str=None):
        """
        Retrieves PON port details (description, status, ONT counts) for a specific slot of an OLT.
        It first checks the database. If data is not present or stale, it fetches from SNMP and updates the DB.
        The slot_number_str from the URL is used to identify the card.
        """
        olt = self.get_object() # OLT instance
        try:
            slot_number = int(slot_number_str)
            if not (0 <= slot_number < 64): # Basic validation for slot number range
                # This range might need to be adjusted based on your OLT's max slot number
                raise ValueError("Slot number out of typical range.")
        except ValueError:
            return Response({"error": "Invalid slot number format or value."}, status=status.HTTP_400_BAD_REQUEST)

        if not olt.snmp_ro_community:
             return Response({"error": "OLT SNMP read-only community string is not configured."}, status=status.HTTP_400_BAD_REQUEST)

        try:
            # Fetch the specific card for the given OLT and slot_number
            # Find any card associated with this OLT that has port_count = 16
            # The slot_number from the URL is validated but not used to pick the card for SNMP here.
            # Get the specific card for the given OLT and slot_number.
            # If it doesn't exist, we might need to create it or handle it.
            # For now, we assume it should exist if this endpoint is called,
            # possibly created when viewing the OLT cards list.
            # If the card has a specific port_count (e.g., 16) that's a prerequisite for SNMP,
            # that logic should be here.
            try:
                # Using the slot_number from the URL to fetch the card
                target_card = Card.objects.get(olt=olt, slot_number=slot_number)
            except Card.DoesNotExist:
                 # Optionally, create the card if it's guaranteed to exist on the OLT
                 # For now, let's return an error if the card isn't in the DB.
                 # This implies that the card list should be populated first.
                return Response(
                    {"error": f"Card in slot {slot_number} not found in database for OLT {olt.name}. Please ensure cards are discovered first."},
                    status=status.HTTP_404_NOT_FOUND
                )
            # Check if the card is supposed to have a specific number of ports for this operation
            if target_card.port_count < 1: # Example: only proceed for 16-port cards
                 return Response({
                     "error": f"The card in slot {slot_number} has {target_card.port_count} ports. This operation is intended for cards with at least 1 port."
                 }, status=status.HTTP_400_BAD_REQUEST)
            
            num_pon_ports_on_card = target_card.port_count

            # Try to fetch from DB first
            db_pon_ports = PONPort.objects.filter(card=target_card).order_by('port_index_on_card')
            
            # Define staleness threshold (e.g., 15 minutes)
            staleness_threshold = timezone.now() - timedelta(minutes=15)
            
            refresh_from_snmp = False # Default to refresh
            # if db_pon_ports.exists() and db_pon_ports.count() == num_pon_ports_on_card:
            #     # Check if all ports have a recent last_snmp_update
            #     if all(port.last_snmp_update and port.last_snmp_update > staleness_threshold for port in db_pon_ports):
            #         refresh_from_snmp = False
            
            if not refresh_from_snmp:
                serializer = PONPortSerializer(db_pon_ports, many=True)
                return Response(serializer.data)

            # # Fetch from SNMP, then save/update DB
            # pon_details_data_snmp = get_ont_info_per_port(
            #     ip=olt.ip_address,
            #     community=olt.snmp_ro_community,
            #     slot_num=target_card.slot_number, # Use the slot_number of the found 16-port card
            #     number_of_ports=num_pon_ports_on_card
            # )
            # updated_ports_in_db = []
            # for port_data_snmp in pon_details_data_snmp:
            #     pon_port_obj, created = PONPort.objects.update_or_create(
            #         card=target_card,
            #         port_index_on_card=port_data_snmp.get('port_id'), # Matches key from _fetch_one_port_details_async
            #         defaults={
            #             'description': port_data_snmp.get('port_desc'),
            #             'status': str(port_data_snmp.get('port_status')), # Ensure it's a string
            #             'configured_onts': port_data_snmp.get('number_of_olt', 0),
            #             'online_onts': port_data_snmp.get('online', 0),
            #             'tx_power': port_data_snmp.get('tx_power'),
            #             'rx_power': port_data_snmp.get('rx_power'),
            #             'last_snmp_update': timezone.now()
            #         }
            #     )
            #     updated_ports_in_db.append(pon_port_obj)
            
            # serializer = PONPortSerializer(updated_ports_in_db, many=True)
            # return Response(serializer.data)
            
        except Exception as e:
            print(f"Error in pon_port_details_for_slot view for OLT {olt.id}, Slot {slot_number}: {e}")
            return Response({"error": f"Failed to retrieve PON port details via SNMP: {str(e)}"},
                            status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    @action(detail=True, methods=['post'], url_path='slot/(?P<slot_number_str>[^/.]+)/refresh-pon-details')
    def refresh_pon_port_details(self, request, pk=None, slot_number_str=None):
        """
        Triggers a background task to refresh PON port details for a specific slot of an OLT.
        """
        olt = self.get_object()
        try:
            slot_number = int(slot_number_str)
            if not (0 <= slot_number < 64):
                raise ValueError("Slot number out of typical range.")
        except ValueError:
            return Response({"error": "Invalid slot number format or value."}, status=status.HTTP_400_BAD_REQUEST)

        if not olt.snmp_ro_community:
            return Response({"error": "OLT SNMP read-only community string is not configured."}, status=status.HTTP_400_BAD_REQUEST)

        try:
            target_card = Card.objects.get(olt=olt, slot_number=slot_number)
            # Optional: Add a check here if only specific card types or port_counts should be refreshed
            # if target_card.port_count != 16: # Example
            #     return Response({"error": "This card type/port count is not eligible for PON port refresh."}, status=status.HTTP_400_BAD_REQUEST)

            # Trigger the Celery task
            discover_and_create_pon_ports_task.delay(target_card.id)
            
            return Response({"message": "PON port details refresh initiated in the background."}, status=status.HTTP_202_ACCEPTED)
        except Card.DoesNotExist:
            return Response({"error": f"Card in slot {slot_number} not found for OLT {olt.name}."}, status=status.HTTP_404_NOT_FOUND)
        except Exception as e:
            return Response({"error": f"Failed to initiate PON port refresh: {str(e)}"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    @action(detail=True, methods=['post'], url_path='refresh-system-metrics')
    def refresh_system_metrics(self, request, pk=None):
        """
        Triggers a Celery task to refresh system metrics for the OLT.
        """
        olt = self.get_object()
        logger.info(f"VIEW: Attempting to trigger system metrics refresh for OLT ID {olt.id} ({olt.name}).")
        try:
            update_olt_system_metrics_task.delay(olt.id)
            logger.info(f"VIEW: Successfully called .delay() for update_olt_system_metrics_task for OLT ID {olt.id}.")
        except Exception as e:
            logger.error(f"VIEW: Error calling .delay() for update_olt_system_metrics_task for OLT ID {olt.id}: {e}", exc_info=True)
        return Response({"message": "System metrics refresh initiated."}, status=status.HTTP_202_ACCEPTED)
    @action(detail=True, methods=['post'], url_path='check-reachability')
    def check_reachability(self, request, pk=None):
        """
        Triggers a Celery task to check OLT reachability via ping.
        """
        olt = self.get_object()
        check_olt_reachability_task.delay(olt.id)
        return Response({"message": "OLT reachability check initiated."}, status=status.HTTP_202_ACCEPTED)

class CardViewSet(viewsets.ModelViewSet):
    queryset = Card.objects.all()
    serializer_class = CardSerializer

class PONPortViewSet(viewsets.ModelViewSet):
    queryset = PONPort.objects.all()
    serializer_class = PONPortSerializer

class UplinkPortViewSet(viewsets.ModelViewSet):
    queryset = UplinkPort.objects.all()
    serializer_class = UplinkPortSerializer

class VLANViewSet(viewsets.ModelViewSet):
    queryset = VLAN.objects.all()
    serializer_class = VLANSerializer

class ONUTypeViewSet(viewsets.ModelViewSet):
    queryset = ONUType.objects.all()
    serializer_class = ONUTypeSerializer

class ONUViewSet(mixins.ListModelMixin,
                 mixins.RetrieveModelMixin, # Optional: if you want a detail view for a single ONT
                 viewsets.GenericViewSet):
    """
    ViewSet for listing ONTs on a specific PON port and triggering their refresh.
    Accessed via /api/pon-ports/{pon_port_pk}/onts/
    """
    serializer_class = ONUSerializer
    # queryset = ONU.objects.all() # We'll override get_queryset

    def get_queryset(self):
        """
        This view should return a list of all the ONUs
        for the PON port as determined by the pon_port_pk portion of the URL.
        """
        pon_port_pk = self.kwargs.get('pon_port_pk')
        if pon_port_pk:
            return ONU.objects.filter(pon_port_id=pon_port_pk).select_related('onu_type', 'pon_port__card__olt').order_by('ont_index_on_port')
        return ONU.objects.none() # Should not happen if routing is correct

    @action(detail=False, methods=['post'], url_path='refresh-ont-details')
    def refresh_ont_details(self, request, pon_port_pk=None):
        """
        Triggers a background task to refresh ONT details for the specified PON port.
        """
        try:
            pon_port = PONPort.objects.get(pk=pon_port_pk)
        except PONPort.DoesNotExist:
            return Response({"error": "PON Port not found."}, status=status.HTTP_404_NOT_FOUND)

        try:
            # Trigger the Celery task
            discover_and_update_onts_for_pon_port_task.delay(pon_port.id)
            return Response(
                {"message": f"ONT details refresh initiated for PON Port {pon_port.id} in the background."},
                status=status.HTTP_202_ACCEPTED
            )
        except Exception as e:
            return Response(
                {"error": f"Failed to initiate ONT details refresh: {str(e)}"},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )
@api_view(['GET'])
# Add permission_classes as needed, e.g., [IsAuthenticated] or [AllowAny] for now
# @permission_classes([AllowAny]) 
def get_olt_pon_port_context_info(request, olt_id, slot_number, pon_port_id):
    """
    Provides context information (OLT name, PON port index) 
    for breadcrumbs or headers on ONT list/detail pages.
    """
    olt = get_object_or_404(OLT, pk=olt_id)
    
    try:
        # Ensure pon_port_id is treated as an integer for the lookup
        pon_port_pk = int(pon_port_id)
        pon_port = get_object_or_404(PONPort, pk=pon_port_pk)
    except ValueError:
        return Response({"error": "Invalid PON Port ID format."}, status=status.HTTP_400_BAD_REQUEST)

    # Validate that the PON port belongs to the specified OLT and Slot
    if pon_port.card.olt_id != olt.id or pon_port.card.slot_number != int(slot_number):
        return Response(
            {"error": "PON Port does not match the specified OLT and Slot."},
            status=status.HTTP_404_NOT_FOUND
        )

    data = {
        "olt_name": olt.name,
        "pon_port": {
            "id": pon_port.id,
            "port_index_on_card": pon_port.port_index_on_card
        }
    }
    return Response(data, status=status.HTTP_200_OK)
class ZoneViewSet(viewsets.ModelViewSet):
    queryset = Zone.objects.all()
    serializer_class = ZoneSerializer

class ODBViewSet(viewsets.ModelViewSet):
    queryset = ODB.objects.all()
    serializer_class = ODBSerializer

class SpeedProfileViewSet(viewsets.ModelViewSet):
    queryset = SpeedProfile.objects.all()
    serializer_class = SpeedProfileSerializer

from network.utils.snmp_utils import get_system_metrics
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
import asyncio
class SystemMetricsAPIView(APIView):
    def get(self, request):
        from network.models import OLT
        olt_id = request.query_params.get('olt_id')
        board = request.query_params.get('board')
        if not olt_id:
            return Response({'error': 'olt_id is required'}, status=status.HTTP_400_BAD_REQUEST)
        try:
            olt = OLT.objects.get(id=olt_id)
        except OLT.DoesNotExist:
            return Response({'error': 'OLT not found'}, status=status.HTTP_404_NOT_FOUND)
        host = olt.ip_address
        ssh_username = olt.telnet_username
        ssh_password = olt.telnet_password
        try:
            metrics = get_system_metrics(host, ssh_username, ssh_password, board)
            print("[API DEBUG] metrics to return:", metrics)
            return Response(metrics)
        except Exception as e:
            return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

@api_view(['GET'])
def dashboard_summary_view(request):
    """
    API endpoint to provide summary statistics for the dashboard.
    """
    total_olts = OLT.objects.count()
    online_olts = OLT.objects.filter(status='active').count()

    total_onts = ONU.objects.count()
    online_onts = ONU.objects.filter(status='online').count()
    offline_onts = ONU.objects.filter(status='offline').count()

    # Assuming 'power' and 'los' are possible values for last_down_cause
    offline_power_onts = ONU.objects.filter(status='offline', last_down_cause__icontains='power').count()
    offline_los_onts = ONU.objects.filter(status='offline', last_down_cause__icontains='los').count()

    # Get online OLTs with uptime and temperature (assuming these fields are populated by tasks)
    #online_olts_data = OLT.objects.filter(status='active').values('id', 'name', 'uptime', 'temperature')
    
    # Fetch ALL OLTs with their details
    all_olts_details_list = []
    for olt in OLT.objects.all().order_by('name'): # Get all OLTs
        all_olts_details_list.append({
            'id': olt.id,
            'name': olt.name,
            'status': olt.status,  # The raw status value e.g., 'active', 'inactive'
            'status_display': olt.get_status_display(), # Human-readable e.g., 'Active', 'Inactive'
            'uptime': olt.uptime, # Assuming this is the string like "Xdays Yhrs..."
            'temperature': olt.temperature,
        })
    summary_data = {
        'total_olts': total_olts,
        'online_olts_count': online_olts,
        'total_onts': total_onts,
        'online_onts_count': online_onts,
        'offline_onts_count': offline_onts,
        'offline_power_onts_count': offline_power_onts,
        'offline_los_onts_count': offline_los_onts,
        #'online_olts_details': list(online_olts_data), # Convert queryset to list
        'all_olts_details': all_olts_details_list,
    }

    return Response(summary_data)

@api_view(['GET'])
def pon_outage_list_view(request):
    """
    API endpoint to list active and recent PON outage events.
    """
    # Get active outages and maybe recent ones (e.g., ended in the last 24 hours)
    outages = PONOutageEvent.objects.filter(Q(end_time__isnull=True) | Q(end_time__gte=timezone.now() - timezone.timedelta(minutes=5))).order_by('-start_time')
    serializer = PONOutageEventSerializer(outages, many=True)
    return Response(serializer.data)