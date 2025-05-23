�--  =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: Huawei Attack defence MIB, this MIB is for firewall and router
-- Reference:
-- Version:     V1.0
-- History:
--  
--  V1.20 2005-05-30 Wei Rixi(22510) added mplsVpnVrfName as table index,
--              Added DEFVAL to hwAtkIcmpLength, hwAtkIPSynFloodSynSpeed.
--  V1.10 2004-06-30 Xin Jianfeng(37631) altered the region of 
--              hwAtkZoneSynFloodSynSpeed, hwAtkIPSynFloodHalfMax to 0~1000000, 
--              hwAtkZoneSynFloodHalfAge to 0~65535
--  V1.00 2003-03-18 Yang Yinzhu(28193)  initial version
-- =================================================================
                                         �"
            V1.00
            The HUAWEI-ATK-MIB contains objects to
            manage the ATCKDF(Attack Defence)
            configuration for all products.
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- April 11, 2003 at 09:00 GMT
           ="The switch indicates whether inspecting IP spoofing attack."                       6"The switch indicates whether inspecting Land attack."                       7"The switch indicates whether inspecting Smurf attack."                       9"The switch indicates whether inspecting Fraggle attack."                       9"The switch indicates whether inspecting WinNuke attack."                       B"The switch indicates whether blocking ICMP re-direction packets."                       A"The switch indicates whether blocking ICMP unreachable packets."                       I"The switch indicates whether blocking packets with source route option."                       I"The switch indicates whether blocking packets with route record option."                       ;"The switch indicates whether blocking packets of tracert."                       B"The switch indicates whether inspecting the flag of TCP packets."                       ?"The switch indicates whether inspecting ping-of-death attack."                       :"The switch indicates whether inspecting teardrop attack."                       @"The switch indicates whether inspecting the flag for fragment."                       :"The switch indicates whether inspecting IP sweep attack."                       #"The maximum speed of IP sweeping."                       ?"The time to add a host to blacklist when find it is sweeping."                       ;"The switch indicates whether inspecting port scan attack."                       %"The maximum speed of port scanning."                       D"The time to add a host to blacklist when find it is scanning port."                       ;"The switch indicates whether blocking large icmp packets."                       @"The maximum length of ICMP packets allowed to pass the system."                       >"The switch indicates whether inspecting SYN flooding attack."                       >"The switch indicates whether inspecting UDP flooding attack."                       ?"The switch indicates whether inspecting ICMP flooding attack."                           A"The table define the parameters of SYN flood defence for hosts."                       " "                       )"The IP address of host to be protected."                       �"The maximum speed of SYN packets to the host.
            when the speed of SYN packets to the host reach the maximum,
            system will start the TCP proxy."                       1"The maximum incomplete connection for the host."                       ("The age of TCP incomplete connections."                       |"The switch of TCP proxy, this switch decides the action of proxy.
            The switch has three status: auto, on, off."                       ?"The status of a row, can be CreateAndGo or Destroy currently."                       A"The table define the parameters of UDP flood defence for hosts."                       " "                       )"The IP address of host to be protected."                      "
            The maximum speed of UDP packets to the host.
            when the speed of UDP packets to the host reach the maximum,
            system will drop the subsequent UDP packets to this host,
            until the speed decline to 80 percent of the maximum.
            "                       ?"The status of a row, can be CreateAndGo or Destroy currently."                       B"The table define the parameters of ICMP flood defence for hosts."                       " "                       )"The IP address of host to be protected."                      ""
            The maximum speed of ICMP packets to the host.
            when the speed of ICMP packets to the host reach the maximum,
            system will drop the subsequent ICMP packets to this host,
            until the speed decline to 80 percent of the maximum.
            "                       ?"The status of a row, can be CreateAndGo or Destroy currently."                                   "Description."                 "Description."                 "Description."                 "Description."                                