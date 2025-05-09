--  =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: HUAWEI-SZONE-MIB
-- Reference:   Security Zone
-- Version:     V1.0
-- History:
--  
--  V1.20 2005-05-30 Wei Rixi(22510) added mplsVpnVrfName as table index,
--              Added fields to HwSZoneInterZoneEntry and hwSZoneInterZoneCfgGroup.
--  V1.00 2003-03-18 Yang Yinzhu(28193)  initial version
-- =================================================================
                                     �"
            V1.00
            The HUAWEI-SZONE-MIB contains objects to manage the security zone for firewall product.
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- April 08, 2003 at 09:00 GMT
           C"This table contains all the security zones defined in the system."                       )"Define the parameters of security zone."                       �"
            An internal number to distinguish security zone.
            Different zone has different number.
            "                       Z"
            The name of security zone.
            Different zone has different name."                       p"
            The priority of security zone.
            Different zone has different priority.
            "                       ,"Row status, can be CreateAndGo or Destroy."                       �"
            This table define the interfaces belong to which security zone.
            An interface can only belong to one security zone."                       " "                       "The ID of security zone."                       "The index of interface."                       ,"Row status, can be CreateAndGo or Destroy."                          -"
            This table define all inter zone of system.
            The inter zone can't be create directly, 
            when a security zone is created, the related inter zones are created automatically,
            and when deleting a zone, the related inter zones are deleted.
            "                       " "                       3"The ID of first zone that compose the inter-zone."                       4"The ID of second zone that compose the inter-zone."                       >"The switch indicates whether the interzone enables firewall."                       !"Row status, can be CreateAndGo."                                   "Description."                 "Description."                                