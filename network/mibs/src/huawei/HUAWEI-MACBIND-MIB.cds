--  =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: HUAWEI MACBIND MIB, this mib will maintain the 
--              MAC-IP address bind mib oid for all datacomm product.
-- Reference:
-- Version:     V1.20
-- History:
--  
--  V1.20 2005-05-30 Wei Rixi(22510) added mplsVpnVrfName as table index,
--  V1.00 2003-03-18 Yang Yinzhu(28193)  initial version
-- =================================================================
                                                     w"
            V1.00
            The MAC-IP address bind mib is for all datacomm product.
            
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- April 11, 2003 at 09:00 GMT
           z"
            The MAC-IP address bind function switch.
            1: true(on)
            2: false(off)
            "                       <"
            The MAC-IP address bind table.
            "                       C"
            The MAC-IP address bind table struct.
            "                       J"
            IP address.
            
            This item is index."                       *"
            MAC address.
            "                       C"
            Only support CreateAndGo and Destroy.
            "                               "Description."                 "Description."                                