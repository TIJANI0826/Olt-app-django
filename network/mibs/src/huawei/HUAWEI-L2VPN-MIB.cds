�-- HUAWEI-L2VPN-MIB.mib
--  ==================================================================
-- Copyright (C) 2018 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI L2VPN Management MIB
-- Reference:
-- Version:     V2.05
-- History:
--              V1.0 WangSongTao, 2009-02-26, publish 
-- ==================================================================
         d"The HUAWEI-L2VPN-MIB contains objects to
                      manage global Attributes of L2VPN."""Huawei Industrial Base
                       Bantian, Longgang
                        Shenzhen 518129
                        People's Republic of China
                        Website: http://www.huawei.com
                        Email: support@huawei.com
                      " "201803191700Z" "201803191700Z" "201507131700Z" "201503161750Z" "201406181000Z" "Add null string in the end." "Add null string in the end." ("Add L2vpnIfTable  to hwL2VpnAttribute." '"Add 1 leaf nodes to hwL2VpnAttribute." ("Add 11 leaf nodes to hwL2VpnAttribute."       -- Mar 19, 2018 at 17:00 GMT
       E"This object indicates whether enabled mpls L2vpn capability or not."                       7"This object indicates the working mode of mpls L2vpn."                       :"This object indicates the local ccc number have created."                       ;"This object indicates the remote ccc number have created."                       :"This object indicates the static vc number have created."                       7"This object indicates the ldp vc number have created."                       7"This object indicates the bgp vc number have created."                       4"This object indicates the vsi number have created."                       8"This object indicates the bgp vsi number have created."                       7"This object indicates the vsi vc number have created."                       /"This object indicates the max vpls vc number."                       C"This object indicates the vpls vc number is upper than threshold."                       4"This object indicates the class of l2vpn vc limit."                       ="This object indicates the number of MS-PWs already created."                       q"This table is the interface configuration table used by L2VPN. Users
                can read interface by it."                       0"Provides the information of a interface entry."                      |"A unique value, greater than zero, for each
               interface.  It is recommended that values are assigned
               contiguously starting from 1.  The value for each
               interface sub-layer must remain constant at least from
               one re-initialization of the entity's network
               management system to the next re-initialization."                       �"The type of interface. Additional values for ifType
             are assigned by the Internet Assigned Numbers
             Authority (IANA), through updating the syntax of the
             IANAifType textual convention."                       "Specifies the LinkType"                       P"Specifies the encapsulation of the Virtual Circuit supported by the interface."                       -"Specifies the minimum number of TDM frames."                       -"Specifies the maximum number of TDM frames."                       #"Specifies the step of TDM frames."                       /"Specifies the minimum number of JitterBuffer."                       /"Specifies the maximum number of JitterBuffer."                       %"Specifies the step of JitterBuffer."                       0"Denotes the rtp-header option is enable or not"                       +"Specifies the minimum number of IdleCode."                       +"Specifies the maximum number of IdleCode."                               Y"The compliance statement for systems supporting
                 the HUAWEI-L2VPN-MIB."                   "The L2VPN's attributes group."                 "The L2vpn's Interface group."                            