i--  =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: HUAWEI-SECSTAT-IP-MONITOR-MIB
-- Reference:
-- Version:     V1.0
-- History:
--              yangyinzhu,2003-03-18,<contents>
-- =================================================================
         �"
            V1.00
            The HUAWEI-SECSTAT-IP-MONITOR-MIB contains objects to monitor the
            statistics information for the hosts.
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- April 10, 2003 at 09:00 GMT
           �"
            This OID is used for clearing the statistics information of All IP.
            When you want to clear the information, set this OID to 1.
            "                       4"The statistic information of packets to the hosts."                       4"The statistic information of packets to the hosts."                       "The IP address of host."                       )"The number of TCP session to this host."                       )"The number of UDP session to this host."                       *"The number of ICMP session to this host."                       %"The number of session to this host."                       0"The number of incomplete session to this host."                       5"The establishing speed of TCP session to this host."                       5"The establishing speed of UDP session to this host."                       6"The establishing speed of ICMP session to this host."                       1"The establishing speed of session to this host."                       @"The establishing speed of TCP incomplete session to this host."                       >"The total number of dropped ICMP packets to this host by ACL"                       ="The total bytes of dropped ICMP packets to this host by ACL"                       B"The total number of dropped non ICMP packets to this host by ACL"                       A"The total bytes of dropped non ICMP packets to this host by ACL"                       @"The total number of dropped packets to this host by blacklist."                       B"The total number of dropped packets to this host by default ACL."                       G"The total number of dropped ICMP packets to this host by default ACL."                       I"The total number of dropped packets to this host for ICMP Flood attack."                       H"The total number of dropped packets to this host for UDP Flood attack."                       /"The total number of FTP packets to this host."                       0"The total number of SMTP packets to this host."                       0"The total number of HTTP packets to this host."                       0"The total number of H323 packets to this host."                       0"The total number of RTSP packets to this host."                       "Description."                       6"The statistic information of packets from the hosts."                       6"The statistic information of packets from the hosts."                       "The IP address of host."                       +"The number of TCP session from this host."                       +"The number of UDP session from this host."                       ,"The number of ICMP session from this host."                       '"The number of session from this host."                       2"The number of incomplete session from this host."                       7"The establishing speed of TCP session from this host."                       7"The establishing speed of UDP session from this host."                       8"The establishing speed of ICMP session from this host."                       3"The establishing speed of session from this host."                       B"The establishing speed of TCP incomplete session from this host."                       @"The total number of dropped ICMP packets from this host by ACL"                       ?"The total bytes of dropped ICMP packets from this host by ACL"                       D"The total number of dropped non ICMP packets from this host by ACL"                       C"The total bytes of dropped non ICMP packets from this host by ACL"                       B"The total number of dropped packets from this host by blacklist."                       D"The total number of dropped packets from this host by default ACL."                       I"The total number of dropped ICMP packets from this host by default ACL."                       +"The number of FTP packets from this host."                       ,"The number of SMTP packets from this host."                       ,"The number of HTTP packets from this host."                       ,"The number of H323 packets from this host."                       ,"The number of RTSP packets from this host."                       �"
            This OID is used for clearing the statistics information of this IP.
            When you want to clear the information of this IP, set this OID to 1.
            "                                   "Description."                            