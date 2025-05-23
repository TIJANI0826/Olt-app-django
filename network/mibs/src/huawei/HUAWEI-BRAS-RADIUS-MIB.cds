j-- =================================================================
-- Copyright (C) 2017 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:HUAWEI-BRAS-RADIUS-MIB
-- Reference:
-- Version: V2.28
-- History:
--         v1.1
--         modified by huangjun 2009-12-08  
-- =================================================================
                                                     +"Add hwRadiusServerSourceVlanifEachServer." �"Huawei Industrial Base
		  Bantian, Longgang
		   Shenzhen 518129
		   People's Republic of China
		   Website: http://www.huawei.com
		   Email: support@huawei.com " "201705281613Z" "201611011613Z" "201608311613Z" "201607111613Z" "201604221613Z" "201604131933Z" "201603151933Z" "201506281933Z" "201412171457Z" "201410081620Z" "201402281734Z" "201309102040Z" "201308082040Z" "201307051545Z" "201302181634Z" "201307271419Z" "201402150000Z" "201412311457Z" �"Add hwRadiusGlobalSettingTable, hwRadiusGlobalSettingEntry, hwRadiusGlobalServerSourceIp, hwRadiusGlobalServerSourceIpv6, hwRadiusGlobalAttrNasIp, hwRadiusGlobalAttrNasIpv6." "Add hwRadiusStateInRequest." -"Add hwRadiusServerSourceLoopBackEachServer." Y"Add hwRadiusServerSourceIPAddressEachServer, hwRadiusServerSourceIPv6AddressEachServer." "Modified the packetcount." 9"Modified hwRadiusAuthorServerRowStatus for read-create." o"Added trap hwRadiusDiscardCachePacket, hwRadiusCachePacketThresholdAlarm, hwRadiusCachePacketThresholdResume." ,"The MIB contains objects of module Radius." ,"The MIB contains objects of module Radius." ,"The MIB contains objects of module Radius." ,"The MIB contains objects of module Radius." ,"The MIB contains objects of module Radius." ,"The MIB contains objects of module Radius." ,"The MIB contains objects of module Radius." ,"The MIB contains objects of module Radius." "V1.0-V1.1." "Revision 2.17" ,"The MIB contains objects of module Radius."                   '"Radius Group Table.
                "                      k"Radius Group Entry.
                 Radius group table is used to configure the attribute of radius group including some public information of radius group.
                                 Radius group table is uniquely identified by Radius group name which is the key word entered when radius group table is created and cannot be changed.
                "                       &"Radius Group name.
                "                       )"Radius Server secret.
                "                       $"Radius protocol.
                "                       ?"Max number of radius packet retransmission.
                "                       :"Radius packet retransmission interval.
                "                       �"Whether the function of Radius server attribute translation is enabled.
                 1 indicates that it is enabled.
                 2 indicates that it is disabled.
                "                       j"The packet unit of Radius server which is active when the Radius protocol is standard.
                "                       H"Whether the domain of Radius server is included.    
                "                       A"RADIUS server regards CLASS as CAR parameter.
                "                       >"Packet sending algorithm of Radius server.
                "                       2"Radius Nas port format string.
                "                       >"Row admin status.

                Support add and delete."                       8"Radius server source interface name.
                "                       "Radius server NAS IP address"                       ""Radius server Calling-station-id"                       ,"Radius server Calling-station-id-Delimiter"                       /"Radius-attribute qos-profile no-exist-policy."                       "Radius Server secret type."                       :"Whether of not using option82 when building NAS-PORT-ID."                       %"Radius stop account packet max num."                       4"Radius master server dead time, default 5 minutes."                       :"Radius server detect interval , the default value is 60."                       "The format of NAS-PORT-ID."                       "Radius server test user name."                       #"Radius server test user password."                       !"Radius server nas ipv6 address."                       '"Take state in authentication request."                       5"Radius server group extend table.
                "                       "Description."                       X"IP address index of authentication and accounting server, read-only.
                "                       L"Type of authentication and accounting server, read-only.
                "                       I"VPN-instance of authentication and accounting server.
                "                       i"IP address of authentication and accounting server which is unnecessary to configure.
                "                       x"Port number of authentication and accounting server. Use the default value, if it is not configured.
                "                       f"Weight of authentication and accounting server, which is unnecessary to configure.
                "                       C"Secret of authentication and accounting server.
                "                       b"Row admin status,either Add or Del.

                Support add and delete.
                "                       L"The number of packets that can be sent
                
                "                       P"The interval for counting the number of sent packets(in sec)
                "                       7"Radius server source interface name
                "                       K"The number of RADIUS packets received from this server.
                "                       L"Secret key type of authentication and accounting server.
                "                       -"Radius server dead count.
                "                       ,"Radius server dead time.
                "                       0"Radius server dead interval.
                "                       "Radius server ipv6 address."                       $"Source IP address of each server. "                       %"Source IPv6 address of each server."                       !"Source loopback of each server."                       "Source vlanif of each server."                       ="Configuration table of server client end.
                "                       "Description."                       &"Client ip address.
                "                       ("Client vpn instance.
                "                       %"Client share key.
                "                       &"Client group name.
                "                       &"Client row status.
                "                       *"Client share key type.
                "                       9"Configuration table of AUTHOR server.
                "                       "Description."                       4"Authorization Server IP address.
                "                       6"Authorization Server VPN instance.
                "                       3"Authorization Server share key.
                "                       4"Authorization Server group name.
                "                       4"Authorization Server row status.
                "                       8"Authorization Server share key type.
                "                               |"To enable one or more ports to be used as the source ports for sending out RADIUS requests,default is 2.
                "                       b"The start port to be used as the source ports for sending out RADIUS requests.
                "                       f"The number of port to be used as the source ports for sending out RADIUS requests.
                "                       U"Reset statistics information of radius sending and receiving packets.
            "                       1"Reset RADIUS attribute count.
                "                       3"Radius server total dead count.
                "                       2"Radius server total dead time.
                "                       6"Radius server total dead interval.
                "                       X"Authentication packet statistics information for IPv4 radius server.
                "                       "Description."                       %"Radius server IP.
                "                       &"VPN-instance name.
                "                       $"Request packets.
                "                       #"Accept packets.
                "                       #"Reject packets.
                "                       +"Retransmission packets.
                "                       &"Challenge packets.
                "                       /"Malformed response packets.
                "                        "Bad packets.
                "                       $"Pending packets.
                "                       $"Timeout packets.
                "                       $"Unknown packets.
                "                       $"Dropped packets.
                "                       ."Speed-limit block packets.
                "                       0"Pending-limit block packets.
                "                       ."Server down block packets.
                "                       /"No source IP block packets.
                "                       -"Server not reply packets.
                "                       Q"Account packet statistics information for IPv4 radius server.
                "                       "Description."                       %"Radius server IP.
                "                       &"VPN-instance name.
                "                       $"Request packets.
                "                       %"Response packets.
                "                       +"Retransmission packets.
                "                       /"Malformed response packets.
                "                        "Bad packets.
                "                       $"Pending packets.
                "                       $"Timeout packets.
                "                       $"Unknown packets.
                "                       $"Dropped packets.
                "                       ."Speed-limit block packets.
                "                       0"Pending-limit block packets.
                "                       ."Server down block packets.
                "                       +"No route block packets.
                "                       %"No reply packets.
                "                       W"Authorization packet statistics information for IPv4 radius server.
                "                       "Description."                       '"Radius server type.
                "                       %"Radius server IP.
                "                       &"VPN-instance name.
                "                       $"Request packets.
                "                       #"Accept packets.
                "                       #"Reject packets.
                "                        "Bad packets.
                "                       +"Retransmission packets.
                "                       /"Malformed response packets.
                "                       $"Timeout packets.
                "                       $"Unknown packets.
                "                       $"Dropped packets.
                "                       X"Authentication packet statistics information for IPv4 radius server.
                "                       "Description."                       %"Radius server IP.
                "                       $"Request packets.
                "                       #"Accept packets.
                "                       #"Reject packets.
                "                       +"Retransmission packets.
                "                       &"Challenge packets.
                "                       /"Malformed response packets.
                "                        "Bad packets.
                "                       $"Pending packets.
                "                       $"Timeout packets.
                "                       $"Unknown packets.
                "                       $"Dropped packets.
                "                       ."Speed-limit block packets.
                "                       0"Pending-limit block packets.
                "                       ."Server down block packets.
                "                       +"No route block packets.
                "                       %"No reply packets.
                "                       Q"Account packet statistics information for IPv4 radius server.
                "                       "Description."                       %"Radius server IP.
                "                       $"Request packets.
                "                       %"Response packets.
                "                       +"Retransmission packets.
                "                       /"Malformed response packets.
                "                        "Bad packets.
                "                       $"Pending packets.
                "                       $"Timeout packets.
                "                       $"Unknown packets.
                "                       $"Dropped packets.
                "                       ."Speed-limit block packets.
                "                       0"Pending-limit block packets.
                "                       ."Server down block packets.
                "                       +"No route block packets.
                "                       %"No reply packets.
                "                       1"Radius attribute count table.
                "                       "Description."                       '"The attribute name.
                "                       M"The number of attribute in authentication request packet.
                "                       L"The number of attribute in authentication accept packet.
                "                       L"The number of attribute in authentication reject packet.
                "                       I"The number of attribute in accounting request packet.
                "                       J"The number of attribute in accounting response packet.
                "                       B"The number of attribute in COA request packet.
                "                       F"The number of attribute in COA acknowledge packet.
                "                       A"The number of attribute in DM request packet.
                "                       E"The number of attribute in DM acknowledge packet.
                "                       1"Radius attribute apply table.
                "                       "Description."                       B"The ID of attribute, eg. VendorID+AttributeID.
                "                       ""Detail action.
                "                       <"The parameter of attribute apply action.
                "                       b"Row admin status,either Add or Del.

                Support add and delete.
                "                       1"Radius attribute check table.
                "                       "Description."                       &"The index of radius check attribute."                       "Check attribute name."                       "RowStatus."                       3"Radius attribute disable table.
                "                       "Description."                       ("The index of radius disable attribute."                       "Disable attribute name."                       "Disable direction."                       "RowStatus."                       1"Radius attribute apply table.
                "                       "Description."                       *"The index of radius translate attribute."                       ""Source translate attribute name."                       '"Destination translate attribute name."                       "Translate direction."                       "Translate Packet type."                       ."radius attribute translate source vendor id."                       +"radius attribute translate source sub id."                       3"radius attribute translate destination vendor id."                       0"radius attribute translate destination sub id."                       "RowStatus."                       1"Radius attribute apply table.
                "                       "Description."                       $"The index of radius set attribute."                       "Set attribute name."                       "Set value."                       "RowStatus."                               "The result of account test."                               "Global Source IP address. "                       "Global Source IPv6 address."                       -"Global nas IP address of radius attribute. "                       ."Global nas IPv6 address of radius attribute."                               _"IP address of authentication or accounting server which state is changed.

                "                       b" VPN-instance of authentication or accounting server which state is changed.

                "                       Z" port of authentication or accounting server which state is changed.

                "                       (" The memory usage.

                "                       %" The threshold.

                "                       2" The number of cached packets.
                "                       1" The max cache packets limit.
                "                              %"
                1 Notice/Trap name:  Radius authentication server up
                2 Notice/Trap generation cause:  Radius authentication server up 
                3 Repair suggestions:
                    Check radius authentication server status .                
                "                "
                1 Notice/Trap name:  Radius authentication server down
                2 Notice/Trap generation cause:  Radius authentication server down 
                3 Repair suggestions:
                    Check radius authentication server status .
                "                	"
                1 Notice/Trap name:  Radius accounting server up
                2 Notice/Trap generation cause:  Radius accounting server up 
                3 Repair suggestions:
                    Check radius accounting server status .
                "                "
                1 Notice/Trap name:  Radius accounting server down
                2 Notice/Trap generation cause:  Radius accounting server down 
                3 Repair suggestions:
                    Check radius accounting server status .
                "                o"
                1 Notice/Trap name:  Packets buffered earliest were dropped because the memory usage reached the threshold.
                2 Notice/Trap generation cause:  Packets buffered earliest were dropped because the memory usage reached the threshold. 
                3 Repair suggestions:
                    Check the memory usage.
                "                0"
                1 Notice/Trap name:  The number of cached packets reached the upper limit. 
                2 Notice/Trap generation cause:  The number of cached packets reached the upper limit. 
                3 Repair suggestions:
                    Check the cached packets.
                "                4"
                1 Notice/Trap name:  The number of cached packets fell below the lower limit.
                2 Notice/Trap generation cause: The number of cached packets fell below the lower limit. 
                3 Repair suggestions:
                    Check the cached packets.
                "                         T"The compliance statement for systems supporting 
                the this module."                   "The radius group."                 "The Radius Server group."                 "The Radius Client group."                 !"The Radius Author Server group."                 &"The common setting of Radius server."                 "The Radius Trap Object group."                  "The Radius Traps Define group."                                