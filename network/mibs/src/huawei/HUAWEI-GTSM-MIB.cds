�-- =================================================================
-- Copyright (C) 2006 by HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: This MIB defines all the objects that manage GTSM policies,
--                containing getting or creating GTSM policies, computing
--                the number of the packets, and resetting statistics.
-- Reference: rfc4001
-- Version: V1.00
-- History:
-- 
-- =================================================================
                    �"The HUAWEI-GTSM-MIB contains all the objects 
                that manages GTSM, it mainly contains the following five parts.    
                1) Default action that is used to deal with 
                the received packets when no GTSM policy matches.
                2) Policy table that is used to get or set 
                the GTSM policy.
                3) BGP peer group table that is used to get 
                or set the GTSM policy for BGP peer group.
                4) Statistics table that is used to compute 
                the number of the packets containing
                received packets, passing packets and 
                dropped packets.
                5) Global configuration clear statistics 
                table that is used to clear all statistics.        
                The table can be used any time when users want to initialize 
                the counter.""VRP Team Huawei Technologies co.,Ltd. 
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei.com
                Zip:100085
                " "200609051938Z" *"The initial revision of this MIB module."                   Z"The object specifies the default action when
                no matching policy exists."                       �"Information about GTSM policies. This object is used 
                to get GTSM policy(policies), create a new policy, modify 
                or delete GTSM policy (policies)."                       �"Information about GTSM policies,it used 
                to get gtsm policy(policies),to create a 
                new policy,to modify or to delete gtsm 
                policy(policies)."                       B"The index of VPN Routing and Forwarding 
                table."                       ["The type of Internet address by where the 
                packets received and will go."                       "The number of protocol."                       �"Source IP address in the GTSM policy that 
                will be used to    check the matching of source 
                IP address in the received packets."                       �"Destination IP address in the GTSM policy 
                that will be used to check the matching of 
                destination IP address in the received packets."                       �"Source port number in the GTSM policy 
                that will be used to check the matching 
                of source port number in the received packets."                       �"Destination port number in the GTSM policy 
                that will be used to check the matching of 
                destination port number in the received packets."                      ("The minimum TTL in the policy table. The minimum 
                TTL is compared with the TTL in the packets to check 
                whether the minimum TTL is between the minimum TTL 
                and maximum TTL, and thus check the validity of the 
                received packets."                       �"The maximum TTL in policy table that is 
                compared with the TTL in the packets to check whether 
                it is between the minimum TTL and maximum TTL 
                ,and thus check the validity of the received packets."                       !"The operating state of the row."                       m"The table of BGP peer group policies. The table contains 
                all the BGP peer group policies."                       �"Information about BGP peer group policies. This table is used 
                to get BGP peer group policy (policies), create a policy, modify
                or delete BGP peer group policy (policies)."                       �"Peer group name in the BGP policy table that is compared with 
                the peer group name to decide whether to apply this policy."                       �"The minimum TTL in policy table that is compared with the TTL
                 in the packets to check whether it is between the minimum TTL 
                 and maximum TTL, and thus check the validity of the received packets."                       �"The maximum TTL in policy table that is compared with the TTL
                 in the packets to check whether it is between the minimum TTL 
                 and maximum TTL, and check the validity of the received packets."                       !"The operating state of the row."                       �"The table of GTSM Statistics table. The table contains 
                the number of the packets containing received 
                packets, passed packets and discarded packets."                       K"The information of GTSM Statistics,it only can 
                be read."                       /"The Index of Slot which receives the packets."                       J"The total number of received packets of specific 
                slot."                       �"The total number of packets that have been transferred 
                to the up layer    after packets of specific slot are received."                       �"The total number of packets that do not match 
                the specific GTSM policy when packets of specific 
                slot are received."                       �"The table of GTSM global configuration table. The table
                contains all information you have operated to the statistics table."                       �"The information of GTSM global configuration table.The table
                 is used to clear all statistics, you can use this table any 
                 time when you want to initialize the counter."                       ^"It is used to clear the statistics of the GTSM global 
                configuration table."                       :"It is used to decide whether to log the dropped packets."                       �"The table of GTSM Statistics Information. The table contains 
                the number of the packets containing received 
                packets, passed packets and discarded packets."                       K"The information of GTSM Statistics,it only can 
                be read."                       /"The Index of Slot which receives the packets."                       J"The total number of received packets of specific 
                slot."                       �"The total number of packets that have been transferred 
                to the up layer    after packets of specific slot are received."                       �"The total number of packets that do not match 
                the specific GTSM policy when packets of specific 
                slot are received."                       �"The table of GTSM global configuration table. The table
                contains all information you have operated to the statistics table."                       �"The information of GTSM global configuration table.The table
                 is used to clear all statistics, you can use this table any 
                 time when you want to initialize the counter."                       ^"It is used to clear the statistics of the GTSM global 
                configuration table."                       :"It is used to decide whether to log the dropped packets."                               L"The compliance statement for systems supporting 
            this module."                   "The default action group."                 "The GTSM policy group."                 "The GTSM BGP peer group."                 "The GTSM statistics group."                 &"The GTSM global configuration group."                 "The GTSM statistics group."                 &"The GTSM global configuration group."                            