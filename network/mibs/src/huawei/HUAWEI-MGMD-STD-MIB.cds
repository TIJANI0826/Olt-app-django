�-- ============================================================================
-- Copyright (C) 2022 by HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI-MGMD-STD-MIB.my, this MIB module for MGMD Management.
--            A New version of MGMD combining RFC 2933 and RFC 3019.
--            Includes IGMPv3 and MLDv2 source filtering changes.
--            Copyright (C) The Internet Society (date).  This version
--            of this MIB module is part of RFC 3376; see the RFC
--            itself for full legal notices. 
-- Reference:  
-- Version: V2.22
-- History:
--    
-- ============================================================================
  "The PIM control message state.

            valid(1)     The valid IGMP/MLD control message has been received.            

            invalid(2)   The invalid IGMP/MLD control message has been received.

            ignore(3)    The IGMP/MLD control message has been ignored."                                                                     �"The MIB module for MGMD Management.
            Huawei Technologies Co.,Ltd . Supplementary information may
            be available at:
            http://www.huawei.com" �"Huawei Industrial Base
              Bantian, Longgang
               Shenzhen 518129
               People's Republic of China
               Website: http://www.huawei.com
               Email: support@huawei.com
             " "202202110000Z" "202110270000Z" "202110190000Z" "202110160000Z" "202104190000Z" "201809110000Z" "201610130000Z" "201607090000Z" "201407090000Z" "201407010000Z" "201406200000Z" "201308280000Z" "200704160000Z" "Modify the History." /"Modify the range of hwMgmdGmpBoardLimitCount." M"Delete SrcAddr and GrpAddr of hwMgmdGMPBoardLimit/hwMgmdGMPBoardLimitClear." �"1.Add hwMgmdBoardLimitThresholdExceed.
             2.Add hwMgmdBoardLimitThresholdExceedClear.
             3.Add hwMgmdGMPBoardLimit.
             4.Add hwMgmdGMPBoardLimitClear.
            " "Modify comment." `"1.Add hwMgmdIfThresholdExceed.
             2.Add hwMgmdIfThresholdExceedClear.
            " �"1.Add hwMgmdRouterInterfaceTtlCheck.
             2.Add hwMgmdHostInterfaceTtlCheck.
             3.Add hwMgmdTtlCheck.
            " �"1.Add hwMgmdHostInterfaceTable.
             2.Add hwMgmdHostRerouteDelayPeriod.  
             3.Add hwMgmdHostRerouteImmediate.
            "�"1.Add hwMgmdHostStarGThresholdExceed trap.
             2.Add hwMgmdHostStarGThresholdExceedClear trap.
             3.Add hwMgmdHostStarGExceed trap.
             4.Add hwMgmdHostStarGExceedClear trap.
             5.Add hwMgmdHostSGThreshodExceed trap.
             6.Add hwMgmdHostSGThreshodExceedClear trap.
             7.Add hwMgmdHostSGExceed trap.
             8.Add hwMgmdHostSGExceedClear trap.
            ""1.Correct trap name hwMgmdTotalLimitThreshodExceed to hwMgmdTotalLimitThresholdExceed and modify the description.
             2.Correct trap name hwMgmdTotalLimitThreshodExceedClear to hwMgmdTotalLimitThresholdExceedClear and modify the description.
             " x"1.Add hwMgmdTotalLimitThreshodExceed trap.
             2.Add hwMgmdTotalLimitThreshodExceedClear trap.
            " "Modify import mibs" *"The initial revision of this MIB module."       -- 11 Feb 2022
           ^"The (conceptual) table listing the interfaces on which
             IGMP or MLD is enabled."                       c"An entry (conceptual row) representing an interface on
            which IGMP or MLD is enabled."                       �"The ifIndex value of the interface for which IGMP or MLD
            is enabled.  The table is indexed by the ifIndex value and
            the InetAddressType to allow for interfaces that may be
            configured in both IPv4 and IPv6 modes."                      �"The address type of this interface.  This entry along with
            the ifIndex value acts as the index to the
            hwMgmdRouterInterface table.  A physical interface may be
            configured in multiple modes concurrently, e.g., in IPv4
            and IPv6 modes connected to the same interface; however,
            the traffic is considered to be logically separate."                      "The address of the IGMP or MLD Querier on the IP subnet to
            which this interface is attached.  The InetAddressType,
            e.g., IPv4 or IPv6, is identified by the
            hwMgmdRouterInterfaceQuerierType variable in the
            hwMgmdRouterInterface table."                       g"The frequency at which IGMP or MLD Host-Query packets are
            transmitted on this interface."                       �"The activation of a row enables the router side of IGMP or
            MLD on the interface.  The destruction of a row disables
            the router side of IGMP or MLD on the interface."                      �"The version of MGMD that is running on this interface.
            Value 1 applies to IGMPv1 routers only.  Value 2 applies
            to IGMPv2 and MLDv1 routers, and value 3 applies to IGMPv3
            and MLDv2 routers.

            This object can be used to configure a router capable of
            running either version.  For IGMP and MLD to function
            correctly, all routers on a LAN must be configured to run
            the same version on that LAN."                       l"The maximum query response interval advertised in MGMDv2
            or IGMPv3 queries on this interface." "RFC 3810, Section 9.3"                     M"The time since hwMgmdRouterInterfaceQuerier was last 
            changed."                       �"The amount of time remaining before the Other Querier
            Present Timer expires.  If the local system is the querier,
            the value of this object is zero."                      �"The number of general queries received whose IGMP or MLD
            version does not match the equivalent
            hwMgmdRouterInterfaceVersion, over the lifetime of the row
            entry.  Both IGMP and MLD require that all routers on a LAN
            be configured to run the same version.  Thus, if any general
            queries are received with the wrong version, this indicates
            a configuration error."                      3"The number of times a group membership has been added on
            this interface, that is, the number of times an entry for
            this interface has been added to the Cache Table.  This
            object can give an indication of the amount of activity
            between samples over time."                      @"Some devices implement a form of IGMP or MLD proxying
            whereby memberships learned on the interface represented by
            this row cause Host Membership Reports to be sent on the
            interface whose ifIndex value is given by this object.
            Such a device would implement the hwMgmdV2RouterBaseMIBGroup
            only on its router interfaces (those interfaces with
            non-zero hwMgmdRouterInterfaceProxyIfIndex).  Typically, the
            value of this object is 0, indicating that no proxying is
            being done."                       Y"The current number of entries for this interface in the
            RouterCache Table."                      "The Robustness Variable allows tuning for the expected
            packet loss on a subnet.  If a subnet is expected to be
            lossy, the Robustness Variable may be increased.  IGMP and
            MLD are robust to (Robustness Variable-1) packet losses."                      !"The Last Member Query Interval is the Max Query Response
            Interval inserted into group-specific queries sent in
            response to leave group messages, and is also the amount
            of time between group-specific query messages.  This value
            may be tuned to modify the leave latency of the network.  A
            reduced value results in reduced time to detect the loss of
            the last member of a group.  The value of this object is
            irrelevant if hwMgmdRouterInterfaceVersion is 1."                       �"Represents the number of group-specific and group-and-
            source-specific queries sent by the router before it assumes
            there are no local members."                       m"Represents the number of Queries sent out on startup,
            separated by the Startup Query Interval."                       k"This variable represents the interval between General 
            Queries sent by a Querier on startup."                       J"The status of IGMP or MLD ttl-check is enabled or not on this interface."                       �"The (conceptual) table listing the IP multicast groups for
              which there are members on a particular router interface."                       :"An entry (conceptual row) in the hwMgmdRouterCacheTable."                       �"The address type of the hwMgmdRouterCacheTable entry. This 
            value applies to both the hwMgmdRouterCacheAddress and the
            hwMgmdRouterCacheLastReporter entries."                       �"The IP multicast group address for which this entry
            contains information.  The InetAddressType, e.g., IPv4 or
            IPv6, is identified by the hwMgmdRouterCacheAddressType
            variable in the hwMgmdRouterCache table."                       i"The interface for which this entry contains information
            for an IP multicast group address."                      �"The IP address of the source of the last membership report
            received for this IP multicast group address on this
            interface.  If no membership report has been received, this
            object has the value 0.  The InetAddressType, e.g., IPv4 or
            IPv6, is identified by the hwMgmdRouterCacheAddressType
            variable in the hwMgmdRouterCache table."                       0"The time elapsed since this entry was created."                       �"This value represents the time remaining before the Group
            Membership Interval state expires.  The value must always be
            greater than or equal to 1."                      3"This value is applicable only to MGMDv3-compatible nodes
            and represents the time remaining before the interface
            EXCLUDE state expires and the interface state transitions
            to INCLUDE mode.  This value can never be greater than
            hwMgmdRouterCacheExpiryTime."                      S"The time remaining until the local router will assume that
            there are no longer any MGMD version 1 members on the IP
            subnet attached to this interface.  This entry only applies
            to IGMPv1 hosts, and is not implemented for MLD.  Upon
            hearing any MGMDv1 Membership Report (IGMPv1 only), this
            value is reset to the group membership timer.  While this
            time remaining is non-zero, the local router ignores any
            MGMDv2 Leave messages (IGMPv2 only) for this group that it
            receives on this interface."                      "The time remaining until the local router will assume that
            there are no longer any MGMD version 2 members on the IP
            subnet attached to this interface.  This entry applies to
            both IGMP and MLD hosts.  Upon hearing any MGMDv2 Membership
            Report, this value is reset to the group membership timer.
            Assuming no MGMDv1 hosts have been detected, the local
            router does not ignore any MGMDv2 Leave messages for this
            group that it receives on this interface."                       �"The current cache state, applicable to MGMDv3 compatible
            nodes. The value indicates whether the state is INCLUDE or
            EXCLUDE."                       �"The (conceptual) table listing the interfaces that
            are members of a particular group.  This is an inverse
            lookup table for entries in the hwMgmdRouterCacheTable."                       O"An entry (conceptual row) in the 
            hwMgmdInverseRouterCacheTable."                       :"The interface for which this entry contains information."                       >"The address type of the hwMgmdInverseRouterCacheTable entry."                      "The IP multicast group address for which this entry
            contains information.  The InetAddressType, e.g., IPv4 or
            IPv6, is identified by the hwMgmdInverseRouterCacheAddressType
            variable in the hwMgmdInverseRouterCache table."                       �"The (conceptual) table listing the Source List entries
             corresponding to each interface and multicast group pair on
             a Router."                       <"An entry (conceptual row) in the hwMgmdRouterSrcListTable."                       �"The address type of the InetAddress variables in this
            table. This value applies to the 
            hwMgmdRouterSrcListHostAddress and hwMgmdRouterSrcListAddress 
            entries."                       X"The IP multicast group address for which this entry
            contains information."                       i"The interface for which this entry contains information
            for an IP multicast group address."                       �"The host address to which this entry corresponds.  The
            hwMgmdRouterCacheSourceFilterMode value for this group address
            and interface indicates whether this host address is
            included or excluded."                       �"This value indicates the relevance of the SrcList entry,
            whereby a non-zero value indicates this is an INCLUDE state
            value, and a zero value indicates this to be an EXCLUDE
            state value."                       �"The (conceptual) table used to list the control message counter
            on all the interfaces on which IGMP or MLD is enabled."                      P"An entry (conceptual row) representing an interface on
            which IGMP or MLD is enabled. Dynamically created row
            state is non-volatile, and upon agent reboot should be
            reinstantiated as a conceptual row. Any change in read-create
            objects should therefore be backed up by stable storage."                       �"The ifIndex value of the interface for which IGMP or MLD
            is enabled. The table is indexed by the ifIndex value and
            the InetAddressType to allow for interfaces which may be
            configured in both IPv4 and IPv6 modes."                      �"The address type of this interface. This entry along with
             the ifIndex value acts as the index to the 
             hwMgmdRouterInterface table. A physical interface may be 
             configured in multiple modes concurrently, e.g. in IPv4 
             and IPv6 modes connected to the same interface, however 
             the traffic is considered to be logically separate."                       %"The IGMP/MLD control message state."                       1"The number of IGMP/MLD Query on this interface."                       A"The number of IGMP/MLD report with ASM group on this interface."                       A"The number of IGMP/MLD report with SSM group on this interface."                       @"The number of IGMP/MLD leave with ASM group on this interface."                       @"The number of IGMP/MLD leave with ASM group on this interface."                       1"The number of IGMP/MLD is_in on this interface."                       1"The number of IGMP/MLD is_ex on this interface."                       1"The number of IGMP/MLD to_in on this interface."                       1"The number of IGMP/MLD to_ex on this interface."                       1"The number of IGMP/MLD allow on this interface."                       1"The number of IGMP/MLD block on this interface."                       ?"The number of total IGMP/MLD source record on this interface."                       ?"The number of total IGMP/MLD others packet on this interface."                       ^"The (conceptual) table listing the interfaces on which
             IGMP or MLD is enabled."                       c"An entry (conceptual row) representing an interface on
            which IGMP or MLD is enabled."                       �"The ifIndex value of the interface for which IGMP or MLD is
             enabled.  The table is indexed by the ifIndex value and the
             InetAddressType to allow for interfaces that may be
             configured in both IPv4 and IPv6 modes."                      �"The address type of this interface.  This entry along with
             the ifIndex value acts as an index to the hwMgmdHostInterface
             table.  A physical interface may be configured in multiple
             modes concurrently, e.g., in IPv4 and IPv6 modes connected
             to the same interface; however, the traffic is considered
             to be logically separate."                      "The address of the IGMP or MLD Querier on the IP subnet to
             which this interface is attached.  The InetAddressType,
             e.g., IPv4 or IPv6, is identified by the
             hwMgmdHostInterfaceQuerierType variable in the
             hwMgmdHostInterface table."                       �"The activation of a row enables the host side of IGMP or
            MLD on the interface.  The destruction of a row disables
            the host side of IGMP or MLD on the interface."                      �"The maximum version of hwMgmd that the host can run on
            this interface.  A value of 1 is only applicable for IPv4,
            and indicates that the host only supports IGMPv1 on the
            interface.  A value of 2 indicates that the host also
            supports IGMPv2 (for IPv4) or MLDv1 (for IPv6).  A value of
            3 indicates that the host also supports IGMPv3 (for IPv4)
            or MLDv2 (for IPv6)."                      "The time remaining until the host assumes that there are
            no IGMPv1 routers present on the interface.  While this is
            non-zero, the host will reply to all queries with version 1
            membership reports.  This variable applies to IGMPv2 or 3
            hosts that are forced to run in v1 for compatibility with
            v1 routers present on the interface.  This object may only
            be present when the corresponding value of
            hwMgmdHostInterfaceQuerierType is ipv4." 1"RFC 2236, Section 4 and RFC 3376, Section 7.2.1"                    �"The time remaining until the host assumes that there are
            no hwMgmdv2 routers present on the interface.  While this is
            non-zero, the host will reply to all queries with version 1
            or 2 membership reports.  This variable applies to hwMgmdv3
            hosts that are forced to run in v2 for compatibility with
            v2 hosts or routers present on the interface." 5"RFC 3376, Section 7.2.1 and RFC 3810, Section 8.2.1"                    h"The robustness variable utilised by an hwMgmdv3 host in
            sending state-change reports for multicast routers.  To
            ensure the state-change report is not missed, the host
            retransmits the state-change report
            [hwMgmdHostInterfaceVersion3Robustness - 1] times.  The
            variable must be a non-zero value." 4"RFC 3376, Section 8.1 and RFC 3810, Section 9.14.1"                     X"The enabled backup status of IGMP or MLD host function on this
            interface."                      �"The minimum time that must elapse between hostinterface down to up originated by this router.
            The value of 65535 represents an 'infinite' time, in
            which case, IGMP or MLD host interface is never up.

            The non-zero minimum allowed value provides resilience
            against propagation of denial-of-service attacks from the
            data and control planes to the network management plane."                       P"The status of IGMP or MLD host reroute is immidiatly or not on this interface."                       J"The status of IGMP or MLD ttl-check is enabled or not on this interface."                           "Group address of the entry."                       "Source address of the entry."                       �"The interface from which an IGMP or a MLD limit trap is
             most recently sent. If this router has not sent a limit
             trap, this object is set to 0."                       ;"The total number of IGMP or MLD entries of this instance."                       ;"The total number of IGMP or MLD entries on the interface."                       ;"The total number of IGMP or MLD entries of all instances."                       ("The IGMP or MLD group address to join."                       )"The IGMP or MLD source address to join."                       4"The host IP address for sending membership report."                      :"The version of MGMD which is running on this interface.
            Value 1 applies to IGMPv1 and MLDv1 version. Value 2 applies
            to IGMPv2 and MLDv2 version, and value 3 applies to IGMPv3
            version.
            This object can be used to configure a router capable of
            running either version.  For IGMP and MLD to function
            correctly, all routers on a LAN must be configured to run
            the same version on that LAN. This object MAY be
            modified under any rowstatus condition.
    DEFVAL     { 2 }"                       �"The ifIndex value of the interface for which IGMP or MLD
            is enabled. The table is indexed by the ifIndex value and
            the InetAddressType to allow for interfaces which may be
            configured in both IPv4 and IPv6 modes."                       T"The interface name of the interface for which IGMP or MLD
            is enabled."                       �"The address type of the multicast group address in the most
             recently sent IGMP or MLD limit trap. If this router has not
             sent a limit trap, this object is set to 0."                       �"The multicast group address in the most recently sent IGMP 
             or MLD limit trap. The InetAddressType is defined by the   hwMgmdGmpLimitGroupAddressType object."                       �"The source address in the most recently sent IGMP or MLD limit trap. The InetAddressType is defined by the hwMgmdGmpLimitGroupAddressType object."                        "The instance name of the trap."                       q"The address type of the multicast group address in the most
             recently sent IGMP or MLD limit trap."                       ="The current number of IGMP or MLD entries of all instances."                       N"The threshold value of IGMP or MLD entries uppper limit(%) of all instances."                       J"The current number of IGMP or MLD proxy (*, G) entries of all instances."                       ["The threshold value of IGMP or MLD proxy (*, G) entries uppper limit(%) of all instances."                       H"The total number of IGMP or MLD proxy (*, G) entries of all instances."                       L"The source address in the most recently sent IGMP or MLD proxy limit trap."                       U"The multicast group address in the most recently sent IGMP or MLD proxy limit trap."                       J"The current number of IGMP or MLD proxy (S, G) entries of all instances."                       Z"The threshold value of IGMP or MLD proxy (S, G)entries uppper limit(%) of all instances."                       H"The total number of IGMP or MLD proxy (S, G) entries of all instances."                      �"The minimum time that must elapse between hostinterface down to up originated by this router.
            The value of 4294967295 represents an 'infinite' time, in
            which case, IGMP or MLD host interface is never up.

            The non-zero minimum allowed value provides resilience
            against propagation of denial-of-service attacks from the
            data and control planes to the network management plane."                       M"The status of IGMP or MLD host reroute is immidiatly or not on this router."                       G"The status of IGMP or MLD ttl-check is enabled or not on this router."                       ="The current number of IGMP or MLD entries on the interface."                       N"The threshold value of IGMP or MLD entries uppper limit(%) on the interface."                       �"The interface from which an IGMP or a MLD Threshold trap is
             most recently sent. If this router has not sent a Threshold
             trap, this object is set to 0."                       "The name of slot."                       9"The current number of IGMP or MLD entries on the board."                       7"The limit number of IGMP or MLD entries on the board."                       P"The threshold value of IGMP or MLD entries uppper/lower limit(%) on the board."                          ="A hwMgmdGlobalLimit notification signifies that an IGMP report has been limited for
              up to maximum entries of IGMP global routing-table.
              
              This notification is generated whenever an IGMP report failed to create membership
              as IGMP global routing-table limit."                x"A hwMgmdInterfaceLimit notification signifies that an IGMP report has been limited for                
            up to maximum entries of IGMP interface routing-table.                                
                                                                                               
            This notification is generated whenever an IGMP report failed to create membership                                                                                                                                                                                       
            as IGMP interface routing-table limit."                :"A hwMgmdTotalLimit notification signifies that an IGMP report has been limited for
              up to maximum entries of IGMP total routing-table.
              
              This notification is generated whenever an IGMP report failed to create membership
              as IGMP total routing-table limit."                 S"A hwMgmdGmpJoin notification signifies the IGMP or MLD join message was received."                 G"A hwMgmdGmpLeave notification signifies the IGMP or MLD group leaved."                2"This object indicates that the number of global IGMP or MLD entries of the instance reaches the upper limit.
              
              This trap message is generated when IGMP or MLD fails to create membership because the number of global IGMP or MLD entries of the instance reaches the upper limit."                �"This object indicates that the number of IGMP or MLD entries on the interface reaches the upper limit.                                
                                                                                               
            This trap message is generated when IGMP or MLD fails to create membership because the number of IGMP or MLD entries on the interface reaches the upper limit."                &"This object indicates that the number of IGMP or MLD entries of all instances reaches the upper limit.
              
              This trap message is generated when IGMP or MLD fails to create membership because the number of IGMP or MLD entries of all instances reaches the upper limit."                �"This object indicates that the number of IGMP or MLD entries on the interface falls below the upper limit.                                
                                                                                               
            This trap message is generated when IGMP or MLD delete an entry resulting in the number of IGMP or MLD entries on the interface falls below the upper limit."                3"This object indicates that the number of global IGMP or MLD entries of the instance falls blow the upper limit.
              
              This trap message is generated when IGMP or MLD delete an entry resulting in the number of global IGMP or MLD entries of the instance falls below the upper limit."                ("This object indicates that the number of IGMP or MLD entries of all instances falls below the upper limit.
              
              This trap message is generated when IGMP or MLD delete an entry resulting in the number of IGMP or MLD entries of all instances falls below the upper limit."                 �"A hwMgmdTotalLimitThresholdExceed notification signifies that IGMP or MLD entries count of all instances reached the upper threshold."                 �"A hwMgmdTotalLimitThresholdExceedClear notification signifies that IGMP or MLD entries count of all instances fell below the lower threshold."                 �"A hwMgmdHostStarGThresholdExceed notification signifies that IGMP or MLD proxy (*, G) entries count of all instances reached the upper threshold."                 �"A hwMgmdHostStarGThresholdExceedClear notification signifies that IGMP or MLD proxy (*, G) entries count of all instances fell below the lower threshold."                 �"A hwMgmdHostStarGExceed notification signifies that IGMP or MLD proxy (*, G) entries can not be created because the limit is reached."                 �"A hwMgmdHostStarGExceedClear notification signifies that IGMP or MLD proxy (*, G) entries can be created because can be created because the number of IGMP or MLD (*, G) entries fell below the limit."                 �"A hwMgmdHostSGThresholdExceed notification signifies that IGMP or MLD proxy (S, G) entries count of all instances reached the upper threshold."                 �"A hwMgmdHostSGThresholdExceedClear notification signifies that IGMP or MLD proxy (S, G) entries count of all instances fell below the lower threshold."                 �"A hwMgmdHostSGExceed notification signifies that IGMP or MLD proxy (S, G) entries can not be created because the limit of all instances is reached."                 �"A hwMgmdHostSGExceedClear notification signifies that IGMP or MLD proxy (S, G) entries can be created because can be created because the number of IGMP or MLD (S, G) entries of all instances fell below the limit."                 y"A hwMgmdIfThresholdExceed notification signifies that IGMP or MLD entries on the interface reached the upper threshold."                 �"A hwMgmdIfThresholdExceedClear notification signifies that IGMP or MLD entries on the interface fell below the lower threshold."                 }"A hwMgmdBoardLimitThresholdExceed notification signifies that IGMP or MLD entries on the board reached the upper threshold."                 �"A hwMgmdBoardLimitThresholdExceedClear notification signifies that IGMP or MLD entries on the board fell below the lower threshold."                "A hwMgmdGMPBoardLimit notification signifies that IGMP or MLD entries on the board reaches the upper limit.

            This trap message is generated when IGMP or MLD fails to create membership because the number of IGMP or MLD entries on the board reaches the upper limit."                ""A hwMgmdGMPBoardLimitClear notification signifies that the IGMP or MLD entries on the board falls below the upper limit.

            This trap message is generated when IGMP or MLD delete an entry resulting in the number of IGMP or MLD entries on the board falls below the upper limit."                         �"The version statement for routers running IGMPv1, RFC 1112 
            [4], and implementing the MGMD Mib. MGMDv1 applies to hosts 
            and routers running IGMPv1 only. IGMPv1 routers must support 
            the IPv4 address type "   "Write access is not required." "This group is optional." "This group is optional."             �"The version statement for routers running IGMPv2, RFC 2236 
            [5], and implementing the MGMD Mib. MGMDv2 applies to hosts 
            and routers running IGMPv2 or MLDv1. IGMPv2 routers must 
            support the IPv4 address type "   Y"An additional optional object for management of MGMD
            version 2 in routers." W"A collection of additional objects for management of MGMD
            proxy devices." "Write access is not required." "This group is optional." "This group is optional."             �"The version statement for routers running MLDv1, RFC 2710 
            [7], and implementing the MGMD Mib. MGMDv2 applies to hosts 
            and routers running IGMPv2 or MLDv1. MLDv1 routers must 
            support the IPv6 address type."   Y"An additional optional object for management of MGMD
            version 2 in routers." W"A collection of additional objects for management of MGMD
            proxy devices." "Write access is not required." "This group is optional." "This group is optional."             �"The version statement for routers running IGMPv3, RFC 3376 
            [6], and implementing the MGMD Mib. MGMDv3 applies to hosts 
            and routers running IGMPv3 or MLDv2. IGMPv3 routers must 
            support the IPv4 address type."   "Write access is not required." "This group is optional." "This group is optional."             �"The version statement for routers running MLDv2 [8] and
             implementing the MGMD Mib. MGMDv3 applies to hosts and 
             routers running IGMPv3 or MLDv2. MLDv2 routers must 
             support the IPv6 address type."   "Write access is not required." "This group is optional." "This group is optional."                 i"The basic collection of objects providing management of
            MGMD version 1, 2, or 3 for hosts."                 j"The basic collection of objects providing management of
            MGMD version 1, 2 or 3 for Routers."                 �"A collection of additional read-only objects for management
            of IGMP version 2 in hosts for MGMD version 2 compliance."                 \"A collection of additional objects for
            management of MGMD version 3 in hosts."                 2"A collection of optional objects for MGMD hosts."                 ^"A collection of additional objects for management of MGMD
            version 2 in routers."                 i"A collection of further objects required by IGMPv2 routers
            for MGMD version 2 compliance. "                 W"A collection of additional objects for management of MGMD
            proxy devices."                 Y"An additional optional object for management of MGMD
            version 2 in routers."                 ?"An additional optional object for management of MGMD routers."                 ^"A collection of additional objects for management of MGMD
            version 3 in routers."                 n"A collection of objects to support notification of MGMD notification
            network management events."                 `"A collection of notifications for signaling  MGMD notification
            management events."                                