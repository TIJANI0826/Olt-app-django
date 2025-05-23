�-- ============================================================================
-- Copyright (C) 2022 by HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI-PIM-STD-MIB.my , this MIB module for management of 
--              the Protocol Independent Multicast (PIM) protocols for PIM routers.
-- Reference:  
-- Version: V2.18
-- History:
--    
-- ============================================================================
 ,"RFC 3596, RFC 3956 and I-D.ietf-pim-sm-bsr"+"The mechanism by which a PIM group mapping was learned.

            fixed(1)     Link-local or unroutable group mappings.

            configRp(2)  Local static RP configuration.

            configSsm(3) Local SSM Group configuration.

            bsr(4)       The PIM Bootstrap Router (BSR) mechanism.

            autoRp(5)    Auto-RP mechanism.

            embedded(6)  The Embedded-RP mechanism where the RP address
                         is embedded in the multicast group address.

            other(7)     Any other mechanism."              @"The PIM control message state.

            recv(1)      The PIM control message has been received.

            sent(2)      The PIM control message has been sent.

            invalid(3)   The invalid PIM control message has been received.

            filter(4)    The PIM control message has been filtered."              P"The PIM mode in which a group is operating.

            none(1)      The group is not using PIM, which may be the
                         case if, for example, it is a link-local or
                         unroutable group address.

            ssm(2)       Source-Specific Multicast (SSM) with PIM Sparse
                         Mode.

            asm(3)       Any Source Multicast (ASM), with PIM Sparse
                         Mode.

            bidir(4)     Bi-directional PIM.

            dm(5)        PIM Dense Mode.

            other(6)     Any other PIM mode."                                                                                                     �"The MIB module for management of PIM routers.

            Huawei Technologies co.,Ltd . Supplementary information may
            be available at:
            http://www.huawei.com" �"Huawei Industrial Base
              Bantian, Longgang
               Shenzhen 518129
               People's Republic of China
               Website: http://www.huawei.com
               Email: support@huawei.com
             " "202202110000Z" "202104190000Z" "202002110000Z" "202002100000Z" "201809250000Z" "201808160000Z" "201808072009Z" "201807201524Z" "201807051430Z" "201807050000Z" "201805170000Z" "201802050000Z" "201611090000Z" "201605260000Z" "201407010000Z" "201406200000Z" "201305060000Z" "200704240000Z" "Modify comment." "Modify comment." q"1.Modify hwPimGlobalTypeOifThresholdExceed.
                  2.Modify hwPimGlobalTypeOifThresholdExceedClear." k"1.Add hwPimGlobalTypeOifThresholdExceed.
                  2.Add hwPimGlobalTypeOifThresholdExceedClear." &"Modify hwPimRpfAssertWinnerFlapping."�"1.Add hwPimRpfRtFlapping.
                                   2.Add hwPimRpfRtFlappingClear.
                                   3.Add hwPimRpfAssertWinnerFlapping.
                                   4.Add hwPimRpfAssertWinnerFlappingClear.
                                   5.Create 2 params including
                                   hwPimNotificationAssertWinnerAddress,
                                   hwPimNotificationAssertWinnerFlapClearReasonType." *"1.Add vrfId into hwPimVrfRouteCountTable"<"1.Add hwPimVrfTypeSGThresholdExceed trap.
                  2.Add hwPimVrfTypeSGThresholdExceedClear trap.
                  3.Add hwPimVrfTypeSGExceed trap.
                  4.Add hwPimVrfTypeSGExceedClear trap.
		              5.Add hwPimGlobalRouteCountTable.
		              6.Add hwPimVrfRouteCountTable" r"1.Modify hwPimBasNeighborExceed trap.
                                2.ModifyhwPimBasNeighborExceedClear trap." �"1.Add hwPimBasNeighborExceed trap.
                                2.Add hwPimBasNeighborExceedClear trap.
	             3.Add hwPimNotificationSlot."  "Add hwPimBasNeighborLoss trap." a"1.Add hwPimSrcNumLimit trap.
                                2.Add hwPimSrcNumLimitClear trap." 7"Modify the description of hwPimNotificationLimitType.")"1.Add hwPimGlobalTypeSGThresholdExceed.
                                   2.Add hwPimGlobalTypeSGThresholdExceedClear.
                                   3.Add hwPimGlobalTypeSGExceed.
                                   4.Add hwPimGlobalTypeSGExceedClear.
                                  """1.Modify the description of  hwPimStarGThresholdExceed.
                                   2.Modify the description of  hwPimStarGThresholdExceedClear.
                                   3.Modify the description of  hwPimStarGExceedClear.
                                   4.Modify the description of  hwPimSGThresholdExceed.
                                   5.Modify the description of  hwPimSGThresholdExceedClear.
                                   6.Modify the description of  hwPimSGExceedClear.
                                  "5"1.Add hwPimStarGThresholdExceed trap.
                                   2.Add hwPimStarGThresholdExceedClear trap.
                                   3.Add hwPimStarGExceed trap.
                                   4.Add hwPimStarGExceedClear trap.
                                   5.Add hwPimSGThresholdExceed trap.
                                   6.Add hwPimSGThresholdExceedClear trap.
                                   7.Add hwPimSGExceed trap.
                                   8.Add hwPimSGExceedClear trap.
                                  " ."Modify the description of hwPimNeighborLoss." *"The initial revision of this Mib module."       -- 11 Feb 2022
          �"A hwPimNeighborLoss notification signifies the loss of an
            adjacency with a neighbor.  This notification should be
            generated when the neighbor is lost.

            This notification is generated whenever the counter
            hwPimNeighborLossCount is incremented, subject
            to the rate limit specified by
            hwPimNeighborLossNotificationPeriod." "RFC 4601 section 4.3.2"              d"A hwPimInvalidRegister notification signifies that an invalid
            PIM Register message was received by this device.

            This notification is generated whenever the counter
            hwPimInvalidRegisterMsgsRcvd is incremented, subject to the
            rate limit specified by
            hwPimInvalidRegisterNotificationPeriod." "RFC 4601 section 4.4.2"              i"A hwPimInvalidJoinPrune notification signifies that an
            invalid PIM Join/Prune message was received by this device.

            This notification is generated whenever the counter
            hwPimInvalidJoinPruneMsgsRcvd is incremented, subject to the
            rate limit specified by
            hwPimInvalidJoinPruneNotificationPeriod." "RFC 4601 section 4.5.2"              M"A hwPimRpMappingChange notification signifies a change to the
            active RP mapping on this device.
            This notification is generated whenever the counter
            hwPimRpMappingChangeCount is incremented, subject to the
            rate limit specified by
            pimRPMappingChangeNotificationPeriod."                ["A hwPimInterfaceElection notification signifies that a new DR
            or DF has been elected on a network.

            This notification is generated whenever the counter
            hwPimInterfaceElectionWinCount is incremented, subject to the
            rate limit specified by
            hwPimInterfaceElectionNotificationPeriod." M"RFC 4601 section 4.3.2 and
               I-D.ietf-pim-bidir section 3.5.2"              �"A hwPimNeighborAdd notification signifies the new neighbor.  
            This notification should be generated when receiving the hello 
            report of a new neighbor.

            This notification is generated whenever the counter
            hwPimNeighborAddCount is incremented, subject
            to the rate limit specified by
            hwPimNeighborAddNotificationPeriod." "RFC 4601 section 4.3.1"               ^"A hwPimGRStart notification signifies that the router enters 
            the PIM GR state."                 \"A hwPimGREnd notification signifies that the router leaves 
            the PIM GR state."                 ~"A hwPimMrtLimit notification signifies that PIM entries cannot be 
             created because the upper limit is crossed."                 Y"A hwPimNeighborUnavailable notification signifies that the PIM neighbor is unavailable."                 \"A hwPimNeighborUnavailableClear notification signifies that the PIM neighbor is available."                 F"A hwPimMrtLimit notification signifies that PIM entries can created."                 �"A hwPimStarGThresholdExceed notification signifies that PIM (*, G) entries count of all instances reached the upper threshold."                 �"A hwPimStarGThresholdExceedClear notification signifies that PIM (*, G) entries count of all instances fell below the lower threshold."                 m"A hwPimStarGExceed notification signifies that PIM (*, G) entries count of all instances reached the limit."                 t"A hwPimStarGExceedClear notification signifies that PIM(*, G) entries count of all instances fell below the limit."                 }"A hwPimSGThresholdExceed notification signifies that PIM (S, G) entries count of all instances reached the upper threshold."                 �"A hwPimSGThresholdExceedClear notification signifies that PIM (S, G) entries count of all instances fell below the lower threshold."                 j"A hwPimSGExceed notification signifies that PIM (S, G) entries count of all instances reached the limit."                 "A hwPimSGExceedClear notification signifies that the number of PIM(S, G) entries count of all instances fell below the limit."                 �"A hwPimGlobalTypeSGThresholdExceed notification signifies that PIM specified type entries count of all instances reached the upper threshold."                 �"A hwPimGlobalTypeSGThresholdExceedClear notification signifies that PIM specified type entries count of all instances fell below the lower threshold."                 |"A hwPimGlobalTypeSGExceed notification signifies that PIM specified type entries count of all instances reached the limit."                 �"A hwPimGlobalTypeSGExceedClear notification signifies that the number of PIM specified type entries count of all instances fell below the limit."                 �"A hwPimSrcNumLimit notification signifies that the number of multicast sources for a multicast group exceeded the upper limit."                 �"A hwPimSrcNumLimitClear notification signifies that the number of multicast sources for a multicast group fell below 90% of the specification."                 �"A hwPimBasNeighborLoss notification signifies the loss of an
            adjacency with a neighbor.  This notification should be
            generated when the bas neighbor is lost."                 ]"A hwPimBasNeighborExceed notification signifies that PIM neighbors reached the upper limit."                 `"A hwPimBasNeighborExceedClear notification signifies that PIM neighbors below the upper limit."                 �"A hwPimVrfTypeSGThresholdExceed notification signifies that PIM specified type entries count of vpn instance reached the upper threshold."                 �"A hwPimVrfTypeSGThresholdExceedClear notification signifies that PIM specified type entries count of vpn instance fell below the lower threshold."                 y"A hwPimVrfTypeSGExceed notification signifies that PIM specified type entries count of vpn instances reached the limit."                 �"A hwPimVrfTypeSGExceedClear notification signifies that the number of PIM specified type entries count of vpn instances fell below the limit."                 M"A hwPimRpfRtFlapping notification signifies that PIM RPF route is flapping."                 _"A hwPimRpfRtFlappingClear notification signifies that the flapping of PIM RPF route is clear."                 _"A hwPimRpfAssertWinnerFlapping notification signifies that PIM RPF Assert winner is flapping."                 m"A hwPimRpfAssertWinnerFlappingClear notification signifies that the flapping of PIM Assert winner is clear."                 �"A hwPimGlobalTypeOifThresholdExceed notification signifies that outgoing interfaces of PIM entries reached the upper threshold."                 �"A hwPimGlobalTypeOifThresholdExceedClear notification signifies that outgoing interfaces of PIM entries fell below the lower threshold."                    '"The duration of the Keepalive Timer.  This is the period
            during which the PIM router will maintain (S,G) state in the
            absence of explicit (S,G) local membership or (S,G) join
            messages received to maintain it.  This timer period is
            called the Keepalive_Period in the PIM-SM specification.  It
            is called the SourceLifetime in the PIM-DM specification.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
            DEFVAL { 210 }" "RFC 4601 section 4.11"                    G"The duration of the Register Suppression Timer.  This is
            the period during which a PIM Designated Router (DR) stops
            sending Register-encapsulated data to the Rendezvous Point
            (RP) after receiving a Register-Stop message.  This object
            is used to run timers both at the DR and at the RP.  This
            timer period is called the Register_Suppression_Time in the
            PIM-SM specification.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
        DEFVAL { 60 }" "RFC 4601 section 4.11"                     /"The number of entries in the hwPimStarGTable."                       0"The number of entries in the hwPimStarGITable."                       ,"The number of entries in the hwPimSGTable."                       -"The number of entries in the hwPimSGITable."                       /"The number of entries in the hwPimSGRptTable."                       0"The number of entries in the hwPimSGRptITable."                       �"The number of Asserts sent by this router.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example
            when the device is rebooted." "RFC 4601 section 4.6"                    �"The number of Asserts received by this router.  Asserts
            are multicast to all routers on a network.  This counter is
            incremented by all routers that receive an assert, not only
            those routers that are contesting the assert.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example
            when the device is rebooted." "RFC 4601 section 4.6"                     �"The interface on which this router most recently sent or
            received an assert, or zero if this router has not sent or
            received an assert." "RFC 4601 section 4.6"                     �"The address type of the multicast group address in the most
            recently sent or received assert.  If this router has not
            sent or received an assert then this object is set to
            unknown(0)."                       �"The multicast group address in the most recently sent or
            received assert.  The InetAddressType is given by the
            hwPimLastAssertGroupAddressType object."                      
"The address type of the multicast source address in the
            most recently sent or received assert.  If the most recent
            assert was (*,G), or if this router has not sent or received
            an assert, then this object is set to unknown(0)."                       �"The multicast source address in the most recently sent or
            received assert.  The InetAddressType is given by the
            hwPimLastAssertSourceAddressType object."                      �"The minimum time that must elapse between hwPimNeighborLoss
            notifications originated by this router.  The maximum value
            65535 represents an 'infinite' time, in which case no
            hwPimNeighborLoss notifications are ever sent.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
        DEFVAL { 0 }"                      �"The number of neighbor loss events that have occurred.

            This counter is incremented when the neighbor timer expires.

            This counter is incremented whenever a hwPimNeighborLoss
            notification would be generated.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example
            when the device is rebooted." "RFC 4601 section 4.3.2"                    r"The minimum time that must elapse between
            hwPimInvalidRegister notifications originated by this router.
            The default value of 65535 represents an 'infinite' time, in
            which case no hwPimInvalidRegister notifications are ever
            sent.

            The non-zero minimum allowed value provides resilience
            against propagation of denial-of-service attacks from the
            data and control planes to the network management plane.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
        DEFVAL { 65535 }"                      �"The number of invalid PIM Register messages that have been
            received by this device.

            A PIM Register message is invalid if either

            o the destination address of the Register message does not
            match the Group to RP mapping on this device, or

            o this device believes the group address to be within an
            SSM address range, but this Register implies ASM usage.

            These conditions can occur transiently while RP mapping
            changes propagate through the network.  If this counter is
            incremented repeatedly over several minutes, then there is a
            persisting configuration error that requires correction.

            The active Group to RP mapping on this device is specified
            by the object hwPimGroupMappingPimMode.  If there is no such
            mapping, then the object hwPimGroupMappingPimMode is absent.
            The RP address contained in the invalid Register is
            hwPimInvalidRegisterRp.

            Multicast data carried by invalid Register messages is
            discarded.  The discarded data is from a source directly
            connected to hwPimInvalidRegisterOrigin, and is addressed to
            hwPimInvalidRegisterGroup.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example
            when the device is rebooted." h"RFC 4601 section 4.4.2, RFC 3569 and
               I-D.ietf-mboned-ip-mcast-mib ipMcastSsmRangeTable"                     �"The address type stored in hwPimInvalidRegisterOrigin,
            hwPimInvalidRegisterGroup and hwPimInvalidRegisterRp.

            If no unexpected Register messages have been received, then
            this object is set to unknown(0)."                       b"The source address of the last unexpected Register message
            received by this device."                       �"The IP multicast group address to which the last unexpected
            Register message received by this device was addressed."                       r"The RP address to which the last unexpected Register
            message received by this device was delivered."                      j"The minimum time that must elapse between
            hwPimInvalidJoinPrune notifications originated by this router.
            The default value of 65535 represents an 'infinite' time, in
            which case no hwPimInvalidJoinPrune notifications are ever
            sent.

            The non-zero minimum allowed value provides resilience
            against propagation of denial-of-service attacks from the
            control plane to the network management plane.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
        DEFVAL { 65535 }"                      �"The number of invalid PIM Join/Prune messages that have
            been received by this device.

            A PIM Join/Prune message is invalid if either

            o the Group to RP mapping specified by this message does not
            match the Group to RP mapping on this device, or

            o this device believes the group address to be within an
            SSM address range, but this Join/Prune (*,G) or (S,G,rpt)
            implies ASM usage.

            These conditions can occur transiently while RP mapping
            changes propagate through the network.  If this counter is
            incremented repeatedly over several minutes, then there is a
            persisting configuration error that requires correction.

            The active Group to RP mapping on this device is specified
            by the object hwPimGroupMappingPimMode.  If there is no such
            mapping, then the object hwPimGroupMappingPimMode is absent.
            The RP address contained in the invalid Join/Prune is
            hwPimInvalidJoinPruneRp.

            Invalid Join/Prune messages are discarded.  This may result
            in loss of multicast data affecting listeners downstream of
            hwPimInvalidJoinPruneOrigin, for multicast data addressed to
            hwPimInvalidJoinPruneGroup.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example
            when the device is rebooted." h"RFC 4601 section 4.5.2, RFC 3569 and
               I-D.ietf-mboned-ip-mcast-mib ipMcastSsmRangeTable"                     �"The address type stored in hwPimInvalidJoinPruneOrigin,
            hwPimInvalidJoinPruneGroup and hwPimInvalidJoinPruneRp.

            If no unexpected Join/Prune messages have been received,
            this object is set to unknown(0)."                       d"The source address of the last unexpected Join/Prune
            message received by this device."                       x"The IP multicast group address carried in the last
            unexpected Join/Prune message received by this device."                       h"The RP address carried in the last unexpected Join/Prune
            message received by this device."                      �"The minimum time that must elapse between
            hwPimRpMappingChange notifications originated by this router.
            The default value of 65535 represents an 'infinite' time, in
            which case no hwPimRpMappingChange notifications are ever
            sent.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
        DEFVAL { 65535 }"                      *"The number of changes to active RP mappings on this device.

            Information about active RP mappings is available in
            hwPimGroupMappingTable.  Only changes to active mappings cause
            this counter to be incremented.  That is, changes that
            modify the hwPimGroupMappingEntry with the highest precedence
            for a group (lowest value of hwPimGroupMappingPrecedence).

            Such changes may result from manual configuration of this
            device, or from automatic RP mapping discovery methods
            including the PIM Bootstrap Router (BSR) mechanism.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example
            when the device is rebooted." "I-D.ietf-pim-sm-bsr"                    �"The minimum time that must elapse between
            hwPimInterfaceElection notifications originated by this
            router.  The default value of 65535 represents an 'infinite'
            time, in which case no hwPimInterfaceElection notifications
            are ever sent.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
        DEFVAL { 65535 }"                      �"The number of times this device has been elected DR or DF
            on any interface.

            Elections occur frequently on newly-active interfaces, as
            triggered Hellos establish adjacencies.  This counter is not
            incremented for elections on an interface until the first
            periodic Hello has been sent.  If this router is the DR or
            DF at the time of sending the first periodic Hello after
            interface activation, then this counter is incremented
            (once) at that time.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example
            when the device is rebooted." M"RFC 4601 section 4.3.2 and
               I-D.ietf-pim-bidir section 3.5.2"                    k"The interval between successive State Refresh messages sent
            by an Originator.  This timer period is called the
            RefreshInterval in the PIM-DM specification.  This object is
            used only by PIM-DM.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
        DEFVAL { 60 }" "RFC 3973 section 4.8"                    �"The storage type used for the global PIM configuration of
            this device, comprised of the objects listed below.  If this
            storage type takes the value 'permanent', write-access to
            the listed objects need not be allowed.

            The objects described by this storage type are:
            hwPimKeepalivePeriod, hwPimRegisterSuppressionTime,
            hwPimNeighborLossNotificationPeriod,
            hwPimInvalidRegisterNotificationPeriod,
            hwPimInvalidJoinPruneNotificationPeriod,
            hwPimRpMappingNotificationPeriod,
            hwPimInterfaceElectionNotificationPeriod,
            hwPimRefreshInterval,
            hwPimNeighborAddNotificationPeriod.
        DEFVAL { nonVolatile }"                      �"The number of new neighbor found events that have occurred.

            This counter is incremented when the new neighbor is come up.

            This counter is incremented whenever a hwPimNeighborLoss
            notification would be generated.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example
            when the device is rebooted." "RFC 4601 section 4.3.2"                    �"The minimum time that must elapse between
            hwPimNeighborAdd notifications originated by this
            router.  The maximum value 65535 represents an 'infinite'
            time, in which case no hwPimNeighborAdd notifications
            are ever sent.

            The storage type of this object is determined by
            hwPimDeviceConfigStorageType.
        DEFVAL { 0 }"                       %"The time when PIM entered GR state."                       4"The minimum PIM GR period.
        DEFVAL { 120 }"                       &"The time when PIM left the GR state."                       2"The address type of the multicast group address."                       ""The source address of the entry."                       !"The group address of the entry."                       "The Instance ID of the trap."                        "The instance name of the trap."                      �"The reason for trap sending:
             1:holdTime expired;
             2:Not receive hello for a long time;
             3:Interface is down;
             4:Receive Hello again;
             5:neighbour is deleted;
             6:Alarm time out;
             7:Receive Hello HoldTime is Zero;
             8:Bfd Session is Down;
             9:User Operation;
             100:Alarm Clear"                       2"The address type of the multicast group address."                       <"The current number of PIM (*, G) entries of all instances."                       :"The total number of PIM (*, G) entries of all instances."                       4"The threshold value of PIM (*, G) uppper limit(%)."                       <"The current number of PIM (S, G) entries of all instances."                       :"The total number of PIM (S, G) entries of all instances."                       4"The threshold value of PIM (S, G) uppper limit(%)."                       ""The source address of the entry."                       !"The group address of the entry."                       D"The current number of PIM specified type entries of all instances."                       B"The total number of PIM specified type entries of all instances."                       <"The threshold value of PIM specified type uppper limit(%)."                       �"The limit type:
             1:SM star-group;
             2:SM source-group;
             3:DM star-group;
             4:DM source-group;
             5:bidirPim star-group"                       ;"The upper threshold value of PIM specified type alarm(%)."                       ;"The lower threshold value of PIM specified type alarm(%)."                       �"The reason for trap sending:
             1:entry is deleted;
             2:configuration is changed;
             100:Alarm Clear"                       k"The reason for trap sending:
             1:entry is created;
             100:configuration is changed"                       �"The reason for trap sending:
             1:entry is deleted;
             2:configuration is changed;
             100:Alarm Clear"                       "The name of the slot."                       #"The address of the assert winner."                       �"The reason for trap sending:
             1:Incoming interface changed;
             2:Entry is deleted;
             3:Assert winner flapping restored"                       )"The limit type:
             1:SM mode"                       B"The total number of existing outgoing interfaces in PIM entries."                       8"The upper threshold value of PIM specified type alarm."                       8"The lower threshold value of PIM specified type alarm."                       J"The reason for trap sending:
             1:outgoing interface is added"                       K"The reason for trap sending:
             2:utgoing interface is deleted"                       �"The (conceptual) table listing the router's PIM interfaces.
            PIM is enabled on all interfaces listed in this table."                       o"An entry (conceptual row) in the hwPimInterfaceTable.  This
            entry is preserved on agent restart."                       *"The ifIndex value of this PIM interface."                       �"The IP version of this PIM interface.  A physical interface
            may be configured in multiple modes concurrently, e.g. IPv4
            and IPv6, however the traffic is considered to be logically
            separate."                       )"The address type of this PIM interface."                       �"The primary IP address of this router on this PIM
            interface.  The InetAddressType is given by the
            hwPimInterfaceAddressType object." 0"RFC 4601 sections 4.1.6, 4.3.1-4.3.4 and 4.5.1"                     {"The value of the Generation ID this router inserted in the
            last PIM Hello message it sent on this interface." "RFC 4601 section 4.3.1"                     �"The primary IP address of the Designated Router on this PIM
            interface.  The InetAddressType is given by the
            hwPimInterfaceAddressType object." "RFC 4601 section 4.3"                     �"The Designated Router Priority value inserted into the DR
            Priority option on this interface.  Numerically higher
            values for this object indicate higher priorities." "RFC 4601 section 4.3.2"                     c"Evaluates to TRUE if all routers on this interface are
            using the DR Priority option." "RFC 4601 section 4.3.2"                    x"The frequency at which PIM Hello messages are transmitted
            on this interface.  This object corresponds to the
            'Hello_Period' timer value defined in the PIM-SM
            specification.  A value of zero represents an 'infinite'
            interval, and indicates that periodic PIM Hello messages
            should not be sent on this interface." "RFC 4601 section 9"                    �"The maximum time before this router sends a triggered PIM
            Hello message on this interface.  This object corresponds to
            the 'Trigered_Hello_Delay' timer value defined in the PIM-SM
            specification.  A value of zero has no special meaning and
            indicates that triggered PIM Hello messages should always be
            sent immediately." "RFC 4601 section 4.11"                    w"The value set in the Holdtime field of PIM Hello messages
            transmitted on this interface.  A value of 65535 represents
            an 'infinite' holdtime.  Implementations are recommended
            to use a holdtime that is 3.5 times the value of
            hwPimInterfaceHelloInterval, or 65535 if
            hwPimInterfaceHelloInterval is set to zero." #"RFC 4601 sections 4.3.2 and 4.9.2"                    �"The frequency at which this router sends PIM Join/Prune
            messages on this PIM interface.  This object corresponds to
            the 't_periodic' timer value defined in the PIM-SM
            specification.  A value of zero represents an 'infinite'
            interval, and indicates that periodic PIM Join/Prune
            messages should not be sent on this interface." "RFC 4601 section 4.11"                    �"The value inserted into the Holdtime field of a PIM
            Join/Prune message sent on this interface.  A value of 65535
            represents an 'infinite' holdtime.  Implementations are
            recommended to use a holdtime that is 3.5 times the value of
            hwPimInterfaceJoinPruneInterval, or 65535 if
            hwPimInterfaceJoinPruneInterval is set to zero.  PIM-DM
            implementations are recommended to use the value of
            hwPimInterfacePruneLimitInterval." #"RFC 4601 sections 4.5.3 and 4.9.5"                     �"The minimum number of PIM DF-Election messages that must be
            lost in order for DF election on this interface to fail."                       g"Evaluates to TRUE if all routers on this interface are
            using the LAN Prune Delay option." #"RFC 4601 sections 4.3.3 and 4.9.2"                    �"The expected propagation delay between PIM routers on this
            network or link.

            This router inserts this value into the Propagation_Delay
            field of the LAN Prune Delay option in the PIM Hello
            messages sent on this interface.  Implementations should
            enforce a lower bound on the permitted values for this
            object to allow for scheduling and processing delays within
            the local router."                      �"The value this router inserts into the Override_Interval
            field of the LAN Prune Delay option in the PIM Hello
            messages it sends on this interface.

            When overriding a prune, PIM routers pick a random timer
            duration up to the value of this object.  The more PIM
            routers that are active on a network, the more likely it is
            that the prune will be overridden after a small proportion
            of this time has elapsed.

            The more PIM routers are active on this network, the larger
            this object should be to obtain an optimal spread of prune
            override latencies." "RFC 4601 section 4.3.3"                     �"The Effective Propagation Delay on this interface.  This
            object is always 500 if hwPimInterfaceLanDelayEnabled is
            FALSE." "RFC 4601 section 4.3.3"                     �"The Effective Override Interval on this interface.  This
            object is always 2500 if hwPimInterfaceLanDelayEnabled is
            FALSE." "RFC 4601 section 4.3.3"                     �"Whether join suppression is enabled on this interface.
            This object is always TRUE if hwPimInterfaceLanDelayEnabled is
            FALSE." "RFC 4601 section 4.3.3"                     q"Evaluates to TRUE if all routers on this interface are
            using the Bidirectional-PIM Capable option." *"I-D.ietf-pim-bidir section 3.2 and 3.7.4"                     �"Whether or not this interface is a PIM domain border.  This
            includes acting as a border for PIM Bootstrap Router (BSR)
            messages, if the BSR mechanism is in use."                      n"Whether this interface is a 'stub interface'.  If this
            object is set to TRUE, then no PIM packets are sent out this
            interface, and any received PIM packets are ignored.

            Setting this object to TRUE is a security measure for
            interfaces towards untrusted hosts.  This allows an
            interface to be configured for use with IGMP (Internet Group
            Management Protocol) or MLD (Multicast Listener Discovery)
            only, which protects the PIM router from forged PIM messages
            on the interface.

            To communicate with other PIM routers using this interface,
            this object must remain set to FALSE.

            Changing the value of this object while the interface is
            operational causes the interface to be deactivated and
            then reactivated." "RFC 3376, RFC 3810"                    "The minimum interval that must transpire between two
            successive Prunes sent by a router.  This object corresponds
            to the 't_limit' timer value defined in the PIM-DM
            specification.  This object is used only by PIM-DM." "RFC 3973 section 4.8"                    "The minimum interval that must transpire between two
            successive Grafts sent by a router.  This object corresponds
            to the 'Graft_Retry_Period' timer value defined in the
            PIM-DM specification.  This object is used only by PIM-DM." "RFC 3973 section 4.8"                     �"Evaluates to TRUE if all routers on this interface are
            using the State Refresh option.  This object is used only by
            PIM-DM."                      �"The status of this entry.  Creating the entry enables PIM
            on the interface; destroying the entry disables PIM on the
            interface.

            This status object can be set to active(1) without setting
            any other columnar objects in this entry.

            All writeable objects in this entry can be modified when the
            status of this entry is active(1)."                       �"The storage type for this row.  Rows having the value
            'permanent' need not allow write-access to any columnar
            objects in the row."                       !"The name of this PIM interface."                       <"The (conceptual) table listing the router's PIM neighbors."                       6"An entry (conceptual row) in the hwPimNeighborTable."                       V"The value of ifIndex for the interface used to reach this
            PIM neighbor."                       ("The address type of this PIM neighbor."                       �"The primary IP address of this PIM neighbor.  The
            InetAddressType is given by the hwPimNeighborAddressType
            object."                       T"Evaluates to TRUE if this neighbor is using the Generation
            ID option." "RFC 4601 section 4.3.1"                     �"The value of the Generation ID from the last PIM Hello
            message received from this neighbor.  This object is always
            zero if hwPimNeighborGenerationIdPresent is FALSE." "RFC 4601 section 4.3.1"                     ]"The time since this PIM neighbor (last) became a neighbor
            of the local router."                       �"The minimum time remaining before this PIM neighbor will
            be aged out.  The value zero indicates that this PIM
            neighbor will never be aged out."                       R"Evaluates to TRUE if this neighbor is using the DR Priority
            option." "RFC 4601 section 4.3.2"                     �"The value of the Designated Router Priority from the last
            PIM Hello message received from this neighbor.  This object
            is always zero if hwPimNeighborDrPriorityPresent is FALSE." "RFC 4601 section 4.3.2"                     V"Evaluates to TRUE if this neighbor is using the LAN Prune
            Delay option." "RFC 4601 section 4.3.3"                    #"Whether the T bit was set in the LAN Prune Delay option
            received from this neighbor.  The T bit specifies the
            ability of the neighbor to disable join suppression.  This
            object is always TRUE if hwPimNeighborLanPruneDelayPresent is
            FALSE." "RFC 4601 section 4.3.3"                     �"The value of the Propagation_Delay field of the LAN Prune
            Delay option received from this neighbor.  This object is
            always zero if hwPimNeighborLanPruneDelayPresent is FALSE." "RFC 4601 section 4.3.3"                     �"The value of the Override_Interval field of the LAN Prune
            Delay option received from this neighbor.  This object is
            always zero if hwPimNeighborLanPruneDelayPresent is FALSE." "RFC 4601 section 4.3.3"                     `"Evaluates to TRUE if this neighbor is using the
            Bidirectional-PIM Capable option." *"I-D.ietf-pim-bidir section 3.2 and 3.7.4"                     �"Evaluates to TRUE if this neighbor is using the State
            Refresh Capable option.  This object is used only by
            PIM-DM." "RFC 3973 section 4.3.4"                     J"The name for the interface used to reach this
            PIM neighbor."                       �"The (conceptual) table listing the secondary addresses
            advertised by each PIM neighbor (on a subset of the rows of
            the hwPimNeighborTable defined above)." "RFC 4601 section 4.3.4"                     ;"An entry (conceptual row) in the hwPimNbrSecAddressTable."                       V"The value of ifIndex for the interface used to reach this
            PIM neighbor."                       ("The address type of this PIM neighbor."                       �"The primary IP address of this PIM neighbor.  The
            InetAddressType is given by the hwPimNbrSecAddressType
            object."                       �"The secondary IP address of this PIM neighbor.  The
            InetAddressType is given by the hwPimNbrSecAddressType
            object."                       b"The (conceptual) table listing the non-interface specific
            (*,G) state that PIM has." "RFC 4601 section 4.1.3"                     3"An entry (conceptual row) in the hwPimStarGTable."                       +"The address type of this multicast group."                       n"The multicast group address.  The InetAddressType is given
            by the hwPimStarGAddressType object."                       <"The time since this entry was created by the local router."                       p"Whether this entry represents an ASM (Any Source Multicast,
            used with PIM-SM) or BIDIR-PIM group."                       i"The address type of the Rendezvous Point (RP), or
            unknown(0) if the RP address is unknown."                       �"The address of the Rendezvous Point (RP) for the group.
            The InetAddressType is given by the hwPimStarGRpAddressType."                       U"The mechanism by which the PIM mode and RP for the group
            were learned."                       3"Whether the local router is the RP for the group."                       �"Whether the local router should join the RP tree for the
            group.  This corresponds to the state of the upstream (*,G)
            state machine in the PIM-SM specification." "RFC 4601 section 4.5.6"                    %"The time remaining before the local router next sends a
            periodic (*,G) Join message on hwPimStarGRpfIfIndex.  This
            timer is called the (*,G) Upstream Join Timer in the PIM-SM
            specification.  This object is zero if the timer is not
            running." "RFC 4601 section 4.10"                     �"The primary address type of the upstream neighbor, or
            unknown(0) if the upstream neighbor address is unknown or is
            not a PIM neighbor."                      >"The primary address of the neighbor on hwPimStarGRpfIfIndex
            that the local router is sending periodic (*,G) Join
            messages to.  The InetAddressType is given by the
            hwPimStarGUpstreamNeighborType object.  This address is called
            RPF'(*,G) in the PIM-SM specification." "RFC 4601 section 4.1.6"                     r"The value of ifIndex for the RPF interface towards the RP,
            or zero if the RPF interface is unknown."                       q"The address type of the RPF next hop towards the RP, or
            unknown(0) if the RPF next hop is unknown."                       �"The address of the RPF next hop towards the RP.  The
            InetAddressType is given by the hwPimStarGRpfNextHopType
            object.  This address is called MRIB.next_hop(RP(G))
            in the PIM-SM specification." "RFC 4601 section 4.5.5"                     s"The routing mechanism via which the route used to find the
            RPF interface towards the RP was learned."                      �"The IP address which when combined with the corresponding
            value of hwPimStarGRpfRoutePrefixLength identifies the route
            used to find the RPF interface towards the RP.  The
            InetAddressType is given by the hwPimStarGRpfNextHopType
            object.

            This address object is only significant up to
            hwPimStarGRpfRoutePrefixLength bits.  The remainder of the
            address bits are zero."                      "The prefix length which when combined with the
            corresponding value of hwPimStarGRpfRouteAddress identifies
            the route used to find the RPF interface towards the RP.
            The InetAddressType is given by the hwPimStarGRpfNextHopType
            object."                       `"The metric preference of the route used to find the RPF
            interface towards the RP."                       ]"The routing metric of the route used to find the RPF
            interface towards the RP."                       ^"The (conceptual) table listing the interface-specific (*,G)
            state that PIM has." "RFC 4601 section 4.1.3"                     4"An entry (conceptual row) in the hwPimStarGITable."                       K"The ifIndex of the interface that this entry corresponds
            to."                       <"The time since this entry was created by the local router."                       �"Whether the local router has (*,G) local membership on this
            interface (resulting from a mechanism such as IGMP or MLD).
            This corresponds to local_receiver_include(*,G,I) in the
            PIM-SM specification." ,"RFC 3376, RFC 3810, RFC 4601 section 4.1.6"                     �"The state resulting from (*,G) Join/Prune messages
            received on this interface.  This corresponds to the state
            of the downstream per-interface (*,G) state machine in the
            PIM-SM specification." "RFC 4601 section 4.5.2"                    �"The time remaining before the local router acts on a (*,G)
            Prune message received on this interface, during which the
            router is waiting to see whether another downstream router
            will override the Prune message.  This timer is called the
            (*,G) Prune-Pending Timer in the PIM-SM specification.  This
            object is zero if the timer is not running." "RFC 4601 section 4.5.1"                    8"The time remaining before (*,G) Join state for this
            interface expires.  This timer is called the (*,G) Join
            Expiry Timer in the PIM-SM specification.  This object is
            zero if the timer is not running.  A value of 'FFFFFFFF'h
            indicates an infinite expiry time." "RFC 4601 section 4.10"                     �"The (*,G) Assert state for this interface.  This
            corresponds to the state of the per-interface (*,G) Assert
            state machine in the PIM-SM specification.  If
            hwPimStarGPimMode is 'bidir', this object must be 'noInfo'." "RFC 4601 section 4.6.2"                    �"If hwPimStarGIAssertState is 'iAmAssertWinner', this is the
            time remaining before the local router next sends a (*,G)
            Assert message on this interface.  If hwPimStarGIAssertState
            is 'iAmAssertLoser', this is the time remaining before the
            (*,G) Assert state expires.  If hwPimStarGIAssertState is
            'noInfo', this is zero.  This timer is called the (*,G)
            Assert Timer in the PIM-SM specification." "RFC 4601 section 4.6.2"                     �"If hwPimStarGIAssertState is 'iAmAssertLoser', this is the
            address type of the assert winner; otherwise, this object is
            unknown(0)."                       �"If hwPimStarGIAssertState is 'iAmAssertLoser', this is the
            address of the assert winner.  The InetAddressType is given
            by the hwPimStarGIAssertWinnerAddressType object."                       �"If hwPimStarGIAssertState is 'iAmAssertLoser', this is the
            metric preference of the route to the RP advertised by the
            assert winner; otherwise, this object is zero."                       �"If hwPimStarGIAssertState is 'iAmAssertLoser', this is the
            routing metric of the route to the RP advertised by the
            assert winner; otherwise, this object is zero."                       b"The (conceptual) table listing the non-interface specific
            (S,G) state that PIM has." "RFC 4601 section 4.1.4"                     0"An entry (conceptual row) in the hwPimSGTable."                       Q"The address type of the source and multicast group for this
            entry."                       z"The multicast group address for this entry.  The
            InetAddressType is given by the hwPimSGAddressType object."                       q"The source address for this entry.  The InetAddressType is
            given by the hwPimSGAddressType object."                       <"The time since this entry was created by the local router."                       �"Whether hwPimSGGrpAddress is an SSM (Source Specific
            Multicast, used with PIM-SM) or ASM (Any Source Multicast,
            used with PIM-SM) group." h"RFC 4601 section 4.5.2, RFC 3569 and
               I-D.ietf-mboned-ip-mcast-mib ipMcastSsmRangeTable"                     �"Whether the local router should join the shortest-path tree
            for the source and group represented by this entry.  This
            corresponds to the state of the upstream (S,G) state machine
            in the PIM-SM specification." "RFC 4601 section 4.5.7"                    ""The time remaining before the local router next sends a
            periodic (S,G) Join message on hwPimSGRpfIfIndex.  This timer
            is called the (S,G) Upstream Join Timer in the PIM-SM
            specification.  This object is zero if the timer is not
            running."  "RFC 4601 section 4.10 and 4.11"                    �"The primary address of the neighbor on hwPimSGRpfIfIndex that
            the local router is sending periodic (S,G) Join messages to.
            This is zero if the RPF next hop is unknown or is not a
            PIM neighbor.  The InetAddressType is given by the
            hwPimSGAddressType object.  This address is called RPF'(S,G)
            in the PIM-SM specification." "RFC 4601 section 4.1.6"                     v"The value of ifIndex for the RPF interface towards the
            source, or zero if the RPF interface is unknown."                       u"The address type of the RPF next hop towards the source, or
            unknown(0) if the RPF next hop is unknown."                       �"The address of the RPF next hop towards the source.  The
            InetAddressType is given by the hwPimSGRpfNextHopType.  This
            address is called MRIB.next_hop(S) in the PIM-SM
            specification." "RFC 4601 section 4.5.5"                     w"The routing mechanism via which the route used to find the
            RPF interface towards the source was learned."                      �"The IP address which when combined with the corresponding
            value of hwPimSGRpfRoutePrefixLength identifies the route used
            to find the RPF interface towards the source.  The
            InetAddressType is given by the hwPimSGRpfNextHopType object.

            This address object is only significant up to
            hwPimSGRpfRoutePrefixLength bits.  The remainder of the
            address bits are zero."                      "The prefix length which when combined with the
            corresponding value of hwPimSGRpfRouteAddress identifies the
            route used to find the RPF interface towards the source.
            The InetAddressType is given by the hwPimSGRpfNextHopType
            object."                       d"The metric preference of the route used to find the RPF
            interface towards the source."                       a"The routing metric of the route used to find the RPF
            interface towards the source."                       v"Whether the SPT bit is set; and therefore whether
            forwarding is taking place on the shortest-path tree."                      "The time remaining before, in the absence of explicit (S,G)
            local membership or (S,G) Join messages received to maintain
            it, this (S,G) state expires.  This timer is called the
            (S,G) Keepalive Timer in the PIM-SM specification." "RFC 4601 section 4.1.4"                    F"Whether the local router should encapsulate (S,G) data
            packets in Register messages and send them to the RP.  This
            corresponds to the state of the per-(S,G) Register state
            machine in the PIM-SM specification.  This object is always
            'noInfo' unless hwPimSGPimMode is 'asm'." "RFC 4601 section 4.4.1"                    �"If hwPimSGDrRegisterState is 'prune', this is the time
            remaining before the local router sends a Null-Register
            message to the RP.  If hwPimSGDrRegisterState is
            'joinPending', this is the time remaining before the local
            router resumes encapsulating data packets and sending them
            to the RP.  Otherwise, this is zero.  This timer is called
            the Register-Stop Timer in the PIM-SM specification." "RFC 4601 section 4.4"                     �"The address type of the first PIM Multicast Border Router
            to send a Register message with the Border bit set.  This
            object is unknown(0) if the local router is not the RP for
            the group."                       �"The IP address of the first PIM Multicast Border Router to
            send a Register message with the Border bit set.  The
            InetAddressType is given by the
            hwPimSGRpRegisterPmbrAddressType object."                       �"Whether the local router has pruned itself from the tree.
            This corresponds to the state of the upstream prune (S,G)
            state machine in the PIM-DM specification.  This object is
            used only by PIM-DM." "RFC 3973 section 4.4.1"                    ;"The time remaining before the local router may send a (S,G)
            Prune message on hwPimSGRpfIfIndex.  This timer is called the
            (S,G) Prune Limit Timer in the PIM-DM specification.  This
            object is zero if the timer is not running.  This object is
            used only by PIM-DM." "RFC 2973 section 4.8"                     �"Whether the router is an originator for an (S,G) message
            flow.  This corresponds to the state of the per-(S,G)
            Originator state machine in the PIM-DM specification.  This
            object is used only by PIM-DM." "RFC 3973 section 4.5.2"                    ?"If hwPimSGOriginatorState is 'originator', this is the time
            remaining before the local router reverts to a notOriginator
            state.  Otherwise, this is zero.  This timer is called the
            Source Active Timer in the PIM-DM specification.  This
            object is used only by PIM-DM." "RFC 3973 section 4.8"                    <"If hwPimSGOriginatorState is 'originator', this is the time
            remaining before the local router sends a State Refresh
            message.  Otherwise, this is zero.  This timer is called the
            State Refresh Timer in the PIM-DM specification.  This
            object is used only by PIM-DM." "RFC 3973 section 4.8"                     ^"The (conceptual) table listing the interface-specific (S,G)
            state that PIM has." "RFC 4601 section 4.1.4"                     1"An entry (conceptual row) in the hwPimSGITable."                       K"The ifIndex of the interface that this entry corresponds
            to."                       <"The time since this entry was created by the local router."                       �"Whether the local router has (S,G) local membership on this
            interface (resulting from a mechanism such as IGMP or MLD).
            This corresponds to local_receiver_include(S,G,I) in the
            PIM-SM specification." M"RFC 3376, RFC 3810, RFC 4601 sections 4.1.6, 4.6.1 and
              4.6.2"                     �"The state resulting from (S,G) Join/Prune messages
            received on this interface.  This corresponds to the state
            of the downstream per-interface (S,G) state machine in the
            PIM-SM and PIM-DM specification." 3"RFC 4601 section 4.5.3 and RFC 3973 section 4.4.2"                    �"The time remaining before the local router acts on an (S,G)
            Prune message received on this interface, during which the
            router is waiting to see whether another downstream router
            will override the Prune message.  This timer is called the
            (S,G) Prune-Pending Timer in the PIM-SM specification.  This
            object is zero if the timer is not running." ""RFC 4601 section 4.5.3 and 4.5.4"                    �"The time remaining before (S,G) Join state for this
            interface expires.  This timer is called the (S,G) Join
            Expiry Timer in the PIM-SM specification.  This object is
            zero if the timer is not running.  A value of 'FFFFFFFF'h
            indicates an infinite expiry time.  This timer is called the
            (S,G) Prune Timer in the PIM-DM specification." 0"RFC 4601 section 4.10 and RFC 3973 section 4.8"                     �"The (S,G) Assert state for this interface.  This
            corresponds to the state of the per-interface (S,G) Assert
            state machine in the PIM-SM specification." "RFC 4601 section 4.6.1"                    �"If hwPimSGIAssertState is 'iAmAssertWinner', this is the time
            remaining before the local router next sends a (S,G) Assert
            message on this interface.  If hwPimSGIAssertState is
            'iAmAssertLoser', this is the time remaining before the
            (S,G) Assert state expires.  If hwPimSGIAssertState is
            'noInfo', this is zero.  This timer is called the (S,G)
            Assert Timer in the PIM-SM specification." "RFC 4601 section 4.6.1"                     �"If hwPimSGIAssertState is 'iAmAssertLoser', this is the
            address type of the assert winner; otherwise, this object is
            unknown(0)."                       �"If hwPimSGIAssertState is 'iAmAssertLoser', this is the
            address of the assert winner.  The InetAddressType is given
            by the hwPimSGIAssertWinnerAddressType object."                       �"If hwPimSGIAssertState is 'iAmAssertLoser', this is the
            metric preference of the route to the source advertised by
            the assert winner; otherwise, this object is zero."                       �"If hwPimSGIAssertState is 'iAmAssertLoser', this is the
            routing metric of the route to the source advertised by the
            assert winner; otherwise, this object is zero."                       f"The (conceptual) table listing the non-interface specific
            (S,G,rpt) state that PIM has." "RFC 4601 section 4.1.5"                     3"An entry (conceptual row) in the hwPimSGRptTable."                       t"The source address for this entry.  The InetAddressType is
            given by the hwPimStarGAddressType object."                       <"The time since this entry was created by the local router."                       �"Whether the local router should prune the source off the RP
            tree.  This corresponds to the state of the upstream
            (S,G,rpt) state machine for triggered messages in the PIM-SM
            specification." "RFC 4601 section 4.5.9"                    ,"The time remaining before the local router sends a
            triggered (S,G,rpt) Join message on hwPimStarGRpfIfIndex.
            This timer is called the (S,G,rpt) Upstream Override Timer
            in the PIM-SM specification.  This object is zero if the
            timer is not running." "RFC 4601 section 4.5.9"                     b"The (conceptual) table listing the interface-specific
            (S,G,rpt) state that PIM has." "RFC 4601 section 4.1.5"                     4"An entry (conceptual row) in the hwPimSGRptITable."                       K"The ifIndex of the interface that this entry corresponds
            to."                       <"The time since this entry was created by the local router."                      ,"Whether the local router has both (*,G) include local
            membership and (S,G) exclude local membership on this
            interface (resulting from a mechanism such as IGMP or MLD).
            This corresponds to local_receiver_exclude(S,G,I) in the
            PIM-SM specification." ,"RFC 3376, RFC 3810, RFC 4601 section 4.1.6"                     �"The state resulting from (S,G,rpt) Join/Prune messages
            received on this interface.  This corresponds to the state
            of the downstream per-interface (S,G,rpt) state machine in
            the PIM-SM specification." "RFC 4601 section 4.5.4"                    "The time remaining before the local router starts pruning
            this source off the RP tree.  This timer is called the
            (S,G,rpt) Prune-Pending Timer in the PIM-SM specification.
            This object is zero if the timer is not running." "RFC 4601 section 4.5.4"                    B"The time remaining before (S,G,rpt) Prune state for this
            interface expires.  This timer is called the (S,G,rpt)
            Prune Expiry Timer in the PIM-SM specification.  This object
            is zero if the timer is not running.  A value of 'FFFFFFFF'h
            indicates an infinite expiry time." "RFC 4601 section 4.5.4"                    "The (conceptual) table listing mappings from multicast
            group prefixes to the PIM mode and RP address to use for
            groups within that group prefix.

            Rows in this table are created for a variety of reasons,
            indicated by the value of the hwPimGroupMappingOrigin object.

            -  Rows with a hwPimGroupMappingOrigin value of 'fixed' are
               created automatically by the router at startup, to
               correspond to the well-defined prefixes of link-local and
               unroutable group addresses.  These rows are never
               destroyed.

            -  Rows with a hwPimGroupMappingOrigin value of 'embedded' are
               created by the router to correspond to group prefixes
               that are to be treated as being in Embedded-RP format.

            -  Rows with a hwPimGroupMappingOrigin value of 'configRp' are
               created and destroyed as a result of rows in the
               pimStaticRPTable being created and destroyed.

            -  Rows with a hwPimGroupMappingOrigin value of 'configSsm'
               are created and destroyed as a result of configuration of
               SSM address ranges to the local router.

            -  Rows with a hwPimGroupMappingOrigin value of 'bsr' are
               created as a result of running the PIM Bootstrap Router
               (BSR) mechanism.  If the local router is not the elected
               BSR, these rows are created to correspond to group
               prefixes in the PIM Bootstrap messages received from the
               elected BSR.  If the local router is the elected BSR,
               these rows are created to correspond to group prefixes in
               the PIM Bootstrap messages that the local router sends.
               In either case, these rows are destroyed when the group
               prefixes are timed out by the BSR mechanism.

            -  Rows with a hwPimGroupMappingOrigin value of 'other' are
               created and destroyed according to some other mechanism
               not specified here.

            Given the collection of rows in this table at any point in
            time, the PIM mode and RP address to use for a particular
            group is determined using the following algorithm.

            1. From the set of all rows, the subset whose group prefix
               contains the group in question are selected.

            2. If there are no such rows, the behavior is undefined.

            3. From the selected subset of rows, the subset that have
               the greatest value of hwPimGroupMappingGrpPrefixLength are
               selected.

            4. If there are multiple selected rows, and a subset are
               defined by pimStaticRPTable (hwPimGroupMappingOrigin value
               of 'configRp') with pimStaticRPOverrideDynamic set to
               TRUE, then this subset is selected.

            5. If there are still multiple selected rows, the subset
               that have the highest precedence (the lowest numerical
               value for hwPimGroupMappingPrecedence) are selected.

            6. If there are still multiple selected rows, the row
               selected is implementation dependent; the implementation
               might or might not apply the PIM hash function to select
               the row.

            7. The group mode to use is given by the value of
               hwPimGroupMappingPimMode from the single selected row; the
               RP to use is given by the value of
               hwPimGroupMappingRpAddress, unless hwPimGroupMappingOrigin is
               'embedded', in which case the RP is extracted from the
               group address in question." -"RFC 4601 section 3.7, RFC 3956 and RFC 4610"                     :"An entry (conceptual row) in the hwPimGroupMappingTable."                       8"The mechanism by which this group mapping was learned."                       4"The address type of the IP multicast group prefix."                      c"The IP multicast group address which, when combined with
            hwPimGroupMappingGrpPrefixLength, gives the group prefix for
            this mapping.  The InetAddressType is given by the
            hwPimGroupMappingAddressType object.

            This address object is only significant up to
            hwPimGroupMappingGrpPrefixLength bits.  The remainder of the
            address bits are zero.  This is especially important for
            this index field, which is part of the index of this entry.
            Any non-zero bits would signify an entirely different
            entry."                      �"The multicast group prefix length, which, when combined
            with hwPimGroupMappingGrpAddress, gives the group prefix for
            this mapping.  The InetAddressType is given by the
            hwPimGroupMappingAddressType object.  If
            hwPimGroupMappingAddressType is 'ipv4' or 'ipv4z', this
            object must be in the range 4..32.  If
            hwPimGroupMappingAddressType is 'ipv6' or 'ipv6z', this object
            must be in the range 8..128."                      ;"The address type of the RP to be used for groups within
            this group prefix, or unknown(0) if no RP is to be used or
            if the RP address is unknown.  This object must be
            unknown(0) if hwPimGroupMappingPimMode is ssm(2), or if
            hwPimGroupMappingOrigin is embedded(6)."                       �"The IP address of the RP to be used for groups within this
            group prefix.  The InetAddressType is given by the
            hwPimGroupMappingRpAddressType object."                       :"The PIM mode to be used for groups in this group prefix."                      �"The precedence of this row, used in the algorithm that
            determines which row applies to a given group address
            (described above).  Numerically higher values for this
            object indicate lower precedences, with the value zero
            denoting the highest precedence.

            The absolute values of this object have a significance only
            on the local router and do not need to be coordinated with
            other routers."                       `"The (conceptual) table listing the control message counter
            of all PIM interfaces."                       p"An entry (conceptual row) in the hwPimCtlMsgCountTable.
            This entry is preserved on agent restart."                       *"The ifIndex value of this PIM interface."                       �"The IP version of this PIM interface.  A physical interface
            may be configured in multiple modes concurrently, e.g. IPv4
            and IPv6, however the traffic is considered to be logically
            separate."                        "The PIM control message state."                       6"The number of PIM Assert messages on this interface."                       5"The number of PIM Hello messages on this interface."                       :"The number of PIM Join/Prune messages on this interface."                       3"The number of PIM BSR messages on this interface."                       K"The (conceptual) table listing the control message counter on the router."                       v"An entry (conceptual row) in the hwPimGlobalCtlMsgCountTable.
            This entry is preserved on agent restart."                       G"The IP version of this PIM instance, e.g. IPv4
            and IPv6."                        "The PIM control message state."                       4"The number of PIM Register messages on the router."                       9"The number of PIM Register-stop messages on the router."                       1"The number of PIM Probe messages on the router."                       /"The number of PIM CRP messages on the router."                       @"The current number of global PIM route entries on this device." *"RFC 4601 section 4.1.3 and section 4.1.4"                     >"An entry (conceptual row) in the hwPimGlobalRouteCountTable."                       4"The address type of the IP multicast group prefix."                       <"The current number of PIM (*, G) entries of all instances."                       <"The current number of PIM (S, G) entries of all instances."                       <"The threshold value of PIM (*, G) entries uppper limit(%)."                       <"The threshold value of PIM (S, G) entries uppper limit(%)."                       ="The current number of VPN PIM route entries on this device." *"RFC 4601 section 4.1.3 and section 4.1.4"                     ;"An entry (conceptual row) in the hwPimVrfRouteCountTable."                       "The index of VPN instance."                       4"The address type of the IP multicast group prefix."                       ("The instance name of the VPN instance."                       ?"The current number of PIM (*, G) entries of one VPN instance."                       ?"The current number of PIM (S, G) entries of one VPN instance."                       E"The current number of PIM (*, G) entries limit of one VPN instance."                       E"The current number of PIM (S, G) entries limit of one VPN instance."                               *"The compliance statement for PIM-SM MIB."   "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."             -"The compliance statement for Bidir-PIM MIB."   "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."             +"The compliance statement for PIM SSM MIB."   "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."             *"The compliance statement for PIM-DM MIB."   "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."                 S"A collection of read-only objects used to report local PIM
            topology."                 P"A collection of notifications for signaling important PIM
            events."                     h"A collection of writeable objects used to configure PIM
            behavior and to tune performance."                 6"A collection of statistics global to the PIM router."                 �"A collection of objects to support management of PIM
            routers running the PIM SSM (Source Specific Multicast)
            protocol, in PIM mode SM (Sparse Mode)."                 n"A collection of objects to support configuration of RPs
            (Rendezvous Points) and Group Mappings."                 �"A collection of objects to support management of PIM
            routers running PIM-SM (Sparse Mode).  The groups
            hwPimSsmGroup and hwPimRpConfigGroup are also required."                 �"A collection of objects to support management of PIM
            routers running BIDIR mode.  The groups hwPimSsmGroup,
            hwPimSmGroup and hwPimRpConfigGroup are also required."                 `"A collection of objects to support notification of PIM
            network management events."                 Y"A collection of notifications for signaling PIM network
            management events."                     P"Objects providing additional diagnostics related to a PIM
            router."                 �"A collection of objects required for management of PIM
            Dense Mode (PIM-DM) function.  The groups hwPimSsmGroup and
            hwPimSmGroup are also required." 
"RFC 3973"               k"An object that specifies the volatility of global PIM
            configuration settings on this device."                                                