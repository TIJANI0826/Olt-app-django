5-- ==================================================================
-- Copyright (C) 2017 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI VLL Management Statistic and PW Performance Statistic MIB
-- Reference:
-- Version:     V2.02
-- Revision history:
--     REVISION "201308301452Z"
--     DESCRIPTION "V1.11, add hwVllStatisticInputPackets,hwVllStatisticInputBytes,hwVllStatisticInputPacketsRate,hwVllStatisticInputBytesRate for VLL PW NO Qos statistics."
--     REVISION "201106010000Z"
--     DESCRIPTION "V1.10,add hwPWATMPerfCurrentTable and hwPWTDMPerfCurrentTable for ATM TDM PW performance statistics." 
--
--     REVISION "200902130000Z"
--     DESCRIPTION "V1.0, HouChengjie, 2009-02-13, publish"
-- ==================================================================
                         ["The HUAWEI-VLL-STATISTIC-MIB contains objects to
                manage VLL's statistic.""Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com
                 " "201708170145Z" "201308301452Z" "mod dispcription." �"add hwVllStatisticInputPackets,hwVllStatisticInputBytes,hwVllStatisticInputPacketsRate,hwVllStatisticInputBytesRate for VLL PW NO Qos statistics"       --Aug 17,2017 at 14:52 GMT
           J"This table contains the VLL's traffic statistic, based on the interface."                       :"Provides the information of the VLL's traffic statistic."                       ,"This object indicates the interface index."                       '"This object indicates the type of PW."                       m"This object indicates the enable sign of VLL's traffic statistics,
                based on the interface."                       "reset the traffic statistic."                       "Last time of clean out."                       "The packets sent on the PW."                       "The bytes sent on the PW."                       !"The packet rate sent on the PW."                       "The byte rate sent on the PW."                       -"The number of packets received over the PW."                       +"The number of bytes received over the PW."                       ,"The rate of receiving packets over the PW."                       *"The rate of receiving bytes over the PW."                       1"This table displays VLL QoS traffic statistics."                       :"Provides the information of the VLL's traffic statistic."                       ,"This object indicates the interface index."                       '"This object indicates the type of PW."                       j"This object indicates the queue's ID. The value must be 
                be,af1,af2,af3,af4,ef,cs6,cs7."                       3"Number of passed packets, based on the interface."                       1"Number of passed bytes, based on the interface."                       6"Number of discarded packets, based on the interface."                       4"Number of discarded bytes, based on the interface."                       T"Rate of passed packets for the past 300 seconds, based on the interface. Unit: pps"                       R"Rate of passed bytes for the past 300 seconds, based on the interface. Unit: bps"                       W"Rate of discarded packets for the past 300 seconds, based on the interface. Unit: pps"                       U"Rate of discarded bytes for the past 300 seconds, based on the interface. Unit: bps"                       �"This table provides per ATM PW performance information. The contents of this
          table entry are reset to zero and gotten new information every 15 minutes."                       H"An entry in this table is created by the agent for every ATM PW entry."                       ,"This object indicates the interface index."                       i"This object indicates the enable sign of ATM PW's performance,
                based on the interface."                       A"The value of this object identifies the number of lost packets."                       V"Number of packets detected out of order (via control word
       sequence numbers)."                       "Number of transmitted cells."                       "Number of received cells."                       y"Number of cells received from the PSN with unknown VPI or
      VCI values.  This object is relevant only in N:1 mode."                       �"This table provides per TDM PW performance information. The contents of this
          table entry are reset to zero and gotten new information every 15 minutes."                       H"An entry in this table is created by the agent for every TDM PW entry."                       ]"Index of the interface (or the virtual interface) 
                associated with the PW."                       i"This object indicates the enable sign of TDM PW's performance,
                based on the interface."                       a"Number of missing packets (as detected via control word
                sequence number gaps)."                       0"Number of times the jitter buffer was overrun."                       c"Number of times a packet needed to be played
               out and the jitter buffer was empty."                       �"Number of packets detected out of order (via control word
                sequence numbers) that could not be re-ordered or could
                not fit in the jitter buffer."                       Y"Number of packets detected with unexpected size or
                bad headers' stack."                       �"The value of this object identifies the accumulated number of seconds in which error bits exist. That is, the time during which the TDM-encapsulated PW drops packets or receives error packets, including disordered packets and malformed packets."                       i"The value of this object identifies the accumulated number of seconds in which severe error bits exist."                      ^"The value of this object identifies the number of seconds in which the TDM-encapsulated PW is unavailable. If the number of severe error bits exist in the TDM-encapsulated PW for more than 10 seconds, the TDM-encapsulated PW is considered unavailable. Counting of the number of unavailable seconds starts from the time when severe error bits occur."                       <"The number of misconnected packets during the check period"                                   a"The compliance statement for systems supporting 
                the HUAWEI-VLL-STATISTIC-MIB."                   "The VLL's statistic group."                  "The VLL's QoS statistic group."                            