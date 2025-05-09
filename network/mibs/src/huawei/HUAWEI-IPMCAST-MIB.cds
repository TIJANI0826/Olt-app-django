�-- ============================================================================
-- Copyright (C) 2021 by HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: hwIpMcast.my , this MIB module for management 
--              of IP Multicast, including multicast routing, data
--              forwarding, and data reception.
-- Reference: This MIB was extracted from RFC 2934 
-- Version: V2.06
-- History:
-- 
-- ============================================================================
  "The mode in which a channel is operating.            

            ssm(1)       Source-Specific Multicast (SSM) with PIM Sparse
                         Mode.

            asm(2)       Any Source Multicast (ASM), with PIM Sparse
                         Mode."                                                                                    	"The MIB module for management of IP Multicast, including
            multicast routing, data forwarding, and data reception.
            Huawei Technologies Co.,Ltd . Supplementary information may
            be available at:
            http://www.huawei.com" �"Huawei Industrial Base
              Bantian, Longgang
               Shenzhen 518129
               People's Republic of China
               Website: http://www.huawei.com
               Email: support@huawei.com
             " "202104250000Z" "202104190000Z" "201805040000Z" "201407010000Z" "201406200000Z" "201308280000Z" "200704160000Z" "Modify comment." "Modify comment." `"1.Add hwMcastEntryExceed trap.
             2.Add hwMcastEntryExceedClear trap.
            " �"1.Modify the description of hwIpMcastSGThresholdExceed.
             2.Modify the description of hwIpMcastSGThresholdExceedClear.
             3.Modify the description of hwIpMcastSGExceedClear. 
            " �"1.Add hwIpMcastSGThresholdExceed trap.
             2.Add hwIpMcastSGThresholdExceedClear trap.
             3.Add hwIpMcastSGExceed trap.
             4.Add hwIpMcastSGExceedClear trap.
            " "Modify import mibs" *"The initial revision of this Mib module."       -- 25 Apr 2021
               J"The enabled status of IP Multicast function on this
            system."           '--INTEGER { enabled(1), disabled(2) }
           �"The number of rows in the hwIpMcastRouteTable.  This can be
            used to check for multicast routing activity, and to monitor
            the multicast routing table size."                       c"The (conceptual) table used to manage the multicast
            protocol active on an interface."                       r"An entry (conceptual row) containing the multicast protocol
            information for a particular interface."                       "The IP version of this row."                      "The index value that uniquely identifies the interface to
            which this entry is applicable.  The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of the IF-MIB's ifIndex."                      <"The datagram TTL threshold for the interface.  Any IP
            multicast datagrams with a TTL (IPv4) or Hop Limit (IPv6)
            less than this threshold will not be forwarded out the
            interface.  The default value of 0 means all multicast
            packets are forwarded out the interface."                       �"The rate-limit, in kilobits per second, of forwarded
            multicast traffic on the interface.  A rate-limit of 0
            indicates that no rate limiting is done."                      �"The number of octets of multicast packets that have arrived
            on the interface, including framing characters.  This object
            is similar to ifInOctets in the Interfaces MIB, except that
            only multicast packets are counted.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            hwIpMcastInterfaceDiscontinuityTime." "RFC 4293 ifInOctets"                    �"The number of octets of multicast packets that have been
            sent on the interface, including framing characters.  This
            object is similar to ifOutOctets in the Interfaces MIB,
            except that only multicast packets are counted.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            hwIpMcastInterfaceDiscontinuityTime." "RFC 4293 ifOutOctets"                    �"The number of multicast packets that have arrived on the
            interface.  In many cases, this object is identical to
            ifInMulticastPkts in the Interfaces MIB.

            However, some implementations use ifXTable for Layer 2
            traffic statistics and hwIpMcastInterfaceTable at Layer 3.  In
            this case a difference between these objects probably
            indicates that some Layer 3 multicast packets are being
            transmitted as unicast at Layer 2.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            hwIpMcastInterfaceDiscontinuityTime." "RFC 4293 ifInMulticastPkts"                    �"The number of multicast packets that have been sent on the
            interface.  In many cases, this object is identical to
            ifOutMulticastPkts in the Interfaces MIB.

            However, some implementations use ifXTable for Layer 2
            traffic statistics and hwIpMcastInterfaceTable at Layer 3.  In
            this case a difference between these objects probably
            indicates that some Layer 3 multicast packets are being
            transmitted as unicast at Layer 2.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            hwIpMcastInterfaceDiscontinuityTime." "RFC 4293 ifOutMulticastPkts"                    Y"The value of sysUpTime on the most recent occasion at which
            any one or more of this entry's counters suffered a
            discontinuity.

            If no such discontinuities have occurred since the last re-
            initialization of the local management subsystem, then this
            object contains a zero value."                       �"The (conceptual) table containing multicast routing
            information for IP datagrams sent by particular sources to
            to the IP multicast groups known to this router."                       �"An entry (conceptual row) containing the multicast routing
            information for IP datagrams from a particular source and
            addressed to a particular IP multicast group address."                       �"A value indicating the address family of the address
            contained in hwIpMcastRouteGroup.  Legal values correspond to
            the subset of address families for which multicast
            forwarding is supported."                      �"The IP multicast group address which, when combined with
            the corresponding value specified in
            hwIpMcastRouteGroupPrefixLength, identifies the groups for
            which this entry contains multicast routing information.

            This address object is only significant up to
            hwIpMcastRouteGroupPrefixLength bits.  The remainder of the
            address bits are zero.  This is especially important for
            this index field, which is part of the index of this entry.
            Any non-zero bits would signify an entirely different
            entry.

            For addresses of type ipv4z or ipv6z, the appended zone
            index is significant even though it lies beyond the prefix
            length.  The use of these address types indicate that this
            forwarding state applies only within the given zone.  Zone
            index zero is not valid in this table."                       �"The length in bits of the mask which, when combined with
            the corresponding value of hwIpMcastRouteGroup, identifies the
            groups for which this entry contains multicast routing
            information."                       �"A value indicating the address family of the address
            contained in hwIpMcastRouteSource.  The value MUST be the same
            as the value of IpMcastRouteGroupType."                      �"The network address which, when combined with the
            corresponding value of hwIpMcastRouteSourcePrefixLength,
            identifies the sources for which this entry contains
            multicast routing information.

            This address object is only significant up to
            hwIpMcastRouteGroupPrefixLength bits.  The remainder of the
            address bits are zero.  This is especially important for
            this index field, which is part of the index of this entry.
            Any non-zero bits would signify an entirely different
            entry.

            For addresses of type ipv4z or ipv6z, the appended zone
            index is significant even though it lies beyond the prefix
            length.  The use of these address types indicate that this
            source address applies only within the given zone.  Zone
            index zero is not valid in this table."                       �"The length in bits of the mask which, when combined with
            the corresponding value of hwIpMcastRouteSource, identifies
            the sources for which this entry contains multicast routing
            information."                       �"A value indicating the address family of the address
            contained in hwIpMcastRouteUpstreamNeighbor.

            An address type of unknown(0) indicates that the upstream
            neighbor is unknown, for example in BIDIR-PIM." "I-D.ietf-pim-bidir"                     �"The address of the upstream neighbor (for example, RPF
            neighbor) from which IP datagrams from these sources to
            this multicast address are received."                      O"The value of ifIndex for the interface on which IP
            datagrams sent by these sources to this multicast address
            are received.  A value of 0 indicates that datagrams are not
            subject to an incoming interface check, but may be accepted
            on multiple interfaces (for example, in BIDIR-PIM)." "I-D.ietf-pim-bidir"                    L"The value of sysUpTime at which the multicast routing
            information represented by this entry was learned by the
            router.

            If this infomration was present at the most recent re-
            initialization of the local management subsystem, then this
            object contains a zero value."                      �"The minimum amount of time remaining before this entry will
            be aged out.  The value 0 indicates that the entry is not
            subject to aging.  If hwIpMcastRouteNextHopState is pruned(1),
            this object represents the remaining time until the prune
            expires. If this timer expires, state reverts to
            forwarding(2). Otherwise, this object represents the time
            until this entry is removed from the table."                       d"The multicast routing protocol via which this multicast
            forwarding entry was learned."                       �"The routing mechanism via which the route used to find the
            upstream or parent interface for this multicast forwarding
            entry was learned."                       i"A value indicating the address family of the address
            contained in hwIpMcastRouteRtAddress."                      }"The address portion of the route used to find the upstream
            or parent interface for this multicast forwarding entry.
            This address object is only significant up to
            hwIpMcastRouteGroupPrefixLength bits.  The remainder of the
            address bits are zero.

            For addresses of type ipv4z or ipv6z, the appended zone
            index is significant even though it lies beyond the prefix
            length.  The use of these address types indicate that this
            forwarding state applies only within the given zone.  Zone
            index zero is not valid in this table."                       �"The length in bits of the mask associated with the route
            used to find the upstream or parent interface for this
            multicast forwarding entry."                      &"The reason the given route was placed in the (logical)
            multicast Routing Information Base (RIB).  A value of
            unicast means that the route would normally be placed only
            in the unicast RIB, but was placed in the multicast RIB
            (instead or in addition) due to local configuration, such as
            when running PIM over RIP.  A value of multicast means that
            the route was explicitly added to the multicast RIB by the
            routing protocol, such as DVMRP or Multiprotocol BGP."                      "The number of octets contained in IP datagrams which were
            received from these sources and addressed to this multicast
            group address, and which were forwarded by this router.
            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of routes being
            removed and replaced, which can be detected by observing
            the value of hwIpMcastRouteTimeStamp."                      �"The number of packets routed using this multicast route
            entry.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of routes being
            removed and replaced, which can be detected by observing
            the value of hwIpMcastRouteTimeStamp."                      �"The number of octets contained in IP datagrams which this
            router has received from these sources and addressed to this
            multicast group address, which were dropped because the TTL
            (IPv4) or Hop Limit (IPv6) was decremented to zero, or to a
            value less than hwIpMcastInterfaceTtl for all next hops.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of routes being
            removed and replaced, which can be detected by observing
            the value of hwIpMcastRouteTimeStamp."                      �"The number of packets which this router has received from
            these sources and addressed to this multicast group address,
            which were dropped because the TTL (IPv4) or Hop Limit
            (IPv6) was decremented to zero, or to a value less than
            hwIpMcastInterfaceTtl for all next hops.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of routes being
            removed and replaced, which can be detected by observing
            the value of hwIpMcastRouteTimeStamp."                      �"The number of octets contained in IP datagrams which this
            router has received from these sources and addressed to this
            multicast group address, which were dropped because they
            were received on an unexpected interface.

            For RPF checking protocols (such as PIM-SM), these packets
            arrived on interfaces other than hwIpMcastRouteInIfIndex, and
            were dropped because of this failed RPF check.  (RPF paths
            are 'Reverse Path Forwarding' path; the unicast routes to
            the expected origin of multicast data flows).

            Other protocols may drop packets on an incoming interface
            check for different reasons (for example, BIDIR-PIM performs
            a DF check on receipt of packets).  All packets dropped as a
            result of an incoming interface check are counted here.

            If this counter increases rapidly, this indicates a problem.
            A significant quantity of multicast data is arriving at this
            router on unexpected interfaces, and is not being forwarded.

            For guidance, if the rate of increase of this counter
            exceeds 1% of the rate of increase of hwIpMcastRouteOctets,
            then there are multicast routing problems that require
            investigation.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of routes being
            removed and replaced, which can be detected by observing
            the value of hwIpMcastRouteTimeStamp." !"RFC 4601 and I-D.ietf-pim-bidir"                    "The number of packets which this router has received from
            these sources and addressed to this multicast group address,
            which were dropped because they were received on an
            unexpected interface.

            For RPF checking protocols (such as PIM-SM), these packets
            arrived on interfaces other than hwIpMcastRouteInIfIndex, and
            were dropped because of this failed RPF check.  (RPF paths
            are 'Reverse Path Forwarding' path; the unicast routes to
            the expected origin of multicast data flows).

            Other protocols may drop packets on an incoming interface
            check for different reasons (for example, BIDIR-PIM performs
            a DF check on receipt of packets).  All packets dropped as a
            result of an incoming interface check are counted here.

            If this counter increases rapidly, this indicates a problem.
            A significant quantity of multicast data is arriving at this
            router on unexpected interfaces, and is not being forwarded.

            For guidance, if the rate of increase of this counter
            exceeds 1% of the rate of increase of hwIpMcastRoutePkts, then
            there are multicast routing problems that require
            investigation.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of routes being
            removed and replaced, which can be detected by observing
            the value of hwIpMcastRouteTimeStamp." !"RFC 4601 and I-D.ietf-pim-bidir"                    8"The (conceptual) table containing information on the
            next-hops on outgoing interfaces for routing IP multicast
            datagrams.  Each entry is one of a list of next-hops on
            outgoing interfaces for particular sources sending to a
            particular multicast group address."                       �"An entry (conceptual row) in the list of next-hops on
            outgoing interfaces to which IP multicast datagrams from
            particular sources to an IP multicast group address are
            routed."                       �"A value indicating the address family of the address
            contained in hwIpMcastRouteNextHopGroup.  Legal values
            correspond to the subset of address families for which
            multicast forwarding is supported."                      �"The IP multicast group address which, when combined with
            the corresponding value specified in
            hwIpMcastRouteNextHopGroupPrefixLength, identifies the groups
            for which this entry contains multicast forwarding
            information.

            This address object is only significant up to
            hwIpMcastRouteNextHopGroupPrefixLength bits.  The remainder of
            the address bits are zero.  This is especially important for
            this index field, which is part of the index of this entry.
            Any non-zero bits would signify an entirely different
            entry.

            For addresses of type ipv4z or ipv6z, the appended zone
            index is significant even though it lies beyond the prefix
            length.  The use of these address types indicate that this
            forwarding state applies only within the given zone.  Zone
            index zero is not valid in this table."                       �"The length in bits of the mask which, when combined with
            the corresponding value of hwIpMcastRouteGroup, identifies the
            groups for which this entry contains multicast routing
            information."                       �"A value indicating the address family of the address
            contained in hwIpMcastRouteNextHopSource.  The value MUST be
            the same as the value of IpMcastRouteNextHopGroupType."                      �"The network address which, when combined with the
            corresponding value of the mask specified in
            hwIpMcastRouteNextHopSourcePrefixLength, identifies the
            sources for which this entry specifies a next-hop on an
            outgoing interface.

            This address object is only significant up to
            hwIpMcastRouteNextHopSourcePrefixLength bits.  The remainder
            of the address bits are zero.  This is especially important
            for this index field, which is part of the index of this
            entry.  Any non-zero bits would signify an entirely
            different entry.

            For addresses of type ipv4z or ipv6z, the appended zone
            index is significant even though it lies beyond the prefix
            length.  The use of these address types indicate that this
            source address applies only within the given zone.  Zone
            index zero is not valid in this table."                       �"The length in bits of the mask which, when combined with
            the corresponding value specified in
            hwIpMcastRouteNextHopSource, identifies the sources for which
            this entry specifies a next-hop on an outgoing interface."                       _"The ifIndex value of the interface for the outgoing
            interface for this next-hop."                       n"A value indicating the address family of the address
            contained in hwIpMcastRouteNextHopAddress."                      "The address of the next-hop specific to this entry.  For
            most interfaces, this is identical to
            hwIpMcastRouteNextHopGroup.  NBMA interfaces, however, may
            have multiple next-hop addresses out a single outgoing
            interface."                      $"An indication of whether the outgoing interface and next-
            hop represented by this entry is currently being used to
            forward IP datagrams.  The value 'forwarding' indicates it
            is currently being used; the value 'pruned' indicates it is
            not."                      L"The value of sysUpTime at which the multicast routing
            information represented by this entry was learned by the
            router.

            If this infomration was present at the most recent re-
            initialization of the local management subsystem, then this
            object contains a zero value."                      7"The minimum amount of time remaining before this entry will
            be aged out.  If hwIpMcastRouteNextHopState is pruned(1), the
            remaining time until the prune expires and the state reverts
            to forwarding(2).  Otherwise, the remaining time until this
            entry is removed from the table.  The time remaining may be
            copied from hwIpMcastRouteExpiryTime if the protocol in use
            for this entry does not specify next-hop timers.  The value
            0 indicates that the entry is not subject to aging."                      �"The minimum number of hops between this router and any
            member of this IP multicast group reached via this next-hop
            on this outgoing interface.  Any IP multicast datagrams for
            the group which have a TTL (IPv4) or Hop Count (IPv6) less
            than this number of hops will not be forwarded to this
            next-hop.

            This is an optimization applied by multicast routing
            protocols that explicitly track hop counts to downstream
            listeners.  Multicast protocols that are not aware of hop
            counts to downstream listeners set this object to zero."                       <"The routing mechanism via which this next-hop was learned."                      �"The number of octets of multicast packets that have been
            forwarded using this route.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of routes being
            removed and replaced, which can be detected by observing
            the value of hwIpMcastRouteNextHopTimeStamp."                      �"The number of packets which have been forwarded using this
            route.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of routes being
            removed and replaced, which can be detected by observing
            the value of hwIpMcastRouteNextHopTimeStamp."                       ["The (conceptual) table listing the system's multicast scope
            zone boundaries." "RFC 4007 section 5"                     i"An entry (conceptual row) describing one of this device's
            multicast scope zone boundaries." ("RFC 2365 section 5, RFC 4007 section 5"                    "The IfIndex value for the interface to which this boundary
            applies.  Packets with a destination address in the
            associated address/mask range will not be forwarded over
            this interface.

            For IPv4, zone boundaries cut through links.  Therefore this
            is an external interface.  This may be either a physical or
            virtual interface (tunnel, encapsulation, and so forth.)

            For IPv6, zone boundaries cut through nodes.  Therefore this
            is a virtual interface within the node.  This is not an
            external interface, either real or virtual.  Packets
            crossing this interface neither arrive at nor leave the
            node, but only move between zones within the node." ("RFC 2365 section 5, RFC 4007 section 5"                     �"A value indicating the address family of the address
            contained in hwIpMcastBoundaryAddress.  Legal values
            correspond to the subset of address families for which
            multicast forwarding is supported."                      t"The group address which, when combined with the
            corresponding value of hwIpMcastBoundaryAddressPrefixLength,
            identifies the group range for which the scoped boundary
            exists.  Scoped IPv4 multicast address ranges must be
            prefixed by 239.0.0.0/4.  Scoped IPv6 multicast address
            ranges are FF0x::/16, where x is a valid RFC 4291 multicast
            scope.

            An IPv6 address prefixed by FF1x::/16 is a non-permanently-
            assigned address.  An IPv6 address prefixed by FF3x::/16 is
            a unicast-prefix-based multicast addresses.  A zone boundary
            for FF0x::/16 implies an identical boundary for these other
            prefixes.  No separate FF1x::/16 or FF3x::/16 entries exist
            in this table.

            This address object is only significant up to
            hwIpMcastBoundaryAddressPrefixLength bits.  The remainder of
            the address bits are zero.  This is especially important for
            this index field, which is part of the index of this entry.
            Any non-zero bits would signify an entirely different
            entry.

            For addresses of type ipv4z or ipv6z, the appended zone
            index is significant even though it lies beyond the prefix
            length.  Zone index zero is not valid in this table." 4"RFC 2365, RFC 3306 section 4, RFC 4291 section 2.7"                     �"The length in bits of the mask which when, combined with
            the corresponding value of hwIpMcastBoundaryAddress,
            identifies the group range for which the scoped boundary
            exists."                      M"The value of sysUpTime at which the multicast boundary
            information represented by this entry was learned by the
            router.

            If this infomration was present at the most recent re-
            initialization of the local management subsystem, then this
            object contains a zero value."                      �"The number of octets of multicast packets that have been
            dropped as a result of this zone boundary configuration.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of boundary
            configuration being removed and replaced, which can be
            detected by observing the value of
            hwIpMcastBoundaryTimeStamp."                      �"The number of multicast packets that have been dropped as a
            result of this zone boundary configuration.

            Discontinuities in this monotonically increasing value
            occur at re-initialization of the management system.
            Discontinuities can also occur as a result of boundary
            configuration being removed and replaced, which can be
            detected by observing the value of
            hwIpMcastBoundaryTimeStamp."                      ]"The status of this row, by which rows in this table can
            be created and destroyed.

            This status object can be set to active(1) without setting
            any other columnar objects in this entry.

            All writeable objects in this entry can be modified when the
            status of this entry is active(1)."                       �"The storage type for this row.  Rows having the value
           'permanent' need not allow write-access to any columnar
           objects in the row."                       /"Channel name limited by CAC on the interface."                       "Group address of the entry."                       "Source address of the entry."                       /"The total number of entries on the interface."                       +"The value of bandwidth on this interface."                       ,"The total number of entries on the router."                       6"The configured limit of bandwidth on this interface."                       3"The configured limit of entries on the interface."                       )"The configured limit of global entries."                       �"The interface on which this router most recently sent or received a CAC trap, or zero if this router has not sent or received a CAC trap."                       W"The name of interface on which this router most recently sent or received a CAC trap."                       )"The configured limit of global entries."                       -"The configured threshold of global entries."                       /"The total number of entries of this instance."                       h"The (conceptual) table used to list CAC limit and statistic 
            information on an interface."                       w"An entry (conceptual row) containing the CAC limit and statistic
            information for a particular interface."                       "The IP version of this row."                      "The index value that uniquely identifies the interface to
            which this entry is applicable.  The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of the IF-MIB's ifIndex."                       3"The configured limit of entries on the interface."                       6"The configured limit of bandwidth on this interface."                       /"The total number of entries on the interface."                       +"The value of bandwidth on this interface."                       v"The (conceptual) table used to list CAC limit and statistic 
            information for a channel on an interface."                       r"An entry (conceptual row) containing the multicast protocol
            information for a particular interface."                       "The IP version of this row."                      "The index value that uniquely identifies the interface to
            which this entry is applicable.  The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of the IF-MIB's ifIndex."                       /"Channel name limited by CAC on the interface."                       C"The configured limit of entries of this channel on the interface."                       F"The configured limit of bandwidth of this channel on this interface."                       ?"The total number of entries of this channel on the interface."                       :"The value of bandwidth of this channel on the interface."                       i"The (conceptual) table used to list CAC limit and statistic 
            information for all channels."                       u"An entry (conceptual row) containing the CAC limit and statistic
            information for a particular channel."                       "The channel name of this row."                       7"The configured limit of global entries for a channel."                       ;"The configured threshold of global entries for a channel."                       /"The total number of entries for this channel."                       "The mode of this channel."                        "The instance name of the trap."                       "The BoardIndex of the trap."                       &"The OverloadAddressType of the trap."                       !"The OverloadSource of the trap."                        "The OverloadGroup of the trap."                       J"The current number of multicast routing (S, G) entries of all instances."                       ["The threshold value of multicast routing (S, G) entries uppper limit(%) of all instances."                       H"The total number of multicast routing (S, G) entries of all instances."                       K"The limit type:
             1:star-group;
             2:source-group;"                       2"The address type of the multicast group address."                       /"The limit of multicast routing total entries."                       �"The reason for trap sending:
             1:entry is deleted;
             2:configuration is changed;
             100:Alarm Clear"                          N"A hwIpMcastDownstreamChannelLimit notification signifies that an entry belongs to
              specified channel has been limited.
              
              This notification is generated whenever an entry belongs to specified channel
              failed to add downstream cause channel downstream entry or bandwidth limit."                "A hwIpMcastDownstreamTotalLimit notification signifies that an entry has been limited.
              
              This notification is generated whenever an entry failed to add downstream 
              cause total downstream entry or bandwidth limit."                :"A hwIpMcastGlobalChannelLimit notification signifies that an entry belongs to specified channel
              has been limited for global limit.
              
              This notification is generated whenever an entry belongs to specified channel
              failed to create as global entries limits."                "A hwIpMcastGlobalTotalLimit notification signifies that an entry 
              has been limited for global total entries limit.              
              This notification is generated whenever an entry failed to create 
              as global total entries limits."                +"A hwIpMcastOutChannelExceededLimit notification signifies that existed entries 
              exceeded channel downstream entry or bandwidth limit of pim routing-table.                                                     
                                                                                                                 
              This notification is generated whenever existed entries belongs to specified 
              channel exceeded downstream entry or bandwidth limit due to downstream 
              limit configuration."                "A hwIpMcastOutTotalExceededLimit notification signifies that existed entries 
              exceeded total downstream entry or bandwidth limit of pim routing-table.                                                     
                                                                                                                 
              This notification is generated whenever existed entries exceeded total 
              downstream entry or bandwidth limit due to downstream 
              limit configuration."                "A hwIpMcastGlobalChannelExceededLimit notification signifies that existed entries exceeded
              global entry limit of pim routing-table.                                                     
                                                                                                                 
              This notification is generated whenever existed entries belongs to specified channel                       
              exceeded global entry or bandwidth limit due to global limit configuration."                �"A hwIpMcastGlobalTotalExceededLimit notification signifies that existed entries exceeded
              global total entry limit of pim routing-table.                                                     
                                                                                                                 
              This notification is generated whenever existed entries exceeded global total entry 
              or bandwidth limit due to global limit configuration."                d"A hwMFIBEntryOverloadSuspend notification signifies that the MFIB module is overloaded.                                                     
                                                                                                                 
              This notification is generated whenever the MFIB module is overloaded in the board."                �"A hwMFIBEntryOverloadSusResume notification signifies that the board MFIB module changes 
              from the overload suspension state to the normal state.                                                     
                                                                                                                 
              This notification is generated whenever the MFIB module changes from the overload suspension 
              state to the normal state."                �"A hwMFIBEntryOifOverloadSuspend notification signifies that  the downstream of the MFIB entry is 
              overloaded.                                                     
                                                                                                                 
              This notification is generated whenever the downstream of the MFIB entry is overloaded."                �"A hwMFIBEntryOifOverloadSuspend notification signifies that the MFIB entry changes from the overload 
              suspension state to the normal state.                                                     
                                                                                                                 
              This notification is generated whenever the MFIB entry changes from the overload suspension state to 
              the normal state."                 �"A hwIpMcastSGThresholdExceed notification signifies that multicast routing (S, G) entries count of all instances reached the upper threshold."                 �"A hwIpMcastSGThresholdExceedClear notification signifies that multicast routing (S, G) entries count of all instances fell below the lower threshold."                 |"A hwIpMcastSGExceed notification signifies that multicast routing (S, G) entries count of all instances reached the limit."                 �"A hwIpMcastSGExceedClear notification signifies that multicast routing (S, G) entries count of all instances fell below the limit."                 v"A hwMcastEntryExceed notification signifies that multicast routing entries count of all instances reached the limit."                 "A hwMcastEntryExceedClear notification signifies that multicast routing entries count of  all instances fell below the limit."                         <"The compliance statement for hosts supporting IPMCAST-MIB."   "Write access is not required." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."             L"The compliance statement for routers supporting
             IPMCAST-MIB."   "Write access is not required." "Write access is not required." "Write access is not required." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."             _"The compliance statement for routers on scope
            boundaries supporting IPMCAST-MIB."   "Write access is not required." "Write access is not required." "Write access is not required." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."                 ]"A collection of objects to support basic management of IP
            Multicast protocols."                 ["A collection of objects to support basic management of IP
            Multicast routing."                 i"A collection of objects to support management of packet
            counters for each interface entry."                 }"A collection of objects to support management of packet
            counters for each outgoing interface entry of a route."                 n"A collection of objects to support management of the use of
            hop counts in IP Multicast routing."                 i"A collection of objects to support management of octet
            counters for each forwarding entry."                 �"A collection of objects providing information on the
            relationship between multicast routing information and the
            IP Forwarding Table."                 `"A collection of objects to support management of multicast
            scope zone boundaries."                 a"A collection of objects to support notification of MCAC
            network management events."                 Z"A collection of notifications for signaling MCAC network
            management events."                                                    