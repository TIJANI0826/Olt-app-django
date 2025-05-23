�--  =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description:
-- Reference:
-- Version:     V1.20
-- History:
-- 
--  2005-05-25, V1.20  Wei Rixi(22510), added mplsVpnVrfName as table index,
--      changed the region of ApplyZoneID(hwNatEudmZoneApplyZoneID1 and 
--      hwNatEudmZoneApplyZoneID2) from 1~16 to 0~128
--  2004-06-30, V1.10  Xin Jianfeng(37631), changed the region of NatID 
--      (hwNatEudmOutboundNatID and hwNatEudmZoneApplyNatID) to 1~128
--      changed the region of hwNatEudmOutboundPoolIndex to 0~128
--  2003-04-16, V1.00  chenruining, initial version. 
-- =================================================================
   '"
            nat type.
            "                                     Y"
            V1.00
            The NAT-EUDM mib is for Eudemon product.
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- March 18, 2003 at 09:00 GMT
           3"
            The NAT Inside Table.
            "                       9"
            The NAT Inside Table Entry.
            "                       e"
            The nat outbound table index.
            
            This is index.
            "                       -"
            The type of NAT
            "                       \"
            The access-list number.
            0 means no use this item.
            "                       c"
            The index of nat address pool.
            0 means no use this item.
            "                       B"
            The interface index used by easy-ip.
            "                       B"
            This outbound table reference count.
            "                       i"
            Row status
            
            Only support CreateAndGo and Destroy.
            "                       N"
            Table saves which nat is applyed between Zones .
            "                       0"
            Apply Table Entry.
            "                       �"
            The internal ID of first security zone
            
            This is index.
            0: Any zone.
            "                       �"
            The internal ID of second security zone.
            
            This is index.
            0: Any zone.
            "                       e"
            The nat outbound table index.
            
            This is index.
            "                       i"
            Row status
            
            Only support CreateAndGo and Destroy.
            "                               4"
            Nat Eudemon mib group.
            "                                