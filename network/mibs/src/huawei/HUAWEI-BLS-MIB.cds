B--  =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: HUAWEI BLS MIB, this mib will maintain the blacklist 
--              for datacomm product.  
-- Reference:
-- Version:     V1.20
-- History:
--  
--  V1.20 2005-05-30 Wei Rixi(22510) added mplsVpnVrfName as table index,
--                  added hwBlsFilterTypeSet and its objects
--  V1.00 2003-03-18 Yang Yinzhu(28193)  initial version
-- =================================================================
   X"
            Descript the blacklist item added by manual or by system. 
            "                                                                 _"
            V1.00
            The blacklist mib is for all datacomm product.
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- April 11, 2003 at 11:50 GMT
           p"
            The blacklist function switch.
            1: true(on)
            2: false(off)
            "                       2"
            The blacklist table.
            "                       B"
            The blacklist entry.                
            "                       d"
            The packet source IP address. 
            If match, drop the packet.
            "                       �"
            The blacklist item aging time. 
            This item will be deleted when overtime. 
            The default value is 0, no aging.
            (unit:minutes)"                       �"
            The blacklist item is added by manual or by system. 
            1: manual
            2: dynamic(system)                
            "                       �" 
            The system time when add this blacklist item.
            It's automatically appended by system when create the item.  
            (the seconds since 1970.)"                       C"
            Only support CreateAndGo and Destroy.
            "                           �"
            The blacklist filter type.
            none(0x00)
            icmp(0x01)
            tcp(0x02)
            udp(0x04)
            others(0x08)
            all(0x0F)    
            "                               "Blacklist function switch."                 "Blacklist table struct group."                                