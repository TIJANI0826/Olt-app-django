�--     =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: This mib file is used for management of huawei userlog
--              information. 
-- Reference:
-- Version:     V1.1
-- History:
--              tianli,2003.3.31,publish 
--              Zhang Peng,2004.5.19,Reunification version based on V1.0 .
-- =================================================================
    �"The HUAWEI-USERLOG-MIB contains objects to 
            manage configuration and monitor running state 
            for userlog feature.
            For users who access network through NAT and BAS 
            equipments, their IP addresses are generally 
            unfixed, and so it is hard to exactly locate which 
            host a certain access comes from and which user 
            initiates it. This decreases the network security. 
            User log is designed to solve the problem. User log 
            can record Network Address Translation (NAT) flow 
            information, and login/ logout information and flow 
            information of Broadband Access Server (BAS) user, 
            thus enabling the administrator know address 
            information before NAT, access record of BAS user, etc. 
            Then, network activities and operations can be queried 
            and tracked, and network availability and security are 
            improved accordingly."D" R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd., 
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085 
            Http://www.huawei.com                                       
            E-mail:support@huawei.com "                       9"NAT LOG version. Currently only version 1 is developed."                       �"NAT LOG format. 
             If 1, LOG format is sysLog.
             If 0, LOG format is UDP packet. 
             UDP packet is the default format and is recommended.
             Syslog can be used in the case that log amount is not too large."                      *"The Source IP address of NAT LOG UDP packet.
            By default, the source IP address of the UDP packet 
            is the IP address of the interface through which the 
            router outputs the user log packet.
            On the user log server side, the source of log 
            information can be located rapidly through identifying 
            the source IP address of the log. You are recommended 
            to configure a loopback address or router ID to function 
            as the source IP address of the UDP packet."                      "Log the NAT flow when it is created. 
             If 1, this function is enabled.
             If 0, this function is disabled.
             This function will be used when real-time monitor is required. 
             The default value 0 means this function is disabled."                      f"The active time for long-time existed NAT flow. 
             Unit: minute. Range: 10 minutes ~ 120 minutes.
             When setting it, NAT flow can be logged after an interval of active time. 
             This function will be used when real-time monitor is required.
             The default value 0 means real-time monitor function is disabled. "                      "A table of NAT LOG configuration information for the specified slot.
            By default, user log function is disabled on the interface board.
            Only after user log function is enabled, the other configurations 
            related to user log take effect."                       5"NAT LOG configuration information entry for a slot."                       �"Slot number. 
             The object specifies which slot is configured with NAT LOG. 
             For NAT LOG, it is the slot of the egress interface 
             configured with NAT."                       �"The NAT LOG feature status. 
             If 1, NAT LOG is enabled. 
             If 0, NAT LOG is disabled.
             The default value 0 means NAT LOG is disabled."                       �"Access-list number. Its range is 2000 ~ 3999. 
             The value 0 means no ACL is specified.
             Only when NAT LOG is enabled, and ACL is configured.
             Only NAT flow which match the ACL will be logged. "                      "The IP address of NAT LOG server. 
            If user log is output in UDP packet mode, user log 
            server must be configured and user log server address 
            must be specified correctly. Otherwise, user log 
            function cannot work normally.
            The address of the destination server must be a valid 
            unicast address rather than a loop address or multicast 
            address. In principle, it should be the address of the 
            user log server that can communicate normally."                       �"The UDP Port Number of NAT LOG server. Its range is 1 ~ 65535.
            In order to avoid confliction with general UDP port numbers, 
            you are recommended to use the UDP port number above 1024."                       @"A table of NAT LOG running information for the specified slot."                       /"NAT LOG running information entry for a slot."                       g"Slot number. 
             The object specifies on which slot the NAT LOG statistics are calculated."                       8"The total number of NAT flow entries which are logged."                       B"The total number of NAT LOG UDP packets generated by the device."                       <"The total number of NAT flow entries failed in outputting."                       ?"The total number of NAT LOG UDP packets failed in outputting."                       �"Clears the running statistics for NAT LOG. Its access is write-only.
             If 1, the running statistics for NAT LOG is resetted.
             Other value is invalid."                           >"BAS FLOW LOG version. Currently only version 1 is developed."                      "BAS FLOW LOG format. 
             If 1, LOG format is sysLog.
             If 0, LOG format is UDP packet. 
             UDP packet is the default format, and is recommended. 
             Syslog can be used in the case that log amount is not 
             too large."                      /"The Source IP address of BAS FLOW LOG UDP packet.
            By default, the source IP address of the UDP packet 
            is the IP address of the interface through which the 
            router outputs the user log packet.
            On the user log server side, the source of log 
            information can be located rapidly through identifying 
            the source IP address of the log. You are recommended 
            to configure a loopback address or router ID to function 
            as the source IP address of the UDP packet."                      "Log the BAS flow when it is created. 
            If 1, this function is enabled.
            If 0, this function is disabled.
            This function will be used when real-time monitor is required. 
            The default value 0 means this function is disabled."                      {"The active time for long-time existed BAS flow. 
            Its unit is minute. Its range is 10 minutes ~ 120 minutes.
            When setting it, BAS flow can be logged after an internal of active time. 
            This function will be used when real-time monitor is required.
            The default value 0 means real-time monitor function
            is disabled. "                      "A table of BAS FLOW LOG configuration information for the specified slot.
            By default, user log function is disabled on the interface board.
            Only after user log function is enabled, the other configurations 
            related to user log take effect."                       :"BAS FLOW LOG configuration information entry for a slot."                       ^"Slot number. 
            The ojects specifies which slot is configured with BAS FLOW LOG. "                       �"The BAS FLOW LOG feature status.
             If 1, BAS FLOW LOG is enabled. 
             If 0, BAS FLOW LOG is disabled.
             The default value 0 means BAS FLOW LOG is disabled."                       �"Access-list number. Its range is 2000 ~ 3999. 
             The value 0 means no ACL is specified.
             Only when BAS FLOW LOG is enabled, the ACL be configured.
             Only BAS flow which match the ACL will be logged. "                      $"The IP address of BAS FLOW LOG server. 
            If user log is output in UDP packet mode, user log 
            server must be configured and user log server address 
            must be specified correctly. Otherwise, user log 
            function cannot work normally.
            The address of the destination server must be a valid 
            unicast address rather than a loop address or multicast 
            address. In principle, it should be the address of the 
            user log server that can communicate normally."                       �"The UDP Port Number of BAS FLOW LOG server. Its range is 1 ~ 65535.
             In order to avoid confliction with general UDP port numbers, 
             you are recommended to use the UDP port number above 1024."                       E"A table of BAS FLOW LOG running information for the specified slot."                       '"Running Information Entry for a slot."                       k"Slot number. 
            The object specifies on which slot the BAS FLOW LOG statistics are calculated."                       9"The total number of BAS FLOW Entries which are logged. "                       C"The total number of FLOW LOG UDP packet generated by the device. "                       >"The total number of BAS FLOW  entries failed in outputting. "                       C"The total number of BAS FLOW LOG UDP packet failed in outputting."                       �"Clears the running statistics for FLOW LOG. Its access is write-only.
             If 1, the running statistics for FLOW LOG is resetted.
             Other value is invalid."                           @"BAS ACCESS LOG version. Currently only version 1 is developed."                      "BAS ACCESS LOG format. 
             If 1, LOG format is sysLog; 
             If 0, LOG format is UDP packet. 
             UDP packet is the default format, and is recommended. 
             Syslog can be used in the case that log amount is not too large."                      2"The Source IP address of BAS ACCESS LOG UDP packet. 
            By default, the source IP address of the UDP packet 
            is the IP address of the interface through which the 
            router outputs the user log packet.
            On the user log server side, the source of log 
            information can be located rapidly through identifying 
            the source IP address of the log. You are recommended 
            to configure a loopback address or router ID to function 
            as the source IP address of the UDP packet."                       M"A table of BAS ACCESS LOG configuration information for the specified slot."                       <"BAS ACCESS LOG configuration information entry for a slot."                       a"Slot number. 
             The object specifies which slot is configured with BAS ACCESS LOG. "                       �"The BAS ACCESS LOG feature status.
             If 1, BAS ACCESS LOG is enabled. 
             If 0, BAS ACCESS LOG is disabled.
             The default value 0 means BAS ACCESS LOG is disabled."                      &"The IP address of BAS ACCESS LOG server. 
            If user log is output in UDP packet mode, user log 
            server must be configured and user log server address 
            must be specified correctly. Otherwise, user log 
            function cannot work normally.
            The address of the destination server must be a valid 
            unicast address rather than a loop address or multicast 
            address. In principle, it should be the address of the 
            user log server that can communicate normally."                       �"The UDP Port Number of BAS ACCESS LOG server. Its range is 1 ~ 65535.
            In order to avoid confliction with general UDP port numbers, 
            you are recommended to use the UDP port number above 1024."                       U"A table of BAS ACCESS LOG running information 
            for the specified slot."                       '"Running Information Entry for a slot."                       }"Slot number. 
             The object specifies on which slot the BAS ACCESS LOG statistics 
             are calculated."                       ;"The total number of BAS ACCESS records which are logged. "                       D"The total number of ACCESS LOG UDP packet generated by the router."                       >"The total number of BAS ACCESS entries failed in outputting."                       E"The total number of BAS ACCESS LOG UDP packet failed in outputting."                       �"Clear the running statistics for ACCESS LOG. Its access is write-only.
             If 1, the running statistics for ACCESS LOG is resetted,
             the other value is invalid."                                   ]"The compliance statement for entities which 
            implement the Huawei Userlog mib."                   B"A collection of objects providing mandatory Userlog information."                 1"All configurable parameters of Userlog feature."                 -"All running information of Userlog feature."                            