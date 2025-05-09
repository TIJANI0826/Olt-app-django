�-- ==================================================================
-- Copyright (C) 2006 by HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:  HUAWEI LAN Switch RRPP MIB
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2006-02-20 Created by Gurongwei 50539       
-- V1.1 2006-06-07 Modify by xingxing 51692
-- V1.2 2006-07-07 Modify by zhouyun 60016423   
-- V1.3 2006-09-11 Modify by zhouyun 60016423       
-- V1.4 2006-12-29 Modify by zhouyun 60016423 
-- V1.5 2007-8-2   Modify by jianglian 60019048    
--      2008-6-5   Modify by yanjiajun 130005
-- ==================================================================
   '"A simple status value for the object."                                l"The RRPP (Rapid Ring Protection protocol) provides
                fast protection switching to layer 2 switches 
                interconnected in an Ethernet ring topology.  When
                a link in the ring breaks, the RRPP can recover the
                data path quickly.  Its protection switching is 
                similar to what can be achieved with the Spanning 
                Tree Protocol (STP), but the converging time is less
                than a second after link failure.
                This MIB defines management information used on 
                products which support RRPP." �"Platform Team Huawei Technologies Co. Ltd.
                Hai-Dian District Beijing P.R. China
                http://www.huawei.com
                Zip:100085"                   8"Indicating whether the RRPP is enabled on this switch."                       :"This value indicates the delay when ports change to Up ."                           c"A table containing information about configurations
                and status of a RRPP domain."                       2"Detailed information of a specified RRPP domain."                       �"An index uniquely identifies a RRPP domain,
                which ranges from 1~8.
                This value can't be modified after created."                      9"Index of the control VLAN specified to a domain. 
                The value 65535 indicates the control VLAN has 
                not been configured. 
                The VLAN assigned to a RRPP Domain must not have
                been created.
                This value can't be modified after created."                       �"The value indicates the interval between two hello
                packets sent by master-node, and its unit is second.
                The value ranges from 1s~10s."                      U"The expiration value of the fail-period timer and its unit
                is second.  If not receiving hello packets before this
                expires, the master-node considers the ring is broken.
                The value of this node ranging from 3s~30s must not be
                less than triple hwRrppDomainHelloTime's value."                       �"This object is responsible for managing the creation,
                deletion and modification of rows, which support active
                status and CreatAndGo, destroy operation."                       K"Clears the statistics of packets received and sent on the current domain."                       P"Indicating whether the rrpp mul-sub-ring protection is enabled on this switch."                       �"Information about the instances bound to a domain.
                     The value ranges from 0 to 48. Both the ID and the number of the instances can be obtained through the value."                       a"A table containing information about configurations
                and status of a RRPP Ring."                       0"Detailed information of a specified RRPP Ring."                       �"An index uniquely identifies a RRPP Ring,
                which ranges from 1~64.
                This value can't be modified after created."                      7"Indicating whether the RRPP is enabled on this Ring.
                NOTE: If major-ring and sub-ring(s) of a domain 
                coexist on a switch, major-ring must be enabled 
                before sub-ring is enabled.  And sub-ring must be 
                disabled before major-ring is disabled."                       �"As both hwRrppEnableStatus and hwRrppRingEnableStatus
                are enabled, the ring is activated.  Whereas either of
                the two items is disabled, the ring is inactive."                       S"The status (i.e. unknown, health or fault) of the Ethernet
                ring."                      �"There are four RRPP node modes for the switch on a RRPP 
                ring, such as master, transit, edge and assistant-edge.
                Each RRPP ring has a single designated master-node.  All
                other nodes except edge-node and assistant-edge-node on
                that ring are referred to as transit-nodes.
                The node mode of edge and assistant-edge should be
                configured only on sub-ring.  When there is a common link
                between a sub-ring and its major-ring, the node mode of 
                the sub-ring must be edge or assistant-edge, and they must
                be configured in pairs.
                If node mode is designated as edge or assistant-edge,
                several points should be noticed:
                Major-ring must be created before a sub-ring is created;
                Major-ring can't be deleted unless all its sub-rings are
                deleted;
                The node mode of the switch on major-ring must be
                transit;
                Major-ring and sub-ring must have only a common port.
                This value can't be modified after created."                      w"If the switch is a master-node or transit-node, this value
                is ifIndex of the primary port; otherwise, if the switch is an 
                edge-node or assistant-edge-node, this value is ifIndex of the common
                port.
                This value is 0, if the port doesn't exist.  
                This value can't be modified after created."                      v"If the switch is a master-node or transit-node, this value
                is ifIndex of the secondary port; otherwise, if the switch is
                an edge-node or assistant-edge-node, this value is ifIndex of the edge
                port.
                This value is 0, if the port doesn't exist.  
                This value can't be modified after created."                       �"Level of a ring.  This field should be set 0 on major-ring
                and 1 on the sub-ring.
                This value can't be modified after created."                      m"This object is responsible for managing the creation,
                deletion and modification of rows, which support active
                status and CreatAndGo, destroy operation.
                To create a new row, hwRrppRingNodeMode,
                hwRrppRingPrimaryPort, hwRrppRingSecondaryPort and
                hwRrppRingLevel must be specified."                       I"Clears the statistics of packets received and sent on the current ring."                       a"A table containing information about configurations and
                status of a RRPP port."                       0"Detailed information of a specified RRPP port."                       '"Logical index of the interface index."                       \"The interface type of the RRPP port.
                (i.e. FE, GE, VE or Eth-Trunk port)."                       ]"The RRPP role of the port.
                (i.e. primary, secondary, common or edge port)."                       V"State of RRPP port, including unknown, unblocked, blocked
                and down."                       R"The statistics of illegal RRPP packets received from
                this port."                       ]"The statistics of hello packets received from
                this port on specified ring."                       _"The statistics of link-up packets received
                from this port on specified ring."                       a"The statistics of link-down packets received
                from this port on specified ring."                      N"The statistics of common-flush packets received from
                this port on specified ring.
                Instruction
                When master-node receives valid link-down packets
                or link-up packets, it will send common-flush packets, 
                instructing the other nodes on the ring to flush their
                forwarding database.
                When the nodes except master-node receive common-flush,
                they will flush forwarding database.  If there is any
                port blocked on that node, it won't be unblocked."                      W"The statistics of complete-flush packets received
                from this port on specified ring.
                Instruction
                When the ring recovers, master-node will receive its own
                hello packets.  It will send complete-flush packets, 
                instructing the other nodes on the ring to flush their
                forwarding database.
                When the nodes except master-node receive complete-flush,
                they will flush forwarding database.  If there is any port 
                blocked on that node, it will be unblocked."                      A"The statistics of edge-hello packets received
                from this port on specified ring.
                Instruction
                When edge-node sends edge-hello packets, 
                assistantEdge-node will receive its own edge-hello
                packets from the common link and the master ring."                      "The statistics of major-fault packets received
                from this port on specified ring.
                Instruction
                When assistantEdge can't receive edge-hello packets
                in the specified fault-time, 
                assistantEdge-node will send its own major-fault
                packets from the edge port around the sub ring.
                Edge-node will receive the major-fault packets from 
                its edge port. Then Edge-node will block its edge port."                       R"The statistics of RRPP packets failed to send out of
                this port."                       Y"The statistics of hello packets sent from
                this port on specified ring."                       ["The statistics of link-up packets sent
                from this port on specified ring."                       ]"The statistics of link-down packets sent
                from this port on specified ring."                       `"The statistics of common-flush packets sent from
                this port on specified ring."                       b"The statistics of complete-flush packets sent
                from this port on specified ring."                       ^"The statistics of edge-hello packets sent
                from this port on specified ring."                       _"The statistics of major-fault packets sent
                from this port on specified ring."                       5"A table containing information about tracking port."                       ;"Detailed information of a specified RRPP track interface."                       #"Logical index of track interface."                       �"This object is responsible for managing the creation,
                deletion and modification of rows, which support active
                status and CreatAndGo, destroy operation."                       a"A table containing information about an RRPP ring group and created without the domain or ring."                       9"Detailed information about a specified RRPP ring group."                       �"index of  the RRPP ring group,
                     which ranges from 1~16.
                     This value can't be modified after created"                       �"Row status in the ring group configuration table.
                        hwRrppRingGroupID must be specified to create a row."                       U"A table containing information about the configurations and status of an RRPP ring."                       9"Detailed information about a specified RRPP ring group."                       �"Index, namely, domain ID of the members of a ring group, which ranges from 1 to 8.
                  This  value cannot be modified after created"                       �"Index, namely, ring ID of the members of a ring group, which ranges from 1 to 64.
                    This value cannot be modified after created."                       l"Flag carried in the sent edge-Hello Packet.
                    This value can be modified after created."                       �"Row status in the ring group configuration table.
         hwRrppRingGroupMemberDomainID, hwRrppRingGroupMemberRingID, 
         and hwRrppRingGroupIsEdgeHelloSender must be specified to create a row."                           F"A table containing information about RRPP snooping enable interface."                       E"Detailed information of a specified RRPP snooping enable interface."                       '"Logical index of the interface index."                       5"The name of VSI which the interface was binding to."                       ("The VLAN which the intertace added to."                       A"Indicating whether the RRPP snooping is enabled on this switch."                       �"This object is responsible for managing the creation,
                deletion and modification of rows, which support active
                status and CreatAndGo, destroy operation."                       H"A table containing information about RRPP snooping relating interface."                       G"Detailed information of a specified RRPP snooping relating interface."                       '"Logical index of the interface index."                       "The name of VSI."                       �"This object is responsible for managing the creation,
                deletion and modification of rows, which support active
                status and CreatAndGo, destroy operation."                           j"Trap message is generated by master-node on
                the ring when the ring recovers from fault."                 \"Trap message is generated by master-node on
                the ring when the ring fails."                 �"Trap message is generated by master-node when
                it detects there are more than one master-node
                on the ring."                 e"Trap message is generated by RRPP node when 
                the track interface tracked BFD down."                 c"Trap message is generated by RRPP node when 
                the track interface tracked BFD up."                     "The RRPP global group."                 "The RRPP domain group."                 "The RRPP ring group."                 "The RRPP port group."                 !"The RRPP Track Interface group."                 "The RRPP RingGroup group."                 !"The RRPP RingGroupMember group."                 +"The RRPP Snooping enable Interface group."                 ("The RRPP Snooping associate vsi group."                 "The notification group."                                