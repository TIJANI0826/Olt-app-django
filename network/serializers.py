from .models import (
    OLT, Card, PONPort, UplinkPort, VLAN,
    ONUType, ONU, Zone, ODB, SpeedProfile,PONOutageEvent
)
from rest_framework import serializers


class CardSerializer(serializers.ModelSerializer):
    class Meta:
        model = Card
        fields = ['id', 'olt', 'slot_number', 'card_type', 'status', 'created_at','port_count']

# Serializer for Listing OLTs (Read-only focus)
class OLTListSerializer(serializers.ModelSerializer):
    class Meta:
        model = OLT
        fields = [
            'id', 'name', 'ip_address', 'location', 'model',
            'serial_number', 'firmware_version', 'hardware_version',
            'software_version', 'temperature', 'uptime',
            'memory_usage', 'memory_total', 'memory_free',
            'storage_usage', 'last_metrics_update', 'metrics_status',
            'metrics_error'
        ]

# Serializer for Retrieving OLT Details (More comprehensive read-only)
class OLTDetailSerializer(serializers.ModelSerializer):
    total_cards = serializers.IntegerField(source='get_total_cards', read_only=True)
    total_pon_ports = serializers.IntegerField(source='get_total_pon_ports', read_only=True)
    total_uplink_ports = serializers.IntegerField(source='get_total_uplink_ports', read_only=True)
    total_vlans = serializers.IntegerField(source='get_total_vlans', read_only=True)
    active_onus = serializers.IntegerField(source='get_active_onus', read_only=True)

    class Meta:
        model = OLT
        fields = [
            'id', 'name', 'ip_address', 'location', 'description', 'model',
            'serial_number', 'firmware_version', 'status', 
            'uptime', # From DB, updated by refresh task
            'last_seen',
            'cpu_usage', # From DB, updated by refresh task
            'memory_usage', # From DB, updated by refresh task
            'temperature', # From DB (board temp), updated by refresh task
            'env_temperature', # Separate environment temperature if available
            'power_supply_status',
            'management_vlan', 'snmp_ro_community', 'snmp_version', 'created_at',
            'updated_at', 'total_cards', 'total_pon_ports', 'total_uplink_ports', 'total_vlans', 'active_onus',
            'last_metrics_update', 'metrics_status', 'metrics_error' # Add these fields
        ]

# Serializer specifically for Creating/Updating OLTs
class OLTCreateUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = OLT
        # Include fields that should be provided when creating/updating
        fields = [
            'name', 'ip_address', 'location', 'model', 'description',
            'serial_number', 'hardware_version', 'software_version', 'firmware_version',
            'vpn_reachable', # Assuming this can be set initially
            'telnet_port', 'telnet_username', 'telnet_password',
            'snmp_ro_community', 'snmp_rw_community', 'snmp_port',
            'iptv_module', # Assuming this can be set initially
            'supported_pon_types', # Assuming this can be set initially
            'tr069_profile', # Assuming this can be set initially
            'management_vlan', 'snmp_version',
            # Exclude read-only fields like status, uptime, last_seen, metrics, timestamps etc.
        ]
        # Optional: Add extra validation if needed

# class OLTSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = OLT
#         fields = '__all__'

# class CardSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Card
#         fields = '__all__'

class PONPortSerializer(serializers.ModelSerializer):
    class Meta:
        model = PONPort
        fields = [
            'id', 'card', 'port_index_on_card', 'description', 'status',
            'configured_onts', 'online_onts', 'tx_power', 'rx_power',
            'last_snmp_update', 'created_at'
        ]
        read_only_fields = ['card'] # Card will be set based on the URL context

class UplinkPortSerializer(serializers.ModelSerializer):
    class Meta:
        model = UplinkPort
        fields = '__all__'

class VLANSerializer(serializers.ModelSerializer):
    class Meta:
        model = VLAN
        fields = '__all__'

class ONUTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = ONUType
        fields = '__all__'

class ONUSerializer(serializers.ModelSerializer):
    onu_type_name = serializers.CharField(source='onu_type.name', read_only=True)

    class Meta:
        model = ONU
        fields = [
            'id', 'pon_port', 'serial_number', 'ont_index_on_port', 'status',
            'rx_power_at_ont', 'tx_power_at_ont', 'rx_power_at_olt',
            'onu_type', 'onu_type_name', 'last_down_time', 'last_down_cause',
            'last_snmp_update', 'created_at'
        ]

class ZoneSerializer(serializers.ModelSerializer):
    class Meta:
        model = Zone
        fields = '__all__'

class ODBSerializer(serializers.ModelSerializer):
    class Meta:
        model = ODB
        fields = '__all__'

class SpeedProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = SpeedProfile
        fields = '__all__'


class PONOutageEventSerializer(serializers.ModelSerializer):
    pon_port_name = serializers.CharField(source='pon_port.__str__', read_only=True)
    olt_name = serializers.CharField(source='pon_port.card.olt.name', read_only=True)
    slot_port = serializers.CharField(source='pon_port.slot_port_display', read_only=True)

    class Meta:
        model = PONOutageEvent
        fields = ['id', 'pon_port', 'pon_port_name', 'olt_name', 'slot_port', 'start_time', 'end_time', 'affected_ont_count', 'possible_cause']