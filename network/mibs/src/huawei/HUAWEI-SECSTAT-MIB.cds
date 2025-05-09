�--  =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: HUAWEI-SECSTAT-MIB
-- Reference:
-- Version:     V1.0
-- History:
--  V1.20 2005-05-30 Wei Rixi(22510) added hwSecStatIcmpSessNumMax etc. fields.
--  V1.00 2003-03-18 Yang Yinzhu(28193)  initial version
-- =================================================================
                         �"
            V1.00
            The HUAWEI-SECSTAT-MIB contains objects to manage the security
            statistics for router and firewall product.
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- April 10, 2003 at 09:00 GMT
           ;"The status indicate whether enable the global statistics."                           �"
            The percent of TCP packets.
            
            The hwSecStatTcpPktScale + hwSecStatUdpPktScale + hwSecStatIcmpPktScale
            must less than 100
            "                       �"
            The percent of UDP packets.
            
            The hwSecStatTcpPktScale + hwSecStatUdpPktScale + hwSecStatIcmpPktScale
            must less than 100
            "                       �"
            The percent of ICMP packets.
            
            The hwSecStatTcpPktScale + hwSecStatUdpPktScale + hwSecStatIcmpPktScale
            must less than 100
            "                       0"The proportion of change in the packets scale."                       <"The period of packet scale statistics, the unit is minute."                       �"
            This OID is used for setting the packet scale configuration to default.
            When you want to set the value to default, set this OID to 1.
            "                           ,"The maximun number of TCP session allowed."                      \"
            The minimum of TCP session.
            when the number of TCP session in one system arrive the maximum allowed,
            system would decrease the TCP session by some method, 
            once the number of tcp session in one system arrive the minumim,
            system would stop decreasing the TCP session.
            "                       ,"The maximun number of UDP session allowed."                      \"
            The minimum of UDP session.
            when the number of UDP session in one system arrive the maximum allowed,
            system would decrease the UDP session by some method, 
            once the number of tcp session in one system arrive the minumim,
            system would stop decreasing the UDP session.
            "                       �"
            This OID is used for setting the global session number configuration to default.
            When you want to set the value to default, set this OID to 1.
            "                       -"The maximun number of ICMP session allowed."                      I"
        The minimum of ICMP session.
        when the number of ICMP session in one system arrive the maximum allowed,
        system would decrease the ICMP session by some method, 
        once the number of ICMP session in one system arrive the minumim,
        system would stop decreasing the ICMP session.
        "                       1"The maximun number of TcpProxy session allowed."                      ]"
        The minimum of TcpProxy session.
        when the number of TcpProxy session in one system arrive the maximum allowed,
        system would decrease the TcpProxy session by some method, 
        once the number of TcpProxy session in one system arrive the minumim,
        system would stop decreasing the TcpProxy session.
        "                               ~"
            The total number of connection since device startup.
            This number is increased only.
            "                       A"The maximun speed of session establishing since device startup."                       ,"The current speed of session establishing."                       ,"The total session in the system currently."                       7"The number of incomplete session in system currently."                       %"The current number of TCP sessions."                       %"The current number of UDP sessions."                       &"The current number of ICMP sessions."                       !"The total number of server map."                       ("The number of entry in fragment table."                       6"The total number of ICMP packets received by system."                       5"The total bytes of ICMP packets received by system."                       5"The total number of TCP packets received by system."                       4"The total bytes of TCP packets received by system."                       5"The total number of UDP packets received by system."                       4"The total bytes of UDP packets received by system."                       <"The total number of other type packets received by system."                       ;"The total bytes of other type packets received by system."                       3"The total number of ICMP packets pass the system."                       2"The total bytes of ICMP packets pass the system."                       2"The total number of TCP packets pass the system."                       1"The total bytes of TCP packets pass the system."                       2"The total number of UDP packets pass the system."                       1"The total bytes of UDP packets pass the system."                       9"The total number of other type packets pass the system."                       8"The total bytes of other type packets pass the system."                       6"The total number of SYN packets arriving the system."                       6"The total number of FIN packets arriving the system."                       :"The total number of SYN-ACK packets arriving the system."                       8"The total number of RESET packets arriving the system."                       ;"The total number of fragment packets arriving the system."                       :"The total bytes of fragment packets arriving the system."                       /"The number of received packets by the device."                       -"The number of received bytes by the device."                       �"
            Use this OID to clear the global session flow statistics information.
            When you want to clear the information, set this OID to 1.
            "                           ;"The total number of FTP sessions in the system currently."                       5"The total number of FTP packets received by system."                       4"The total bytes of FTP packets received by system."                       <"The total number of SMTP sessions in the system currently."                       6"The total number of SMTP packets received by system."                       5"The total bytes of SMTP packets received by system."                       <"The total number of HTTP sessions in the system currently."                       6"The total number of HTTP packets received by system."                       5"The total bytes of HTTP packets received by system."                       <"The total number of H323 sessions in the system currently."                       6"The total number of H323 packets received by system."                       5"The total bytes of H323 packets received by system."                       <"The total number of RTSP sessions in the system currently."                       6"The total number of RTSP packets received by system."                       5"The total bytes of RTSP packets received by system."                       /"The number of JAVA attack detected by system."                       �"
            Use this OID to clear the global application statistics information.
            When you want to clear the information, set this OID to 1.
            "                           5"The total number of packets dropped for no session."                       4"The total bytes of packets dropped for no session."                       @"The total number of packets dropped for sequence number error."                       ?"The total bytes of packets dropped for sequence number error."                       ;"The total number of non ICMP packets denied for acl rule."                       :"The total bytes of non ICMP packets denied for acl rule."                       6"The total number of ICMP packets denied by acl rule."                       5"The total bytes of ICMP packets denied by acl rule."                       2"The total number of packets denied by blacklist."                       1"The total bytes of packets denied by blacklist."                       ?"The total number of packets dropped due to ICMP Flood attack."                       >"The total bytes of packets dropped due to ICMP Flood attack."                       >"The total number of packets dropped due to UDP Flood attack."                       ="The total bytes of packets dropped due to UDP Flood attack."                       C"The total number of packets dropped by application layer gateway."                       B"The total bytes of packets dropped by application layer gateway."                       ;"The total number of packets dropped for IP version error."                       4"The total number of packets dropped for CRC error."                       4"The total number of packets dropped for TTL error."                       9"The total number of packets dropped for protocol error."                       �"
            Use this OID to clear the global dropped packets statistics information.
            When you want to clear the information, set this OID to 1.
            "                                   "Description."                 "Description."                            