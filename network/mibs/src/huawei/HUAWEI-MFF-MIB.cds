Y-- =================================================================
-- Copyright (C) 2016 by HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description:HUAWEI MFF(MAC-FORCED-FORWARDING) MIB
-- Reference:
-- Version: V1.01
-- History:
--    V1.0 2008-07-02, publish
-- =================================================================
                                     �"This MIB describes objects used for Mff,including
        configuring mff,cofiguring network port and server's IP address, collecting
        user and gateway information. " �"Huawei Industrial Base
          Bantian, Longgang
          Shenzhen 518129
          People's Republic of China
          Website: http://www.huawei.com
          Email: support@huawei.com
         " "201605191030Z" "200807021800Z" /"Add  new mib node hwMffGatewayDetectInterval." *"The initial revision of this MIB module."       -- May 19, 2016 at 10:30 GMT
           H"The global mff. Enable this before you want to enable vlan, port mff. "                       #"The mff vlan configuration table."                       /"An entry in the mff vlan configuration table."                       9"The VLAN-ID or other identifier referring to this VLAN."                       O"Whether to enable static mff on this vlan and configure gateway IP address . "                       @"Whether to enable gateway MAC address detection on this vlan. "                       M"Whether to modify the gateway MAC address detection interval on this vlan. "                       5"The row status of the mff vlan configuration table."                       #"The mff port configuration table."                       /"An entry in the mff port configuration table."                       "The port index."                       5"The row status of the mff port configuration table."                       ("The mff server IP configuration table."                       4"An entry in the mff server IP configuration table."                       9"The VLAN-ID or other identifier referring to this VLAN."                       "Index: IP."                       :"The row status of the mff server IP configuration table."                       $" The mff users and gateways table."                       /"An entry in the mff users and gateways table."                       :" The VLAN-ID or other identifier referring to this VLAN."                       "Index: user's IP."                       "Index: gateway's IP."                       "User's MAC address."                       "Gateway's MAC address."                       +" Modify the mff users and gateways table."                       6"An entry to modify the mff users and gateways table."                       9"The VLAN-ID or other identifier referring to this VLAN."                       "Index: user's IP."                       "User's MAC address."                       "The user's port index."                       "Index: gateway's IP."                       "Gateway's MAC address."                       <"The row status of modify the mff users and gateways table."                               H"The compliance statement for systems supporting 
        this module."                   %"The MFF global configuration group."                 #"The MFF vlan configuration group."                 "The MFF network-port group."                 &"The MFF servers configuration group."                 !"The MFF user and gateway group."                 "The MFF user modify group."                            