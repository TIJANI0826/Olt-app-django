T--  =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description:HUAWEI-BRAS-L2TP-MIB
-- Reference:
-- Version: V1.0
-- History:
--          1.Add  trap node 
--       
-- =================================================================
                                     *"The MIB contains objects of module L2TP." �"Floor 5, Block 4, R&D Building,
                Huawei Longgang Production Base,
                Shenzhen,   P.R.C.
                http://www.huawei.com
                Zip:518057
                "        -- March 03, 2004 at 09:00 GMT
               K"
                The switch of startup L2TP funcition.
                "                       F"
                Clear tunnel by local tunnel ID.
                "                       I"
                Clear tunnel by remote tunnel name.
                "                       F"
                Clear tunnel by tunnel board ID.
                "                       A"
                The aging time of LNS down.
                "                       E"
                The config table of L2TP group.
                "                       "An entry in this table."                       4"
                L2TP group ID.
                "                       J"
                The switch of tunnel authentication.
                "                       ?"
                The switch of AVP hidden.
                "                       C"
                The switch of LNS Load Share.
                "                       F"
                Configure the local tunnel name.
                "                       T"
                The retransmit times of tunnel control packet.
                "                       W"
                The retransmit interval of tunnel control packet.
                "                       r"
                The keepalive interval of tunnel,and the value of zero is closing keepalive.
                "                       L"
                The password of tunnel authentication.
                "                       5"
                LNS IP address.
                "                       I"
                The weight value of LNS Load Share.
                "                       5"
                LNS IP address.
                "                       I"
                The weight value of LNS Load Share.
                "                       5"
                LNS IP address.
                "                       I"
                The weight value of LNS Load Share.
                "                       5"
                LNS IP address.
                "                       I"
                The weight value of LNS Load Share.
                "                       5"
                LNS IP address.
                "                       I"
                The weight value of LNS Load Share.
                "                       B"
                 Row status.                
                "                       @"
                Configure L2TP group name.
                "                       Q"
                The switch of tunnel radius authentication.
                "                       A"
                The aging time of LNS down.
                "                       L"
                Configure acceptable peer tunnel name.
                "                       R"
                The switch of mandatory CHAP authentication.
                "                       N"
                The switch of mandatory LCP negotiation.
                "                       I"
                The virtual template by L2TP group.
                "                       N"
                The switch of tunnel aaa authentication.
                "                       f"
                The interval of clear tunnel when there are not users in tunnel.
                "                       L"
                Configure the first Ip address of LNS.
                "                       M"
                Configure the second Ip address of LNS.
                "                       L"
                Configure the third Ip address of LNS.
                "                       M"
                Configure the fourth Ip address of LNS.
                "                       L"
                Configure the fifth Ip address of LNS.
                "                       ="
                The type of L2TP group.
                "                       5"
                LNS IP address.
                "                       I"
                The weight value of LNS Load Share.
                "                       5"
                LNS IP address.
                "                       I"
                The weight value of LNS Load Share.
                "                       5"
                LNS IP address.
                "                       I"
                The weight value of LNS Load Share.
                "                       :"
                The switch of avp46.
                "                       O"
                Configure the default domain name of LNS.
                "                       p"
                The tunnel authentication password for the first ip address of LNS in LAC.
                "                       q"
                The tunnel authentication password for the second ip address of LNS in LAC.
                "                       p"
                The tunnel authentication password for the third ip address of LNS in LAC.
                "                       q"
                The tunnel authentication password for the fourth ip address of LNS in LAC.
                "                       p"
                The tunnel authentication password for the fifth ip address of LNS in LAC.
                "                       p"
                The tunnel authentication password for the sixth ip address of LNS in LAC.
                "                       r"
                The tunnel authentication password for the seventh ip address of LNS in LAC.
                "                       q"
                The tunnel authentication password for the eighth ip address of LNS in LAC.
                "                       Z"
                The authentication mode of the domain of L2TP group.
                "                       E"
                Description of this L2TP group.
                "                       `"
                The switch of tunnel alram when status of tunnel changed. 
                "                       T"
                The name of Qos Profile inbound of the tunnel.
                "                       U"
                The name of Qos Profile outbound of the tunnel.
                "                       I"
                The mode of Qos for the L2TP group.
                "                       D"
                The config table of lns group.
                "                       "An entry in this table."                       5"
                Lns group name.
                "                       L"
                The Loopback name binded by lns group.
                "                       I"
                The current number of tunnel board.
                "                       V" 
                The number of tunnel board binded by Lns Group.
                "                       A"    
                Row status.            
                "                       F"
                The loopback table of LNS group.
                "                       "An entry in this table."                       L"
                The ID of loopback bound by lns group.
                "                       K"
                The Loopback name bound by lns group.
                "                       A"    
                Row status.            
                "                               6"
                Local Tunnel ID.
                "                       /"
                Peer Name
                "                       5"
                Peer IP address
                "                       J"
                The status of L2tp tunnel : Up/Down.
                "                              	"
                1 Notice/Trap name: L2tp Tunnel is Up Or Down.
                2 Notice/Trap generation cause: L2tp tunnel is up or down.
                3 Repair suggestions: If the tunnel is down, please check out whether there is a error.
                "                         T"The compliance statement for systems supporting 
                the this module."                   "The L2TP configuration."                 "The L2TP group configuration."                 "The LNS group configuration."                 "The L2TP Trap Oid."                 "The L2TP obsolete node."                 "The L2TP Traps."                     ?"The source loopback configuration of LNS group configuration."                            