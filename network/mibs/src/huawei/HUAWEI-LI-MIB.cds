u-- ==================================================================
-- Copyright (C) 2007 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI LI Management MIB  HWAWEI-LI-MIB
-- Reference:
-- Version:     V1.0
-- History:
--              V1.0 s49159, 2007-06-10, publish
-- ==================================================================
   T"An integer that is in the range of the DiffServ codepoint
                values."                                                                 ;"This module manages huawei's Lawful interception feature." �" R&D Meaning, huawei Technologies co.,Ltd.
                Http://www.huawei.com                                       
                E-mail:support@huawei.com " "200706270000Z" %"Initial version of this MIB module."                   �"This notification is sent when an intercepting router or switch is first 
                capable of intercepting a packet corresponding to a configured data stream. "                 �"This notification is sent when an LIG is lost connection to the device 
                which  intercepting packet corresponding to a configured data stream. "                 �"This notification is sent when an LIG is recover connection to the device 
                which intercepting packet corresponding to a configured data stream. "                         %"The time of the LI agent.Read-only."                       ("The status of the  LI agent.Read-only."                       }"The IP address of the X2 interface in LI agent.Just can be read by server 
                and can be set in command line."                       w"The Port of the X2 interface in LI agent.Just can be read by server 
                and can be set in command line."                       }"The IP address of the X3 interface in LI agent.Just can be read by server 
                and can be set in command line."                       w"The Port of the X3 interface in LI agent.Just can be read by server 
                and can be set in command line."                          	"This object contains a value which may be used as an index
                value for a new HwLiGatewayEntry. This is to reduce 
                the probability of errors during creation of new hwLiGatewayTable 
                entries.0 means no free resource."                      �"This table lists the LI Gateway Devices with which the
                intercepting device communicates.
                
                This table is written by the LI Gateway Device, and is always
                volatile. This is because intercepts may disappear during a
                restart of the intercepting equipment.
                
                Entries are added to this table via hwLiGatewayStatus in
                accordance with the RowStatus convention."                       n"The entry describes a single session maintained with an
                application on a LI Gateway Device."                       "The index of the LIG itself."                       "The type of address in LIG"                       ]"The protocol used in transferring intercepted data to the
                Gateway Device. "                       c"The IP Address of the Gateway Device's network interface
                to which to direct IRI."                       d"The port number on the Gateway Device's network interface
                to which to direct IRI."                       ]"The protocol used in transferring intercepted data to the
                Gateway Device. "                       b"The IP Address of the Gateway Device's network interface
                to which to direct CC."                       t"The port number on the Gateway Device's network interface
                to which to direct intercepted traffic."                       3"The timer for sending HeartBeat to LIG,In seconds"                       9"The times of heartbeats that allowed to missed from LIG"                       $"The operate status of X3 interface"                       �"The Differentiated Services Code Point the intercepting
                device applies to the IP packets encapsulating the
                intercepted traffic."                       �"The status of this conceptual row. This object is used to
                manage creation, modification and deletion of rows in this
                table.
                "                       "The type of address in LIG"                       "The type of address in LIG"                      "This object displays the device capabilities with respect to
                certain fields in Gateway Device table. This may be dependent
                on hardware capabilities, software capabilities.
                The following values may be supported:
                    ipv4SrcInterface:  SNMP ifIndex Value may be used to select
                                       the interface (denoted by
                                       hwLiGatewaySrcInterface) on the
                                       intercepting device from which to
                                       transmit intercepted data to an IPv4
                                       address Gateway Device.
                
                
                    ipv6SrcInterface:  SNMP ifIndex Value may be used to select
                                       the interface (denoted by
                                       hwLiGatewaySrcInterface) on the
                                       intercepting device from which to
                                       transmit intercepted data to an IPv6
                                       address Gateway Device.
                
                
                    udp:               UDP may be used as transport protocol
                                       (denoted by hwLiGatewayTransport) in
                                       transferring intercepted data to the
                                       Gateway Device.
                
                
                    tcp:               TCP may be used as transport protocol
                                       (denoted by hwLiGatewayTransport) in
                                       transferring intercepted data to the
                                       Gateway Device."                          �"The Intercept Stream Table lists the IPv4 and IPv6 streams
                to be intercepted.  The same data stream must be used by
                one LIG.
                
                The first index indicates which LIG the
                intercepted traffic will be diverted to. The second index
                permits multiple classifiers to be used together, such as
                having an IP address as source or destination."                       �"A stream entry indicates a single data stream to be
                intercepted to a Mediation Device. Many selected data
                streams may go to the same application interface, and many
                application interfaces are supported."                       !"The index of the stream itself."                       2"The ID indicate a independency stream in a LIG ."                        "Intercepted IRI or CC or BOTH."                       H"The index of the stream itself.0 means no session ID will be specified"                      �"Target ID type specifies the type of packets. 
                1 means one direction traffic is intercept, 
                2 means bidirectional traffic is intercept. 
                
                for bidirectional interception,  if the source IP or destination IP 
                in a packet is equal with the configured hwLiStreamSrcIpAddress£¬
                If other condition is satisfied then the packet is intercepted.
                
                for one-directional interception,  if the sourceIP and DestinationIP 
                in a packet is equal with the configured hwLiStreamSrcIpAddress and 
                hwLiStreamDstIPAddress£¬If other condition is satisfied then the 
                packet is intercepted"                       s"Source Mac address of the packets which will be intercepted.0000-0000-0000 means no MAC address will be specified"                       C"Destination Mac address of the packets which will be intercepted."                       �"The Source Address used in packet selection. This address will
                be of the type specified in hwLiStreamIpAddrType.0.0.0.0 means no IP address will be specified"                       �"The length of the Source Prefix. A value of 32 causes all
                addresses to match. This prefix length will be consistent with
                the type specified in hwLiStreamIpAddrType."                       �"The Destination address or prefix used in packet selection.
                This address will be of the type specified in
                hwLiStreamIpAddrType.0.0.0.0 means no IP address will be specified"                       �"The length of the Destination Prefix. A value of 32 causes
                all addresses to match.  This prefix length will be consistent
                with the type specified in hwLiStreamIpAddrType."                       c"Protocol type of the packets which will be intercepted.0 means no Protocol type will be specified"                       @"The fourth layer source port.0 means no Port will be specified"                       E"The fourth layer Destination port.0 means no Port will be specified"                       ]"The interface switch carrying the intercepted taffic.0 means no interface will be specified"                       \"The username whose traffic will be intercepted.zero-length means no user will be specified"                       �"The status of this conceptual row. This object is used to
                manage creation, modification and deletion of rows in this
                table."                       2"The source IP address of the interception stream"                       7"The destination IP address of the interception stream"                       k"The source VPN instance name whose traffic will be intercepted.zero-length means no VPN will be specified"                       q"The destination VPN instance name whose traffic will be intercepted. zero-length means no VPN will be specified"                       R"The L2TP ifindex of intercepting stream.0 means no l2tpIfindex will be specified"                       K"The L2TP VLAN ID of intercepting stream.0 means no Vlan will be specified"                       n"The accounting session ID of intercepting stream.zero-length means no accouting session ID will be specified"                               "Description."                   "Description."                 "Description."                 "Description."                 "Description."                     "Description."                            