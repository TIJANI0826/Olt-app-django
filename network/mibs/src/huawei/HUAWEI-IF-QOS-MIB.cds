�-- =================================================================
-- Copyright (C) 1996-2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: Huawei IF QOS MIB
-- Reference:   HUAWEI Enterprise MIB
-- Version:     V3.10
-- History:
--  2005-04-25  V3.10 Chen Xia(31603) Revision for Correcting the 
--              DESCRIPTION of nodes. NE05/NE08/NE16 not supports 
--              the following tables: 
--                      qosIfBandwidthTable
--                      qosRTPIfApplyTable
--                      qosRTPIfQueueRunInfoTable
--              And not supports dscp-mask(3) in type qosCarlParaType
--              All of above are required by AR series & Lanswitch(H3C).
--  2002-10-14  V3.00 Chen Xia(31603) Revision for NE05/NE08/NE16 from
--              the old huawei-qos-mib.mib
-- =================================================================
                         h"The HUAWEI-IF-QOS-MIB contains objects to apply 
           on interface for congestion management.  "D" R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd., 
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085 
            Http://www.huawei.com                                       
            E-mail:support@huawei.com "       $-- September 15, 2004 at 00:00 GMT
      H"FIFO(First In First Out) queuing table.
             FIFO is a kind of queuing strategy applied on interface for congestion management.
             And It's the default queuing strategy when other queuing strategy not configured on interface.
             This table is about the FIFO configuration and running infomation."                       J"FIFO configuration and running information Command:qos fifo queue-length"                       �"The index of interface applying FIFO queuing strategy. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of ifIndex."                       �"The description of interface identified by the value of qosFIFOIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       �"The maximum length of fifo queue which means the maximum count of packets 
             that can be cached in the fifo queue."                       �"The current length of queue which means the count of packets cached 
             in the fifo queue when the interface is congesting."                       q"The count of discarded packets which can't be enqueued fifo queue
             because the fifo queue is full."                       Z"0: Only for get.
             1: Set default value of the maximum length of fifo queue."                      "PQL(Priority Queue List) default-queue table.
             There are four priority queues:top,middle,normal,bottom. 
             The priority level of these queues is from high to low.
             A type of priority queue is assigned for those packets that do not match any other rule
             in each PQL whose number is from 1 to 16. Such queue is the default queue. For 
             each PQL the default queue may be different. The default queue is normal if other 
             type of queue is not configured."                       �"PQL default-queue configuration information.
             Command:qos pql group-number default-queue { top | middle | normal | bottom }"                       x"The index of table, which is the PQL number.
             Any number from 1 to 16 identifies the priority queue list."                       A"The type of default priority queue,the default value is normal."                       T"0: Only for get.
             1: Set default value of the defualt priority queue."                      |"PQL(Priority Queue List) queue-length table
             There are four priority queues:top,middle,normal,bottom. 
             The priority level of these queues is from high to low.
             The maximum queue length of each queue can be configured in each PQL whose number is from 1 to 16. 
             Each priority queue has individual default maximum queue length."                       �"PQL queue-length configuration information.
             Command:qos pql pql-index queue { top | middle | normal | bottom } queue-length queue-length"                       x"The index of table, which is the PQL number.
             Any number from 1 to 16 identifies the priority queue list."                       :"The index of table, which is the type of priority queue."                       �"The maximum length of specified queue.
             Each priority queue has individual default maximum queue length:
             Top : 20
             Middle: 40
             Normal: 60
             Bottom: 80"                       _"0: Only for get.
             1: Set default value of the maximum length of specified queue."                      o"PQL(Priority Queue List) inbound-interface table
             There are four priority queues:top,middle,normal,bottom. 
             The priority level of these queues is from high to low.
             The packets received from the specified interface can be configured to enqueue specified priority queue 
             in each PQL whose number is from 1 to 16."                       �"PQL inbound-interface configuration information.
             Command:qos pql pql-index inbound-interface interface-type interface-number queue { top | middle | normal | bottom }"                       x"The index of table, which is the PQL number.
             Any number from 1 to 16 identifies the priority queue list."                      "The index of table, which is the index of interface that the enqueuing 
             packets are received from. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of ifIndex."                       �"The description of interface identified by the value of qosPqlIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       s"The type of priority queue which the packets received from the specified interface 
             will be put in."                       o"0: Only for get.
             1: delete the corresponding inbound-interface rule of the specified PQL number"                      �"PQL(Priority Queue List) protocol table
             There are four priority queues:top,middle,normal,bottom. 
             The priority level of these queues is from high to low.
             The packets which belong to the specified protocol type and match the specified 
             traffic-classifying rule can be configured to enqueue specified priority queue in each
             PQL whose number is from 1 to 16."                       �"PQL protocol configuration information.
             Command:qos pql pql-index protocol protocol-name queue-key key-value  queue { top | middle | normal | bottom }"                       x"The index of table, which is the PQL number.
             Any number from 1 to 16 identifies the priority queue list."                       N"The index of table, which is the protocol type the enqueuing packets having."                       F"The index of table, which is the key words of traffic-classify rule."                       �"The index of table, which is the value of key words.
             for greater-than,less-than,tcp,udp:0~65535 
             for acl:2000~3999
             for NULL and fragment: 0
             for exp-mask: 0~255"                       �"The type of priority queue which the packets belong to the specified protocol type
             and match the specified traffic-classifying rule will be put in."                       f"0: Only for get.
             1: delete the corresponding protocol rule of the specified PQL number"                      �"PQ(Priority Queuing) table
             PQ is a kind of queuing strategy applied on interface for congestion management.
             PQ provides a mechanism to prioritize packets sent on an interface.
             If the specified priority list is applied to an interface the Priority Queuing strategy
             is applied on this interface. Only one list can be assigned per interface. 
             This table is about the PQ configuration and running infomation."                       y"PQ configuration and running infomation
             Command:qos pq pql
                     display qos pq interface"                       �"The index of table, which is the index of interface applying Priority Queuing strategy. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of ifIndex."                       T"The number of PQL applied to an interface identified by the value of qosPQIfIndex."                       �"The description of the interface by the value of qosPQIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       a"The count of packets enqueued the top priority queue when congestion occoured in the interface."                       �"The count of discarded packets which can't be enqueued top priority queue 
             because the top priority queue is full."                       j"The maximum length of top priority queue.
             The default value of maximum queue length is 20."                       d"The count of packets enqueued the middle priority queue when congestion occoured in the interface."                       �"The count of discarded packets which can't be enqueued middle priority queue 
             because the middle priority queue is full."                       m"The maximum length of middle priority queue.
             The default value of maximum queue length is 40."                       d"The count of packets enqueued the normal priority queue when congestion occoured in the interface."                       �"The count of discarded packets which can't be enqueued normal priority queue 
             because the normal priority queue is full."                       m"The maximum length of normal priority queue.
             The default value of maximum queue length is 60."                       d"The count of packets enqueued the bottom priority queue when congestion occoured in the interface."                       �"The count of discarded packets which can't be enqueued bottom priority queue 
             because the bottom priority queue is full."                       m"The maximum length of bottom priority queue.
             The default value of maximum queue length is 80."                       M"0:Only for get.
             1:Set the default queuing on interface: FIFO."                      �"CQL(Custom Queue List) default-queue table.
             There are sixteen custom queues whose queue number is from 1 to 16.
             A custom queue is assigned for those packets that do not match any other rule
             in each CQL whose number is from 1 to 16. Such queue is the default queue. For 
             each CQL the default queue may be different. The default queue is queue number 1 
             if other queue is not configured."                       t"CQL default-queue configuration information.
             Command:qos cql group-number default-queue queue-number"                       v"The index of table, which is the CQL number.
             Any number from 1 to 16 identifies the custom queue list."                       I"The number of default custom queue,the default value is queue number 1."                       R"0: Only for get.
             1: Set default value of the defualt custom queue."                      /"CQL(Custom Queue List) inbound-interface table
             There are sixteen custom queues whose queue number is from 1 to 16.
             The packets received from the specified interface can be configured to enqueue 
             specified custom queue in each CQL whose number is from 1 to 16."                       �"CQL inbound-interface configuration information.
             Command:qos cql cql-index inbound-interface interface-type interface-number queue queue-number"                       v"The index of table, which is the CQL number.
             Any number from 1 to 16 identifies the custom queue list."                      "The index of table, which is the index of interface that the enqueuing 
             packets are received from. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of ifIndex."                       �"The description of interface identified by the value of qosCqlIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       s"The number of custom queue which the packets received from the specified interface 
             will be put in."                       o"0: Only for get.
             1: delete the corresponding inbound-interface rule of the specified CQL number"                      l"CQL(Custom Queue List) protocol table.
             There are sixteen custom queues whose queue number is from 1 to 16.
             The packets which belong to the specified protocol type and match the specified 
             traffic-classifying rule can be configured to enqueue specified custom queue in each
             CQL whose number is from 1 to 16."                       �"CQL protocol configuration information.
             Command:qos cql cql-index protocol protocol-name queue-key key-value  queue queue-number."                       v"The index of table, which is the CQL number.
             Any number from 1 to 16 identifies the custom queue list."                       N"The index of table, which is the protocol type the enqueuing packets having."                       F"The index of table, which is the key words of traffic-classify rule."                       �"The index of table, which is the value of key words.
             for greater-than,less-than,tcp,udp:0~65535 
             for acl:2000~3999
             for NULL and fragment: null
             for exp-mask: 0~255 "                       �"The number of custom queue which the packets belong to the specified protocol type
             and match the specified traffic-classifying rule will be put in."                       f"0: Only for get.
             1: delete the corresponding protocol rule of the specified CQL number"                      i"CQL(Custom Queue List) serving/queue-length table
             There are sixteen custom queues whose queue number is from 1 to 16.
             The maximum queue length of each queue and serving can be configured
             in each CQL whose number is from 1 to 16. Each custom queue has individual default maximum
             queue length and serving."                       �"CQL serving/queue-length configuration information.
             Command:qos cql cql-index queue queue-number serving byte-number
                     qos cql cql-index queue queue-number queue-length queue-length"                       v"The index of table, which is the CQL number.
             Any number from 1 to 16 identifies the custom queue list."                       0"The index of table, which is the queue number."                       p"The maximum bytes that the specified queue can transmit in each turn.
             The default value is 1500."                       ,"The maximum length of the specified queue."                       �"0: Only for get.
             1: Set the defualt value of the maximum bytes that the specified queue can transmit in each turn."                       g"0: Only for get.
             1: Set the defualt value of the maximum length of the specified queue."                      I"CQ(Custom Queuing) table
             CQ is a kind of queuing strategy applied on interface for congestion management.
             CQ allows a fairness not provided with PQ. Associated with each custom queue is a configurable
             serving, which specifies how many bytes of data should be delivered from the current queue by 
             the system before the system moves on to the next queue. When a particular queue is being 
             processed, packets are sent until the number of bytes sent exceeds the queue serving or until
             the queue is empty.
             If the specified custom list is applied to an interface the Custom Queuing strategy
             is applied on this interface. Only one list can be assigned per interface. 
             This table is about the CQ configuration infomation."                       >"CQ configuration infomation
             Command:qos cq cql"                       �"The index of table, which is the index of interface applying Custom Queuing strategy. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of ifIndex."                       T"The number of CQL applied to an interface identified by the value of qosCQIfIndex."                       �"The description of the interface by the value of qosCQIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       L"0:Only for get.
             1:Set the default queuing on interface: FIFO"                       �"CQ(Custom Queuing) statistics table
             This table is about the running infomation of CQ applied on interface for congestion management."                       F"CQ running infomation
             Command:display qos cq interface"                       �"The index of the table, which is the index of interface applying Custom Queuing strategy. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of ifIndex."                       :"The index of the table, which is the custom queue number"                       �"The description of the interface by the value of qosCQRunInfoIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       e"The count of packets enqueued the spceified custom queue when congestion occoured in the interface."                       �"The count of discarded packets which can't be enqueued the specified custom queue 
             because the custom queue is full."                       k"The maximum length of the specified queue.
             The default value of maximum queue length is 20."                      �"WFQ(Weighted Fair Queuing) table
             WFQ is a kind of queuing strategy applied on interface for congestion management.
             With WFQ, packets are classified by flow. For example, packets with the same source IP address,
             destination IP address, source TCP or UDP port, destination TCP or UDP port, and protocol 
             belong to the same flow.
             When enabled for an interface, WFQ provides traffic priority management that automatically sorts
             among individual traffic flows without requiring first defined match rule lists.
             This table is about the WFQ configuration and running infomation."                       �"WFQ configuration and running infomation
             Command:qos wfq [ queue-length max-queue-length [ queue-number  total-queue-number ] ]
                     display qos wfq interface"                       �"The index of the table, which is the index of interface applying Weighted Fair Queuing strategy. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of ifIndex."                       �"The description of the interface by the value of qosWFQIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       ""The maximum length of the queue."                       ="The total number of queues. The default value is a256(256)."                       Y"The count of packets enqueued all the queues when congestion occoured in the interface."                       p"The count of discarded packets which can't be enqueued all the queues
             because the queue is full."                       �"A queue becomes active when the queue is not empty.
             The count of current active queues when WFQ was enabled in the interface."                       �"The maximum count of active queues.
             It is the count of active queues that have occurred since WFQ was enabled in the interface."                       L"0:Only for get.
             1:Set the default queuing on interface: FIFO"                      f"WRED(Weighted Random Early Detect) table.
             WRED is a congestion avoidance mechanism that slows traffic by randomly dropping packets when
             congestion exists. WRED can be enabled only when Weighted Fair Queuing strategy was enable on 
             the interface.
             This table is about the WRED configuration infomation."                       y"WRED configuration infomation
             Command:qos wred
                     qos wred weighting-constant exponent"                       �"The index of the table, which is the index of interface applying Weighted Random Early Detection. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of qosWFQIfIndex."                       �"The description of the interface by the value of qosWREDIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       k"Weighted factor in formula for calculating the mean length of queue. From 1 to 16, the default value is 9"                       r"0: Disable WRED feature. Recover to tail-drop.
             1: Enable WRED feature for the specified interface."                       Q"0:Only for get.
             1:Recover the default value of weighted factor: 9"                      "WRED(Weighted Random Early Detect) precedence table.
             Weighted Random Early Detection(WRED) parameters for a particular IP Precedence
             can be configured.
             This table is about the WRED precedence configuration and running infomation."                       �"WRED precedence configuration infomation
             Command:qos wred ip-precedence ip-precedence low-limit low-limit high-limit  high-limit discard-probability   discard-prob"                       �"The index of the table, which is the index of interface applying Weighted Random Early Detection. 
             The interface identified by the value of this index is the same interface 
             as identified by the same value of qosWREDIfIndex."                       "IP precedence, from 0 to 7"                       �"The description of the interface by the value of qosWREDPreIfIndex.
             It's a textual string containing information about the interface type and the interface number."                       �"Low Limit in number of packets. When the average queue length reaches the
             low limit, WRED randomly drops some packets with the specified IP Precedence.
             For all precedences, the default value is 10."                       �"High limit in number of packets. When the average queue length exceeds the 
             high limit, WRED drops all packets with the specified IP Precedence.
             For all precedences, the default value is 30."                      a"Discard probability denominator.
             It is for the fraction of packets dropped when the average queue depth is at the high limit.
             For example, if the denominator is 128, 1 out of every 128 packets is dropped when the 
             average queue is at the high limit.
             For all precedences, the default value is 10."                       +"Number of packets random-dropped for WRED"                       )"Number of packets tail-dropped for WRED"                       �"0:Only for get.
             1:Recover the default value of low-limit,high-limit and discard-probability on relevant precedence."                       ("CARL(Committed Access Rate List) table"                       {"CARL configuration infomation
             Command:qos carl carl-index { precedence precedence-value | mac mac-address }"                       7"The index of the CARL table, which is the CARL number"                      )"The matching type of the CARL. The types are as follows:
             Mac-address(1) -- matching the MAC address of the ethernet frame.
             prec-mask(2) -- matching the IP precedence of the IP packet.
             dscp-mask(3) -- matching the IP DSCP of the IP packet.
             "                      �"The parameter value of CARL.
             When CarlParaType=mac-address(1), this value is the MAC address 
             with the format HHHHHH(hex). 
             When CarlParaType=prec-mask(2), this value is the IP precedence mask.
             The value range is 0x00000000 ~ 0x11111111. The bit is corresponding 
             to IP precedence.
             For example, in value 0x00100010, the bit 0 and bit 5 is set, that means
             IP precedenc 1 and 5."                       :"0:Only for get.
            1:Delete the specified CARL"                       ""CAR(Committed Access Rate) table"                      "CAR configuration and running infomation.
             Command:qos car { inbound | outbound } { any | acl  acl-index | carl carl-index } cir committed-rate cbs burst-size ebs excess-burst-size conform action exceed action
                     display qos car interface"                       s"One of the index of the CAR table. This is the index of the interface 
             on which CAR policy applied."                       #"The description of the interface."                       �"One of the index of the CAR table. This is the direction of traffic.
             There are two directions: inbound(1) and outbound(2)  "                      �"One of the index of the CAR table. This is the matching type 
             for the traffic. 
             The value acl(1) means that the traffic matching the 
             configured ACL is applicable to the CAR policy.
             The value carl(2) means that the traffic matching the 
             configured CARL is applicable to the CAR policy.            
             The value all(3) means that all the traffic passing the interface
             is applicable to the CAR policy."                      ""One of the index of the CAR table. This is the ACL number or CARL number. 
             When CARType=1,this number is ACL number, the range is 2000..3999;
             When CARType=2,this number is CARL number, the range is 1..199;
             When CARType=3,this parameter is invalid"                       �"One of the index of the CAR table. The Committed Information Rate.
             Unit: bps. This is the target rate which the CAR policy limits. "                       �"One of the index of the CAR table. Burst traffic size. Unit: bit. 
             This is the amount of traffic in excess of the committed information 
             rate that will be permitted by the CAR policy."                       �"One of the index of the CAR table. Excess Burst Size. Unit: bit. 
             This is the amount of traffic in excess of the burst size, 
             which may be conditionally permitted by the CAR policy."                      �"Action to be taken by the traffic, when the traffic  
             conforms CIR. There are the following actions:
             Continue(1) -- Continue to be processed by the following 
                            CAR policy which applied on the interface.
             Discard(2) -- Discard the packet.
             remark-prec-continue(3) -- Remark the IP precedence of IP packet,
                                        and then continue to be processed by 
                                        the following CAR policy.
             remark-prec-pass(4) -- Remark the IP precedence of IP packet,
                                    and then send the packet.
             pass(5) -- Send the packet directly.                            
             remark-mplsexp-continue(6) -- Remark the mpls exp field of mpls packet,
                                           and then continue to be processed by 
                                           the following CAR policy.
             remark-mplsexp-pass(7) -- Remark the mpls exp field of mpls packet,
                                       and then send the packet.
             "                      �"Action to be taken by the traffic, when the traffic is 
             exceeds the CIR. There are the following actions:
             Continue(1) -- Continue to be processed by the following 
                            CAR policy which applied on the interface.
             Discard(2) -- Discard the packet.
             remark-prec-continue(3) -- Remark the IP precedence of IP packet,
                                        and then continue to be processed by 
                                        the following CAR policy.
             remark-prec-pass(4) -- Remark the IP precedence of IP packet,
                                    and then send the packet.
             pass(5) -- Send the packet directly.                            
             remark-mplsexp-continue(6) -- Remark the mpls exp field of mpls packet,
                                           and then continue to be processed by 
                                           the following CAR policy.
             remark-mplsexp-pass(7) -- Remark the mpls exp field of mpls packet,
                                       and then send the packet.
             "                       H"Rewrite the precedence value on packets when traffic is within the CIR"                       D"Rewrite the precedence value on packets when traffic is out of CIR"                       ,"The number of packets which conformed CIR."                       +"The bytes of packets which conformed CIR."                       +"The number of packets which exceeded CIR."                       *"the bytes of packets which exceeded CIR."                       Q"0:Only for get.
             1:Cancel the CAR policy applied on the interface."                       $"GTS(Generic Traffic Shaping) table"                       �"GTS configuration and running information
             Command:qos gts { any | acl acl-index } cir committed-rate [ cbs burst-size [ ebs excess-burst-size [ queue-length queue-length ] ] ]
                     display qos gts interface"                       s"One of the index of the GTS table. This is the index of the interface 
             on which GTS policy applied."                       ?"The description of the interface on which GTS policy applied."                      `"One of the index of the GTS table. This is the matching type 
             for the traffic. 
             The value acl(1) means that the traffic matching the 
             configured ACL is applicable to the GTS policy.
             The value all(2) means that all the traffic passing the interface
             is applicable to the GTS policy."                       m"One of the index of the GTS table. This is the ACL number 
             for the shaping traffic to match. "                       ~"The Committed Information Rate. This is the target sustained 
             rate which the GTS policy will shape. Unit: bps."                       �"Burst traffic size. Unit: bit. This is the amount of traffic 
             in excess of the committed information rate that will be permitted 
             by the GTS policy."                       �"Excess Burst Size. Unit: bit. This is the amount of traffic 
             in excess of the burst size, which may be conditionally permitted
             by the GTS policy."                       ."The maximum queue length for the GTS buffer."                       s"The current queue length for the GTS buffer, i.e. the 
             number of packets queuing in the GTS buffer."                       7"The number of packets which passed by the GTS policy."                       6"The bytes of packets which passed by the GTS policy."                       8"The number of packets which delayed by the GTS policy."                       7"The bytes of packets which delayed by the GTS policy."                       :"The number of packets which discarded by the GTS policy."                       9"The bytes of packets which discarded by the GTS policy."                       Q"0:Only for get.
             1:Cancel the GTS policy applied on the interface."                       "LR(Line Rate) table."                       w"LR configuration and running information.
             Command:qos lr
                     display qos lr interface"                       n"The index of the LR table, which is the index of the interface 
             on which LR policy is applied."                       A"The description of the interface on which LR policy is applied."                       �"The Committed Information Rate on the physical port. This is the target sustained rate 
             which the LR policy limits. Unit: bps."                       �"Burst traffic size. Unit: bit. This is the amount of traffic 
             in excess of the committed information rate that will be permitted 
             by the LR policy."                       �"Excess Burst Size. Unit: bit. This is the amount of traffic 
             in excess of the burst size, which may be conditionally permitted
             by the LR policy."                       2"The Number of packets which passed by LR policy."                       1"The bytes of packets which passed by LR policy."                       3"The number of packets which delayed by LR policy."                       2"The bytes of packets which delayed by LR policy."                       P"0:Only for get.
             1:Cancel the LR policy applied on the interface."                       <"A table of bandwidth parameter on interface.
            "                       +"Bandwidth parameter applied on Interface."                       $"Interface Index, equal to ifIndex."                       <"Max bandwidth Value (Unit: Kbps) applied on the interface."                       O"Max reserved bandwidth as percent of the interface bandwidth (Unit: percent)."                       %"Max reserved bandwidth. Unit : Kbps"                       ""Available bandwidth. Unit : Kbps"                       m"RowStatus for qosIfBandwidthTable Table. 
            Three actions are used: active, createAndGo, destroy"                       "A table of QoS rtpq instance."                       '"Rtpq Configuration Information Entry."                       $"Interface Index, equal to ifIndex."                       d"                                
            RTP-PORT(3): start-port: 2000~65535   
            "                       P"                 
            RTP-PORT(3): end-port: 2000~65535
            "                       e"Max bandwidth Value:
            Absolute value: 8..1000000. Unit: Kbps             
            "                       ["
            Committed Burst Size: 1500..2000000. Unit: bytes             
            "                       g"RowStatus for RTPQoSIfApply Table. 
            Three actions are used: active, createAndGo, destroy"                       q"A table of Running statistics for RTP(Realtime Transport Protocol) Queue
            applied on the interface."                       :"RTP(Realtime Transport Protocol) Queue statistics entry."                       "Size of Rtpq Queue."                       ?" Max packet number of RTP(Realtime Transport Protocol) Queue."                       A"Output packet number of RTP(Realtime Transport Protocol) Queue."                       D"Discarded packet number of RTP(Realtime Transport Protocol) Queue."                                  