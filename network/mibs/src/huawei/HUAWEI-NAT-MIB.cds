�--  ======================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: HUAWEI-NAT-MIB
-- Reference:
-- Version:     V1.20
-- History:
-- 
--  V1.20 2005-05-30 Wei Rixi(22510) added types to SessionType, fields to 
--                  HwNatAddressGroupInfoEntry, HwNatInternalServerEntry & hwNatCfgGroup
-- =======================================================================
   "The type of session."               "Description."               "Description."                                                     Z"
            V1.00
            The NAT mib is for all datacomm product..
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- March 18, 2003 at 09:00 GMT
           ?"
            NAT address pool inforation table
            "                       F"
            NAT address pool inforation table entry.
            "                       f"
            The index of address pool
            
            This item is index.
            "                       F"
            The beginning IP address of address pool
            "                       C"
            The ending IP address of address pool
            "                       @"
            This address pool reference count.
            "                       ["
            Row status
            Only support CreateAndGo and Destroy.
            "                       5"
            VRRP ID of address pool
            "                       :"
            The VPN Name of address pool
            "                       H"
            The NAT internal server information table.
            "                       N"
            The NAT internal server information table entry.
            "                       k"
            The index of NAT server array.
            
            This item is index.
            "                       2"
            The protocal number.
            "                       L"
            The beginning local IP address of NAT servers.
            "                       I"
            The ending local IP address of NAT servers.
            "                       C"
            The local port number of NAT servers.
            "                       B"
            The global IP address of NAT server.
            "                       F"
            The global beginning port of NAT server.
            "                       C"
            The global ending port of NAT server.
            "                       ["
            Row status
            Only support CreateAndGo and Destroy.
            "                       5"
            VRRP ID of Inner Server
            "                       :"
            The VPN Name of Inner Server
            "                       ?"
            The NAT session aging time table.
            "                       E"
            The NAT session aging time table entry.
            "                       0"
            The protocal type.
            "                       B"
            aging time, tcp:240, udp:40, icmp:20
            "                       2"
            NAT ALG enable table
            "                       2"
            nat alg table entry.
            "                       4"
            The alg protocal type.
            "                       ^"
            enable or disable.
            true is enable,false is disable.
            "                               :"
            The hash count NAT with pat.
            "                       ="
            The hash count NAT with no-pat.
            "                       D"
            The hash count of NAT internal server.
            "                       A"
            The hash count of fragment packets.
            "                           N"
            The packet count of success address translation.
            "                       M"
            The packet count of failed address translation.
            "                       R"
            The TCP packet count of success address translation.
            "                       R"
            The UDP packet count of success address translation.
            "                       S"
            The ICMP packet count of success address translation.
            "                               "Description."                 "Description."                            