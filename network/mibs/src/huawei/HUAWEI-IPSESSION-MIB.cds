3-- =================================================================
-- Copyright (C) 2009 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:HUAWEI-IPSESSION-MIB
-- Reference:
-- Version: V1.0
-- History:
--       
-- =================================================================
                                     :"The MIB contains objects of module IP-Session interface."�"
                        NanJing Institute,Huawei Technologies Co.,Ltd.
                        HuiHong Mansion,No.91 BaiXia Rd.
                        NanJing, P.R. of China
                        Zipcode:210001
                         
                        Http://www.huawei.com                                       
                        E-mail:support@huawei.com "                   /"The IP-Session interface configuration table."                       5"The IP-Session interface configuration table entry."                       0"The interface index.
                        "                       C"The default domain when authenticating.
                        "                       �"Kind of access port, reference to attribute of NAS-PORT-TYPE in RFC2865. 20 indicates that the access port is restored to the default value.  
                        "                       �"ARP detection interval, 121 indicates that the detection interval is restored to the default value.  
                        "                       �"The number that ARP detection is allowed to fail, 121 indicates that the number is restored to the default value.
                        "                       4"Policy of DHCP option82.
                        "                       ="Policy to select service scheme .
                        "                       <"VPN instance name.             
                         "                       g"Enable IP-Session, 
                        1:disable(default);  2:enable.
                        "                       Y"The row administration status, only supporting add or delete.
                        "                           /"IP session user's password type.
			        "                       6"IP session user's password.            
			        "                       7"IP session user's name option82 include.
			        "                       9"IP session user's name IP address include.
			        "                       :"IP session user's name system name include.
			        "                       :"IP session user's name MAC address include.
			        "                               &"The configure of IP session's group."                   0"The interface configure of IP session's group."                 -"The global configure of IP session's group."                            