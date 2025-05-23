,-- ==================================================================
-- Copyright (C) 2019 by HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI SMARTLINK MIB
-- Reference:
-- Version: V3.06
-- History:
-- ==================================================================
                                                         �"This module includes the information about smart link.
                The information can be read and some of them can be set." �"Huawei Industrial Base
                 Bantian, Longgang
                 Shenzhen 518129
                 People's Republic of China
                 Website: http://www.huawei.com
                 Email: support@huawei.com
                " "201903142040Z" "201707141055Z" "201607091717Z" "201507271717Z" "201504301443Z" "201308291443Z" "201305031155Z" "201303181420Z" "201208300936Z" C"Update the max index of hwMonitorLinkDlArrayIndex from 48 to 512." ,"Update index of hwMonitorLinkDlArrayIndex." *"Update to increase  hwSmartLinkPcIfName." g"Update to increase  hwSmartLinkRpcRevAuthMode and hwSmartLinkMulRpcRevAuthMode ENUM elemt as null(0)." 2"Update DESCRIPTION of hwMonitorLinkDlArrayIndex." S"Update DESCRIPTION of hwSmartLinkRevLastFlushTime and hwSmartLinkPcSendFlushTime." :"Update to increase  hwSmartLinkMulRevPortCfgTable table." N"Update to increase  hwSmartLinkGcGroupStatus ENUM elemt as idle(4), init(5)." :"Initial version, published at Aug 30, 2012 at 09:36 GMT."       -- Mar 14, 2019 at 20:40 GMT
           &"The total of received flush packets."                       A"The interface index of port which received flush packet lastly."                      �"The time when received flush packet lastly.
                field  octets  contents                range
                 - - -  - - - -  - - - -                 - - -
                   1      1-2       year                   0..65536
                   2       3        month                  1..12
                   3       4        day                    1..31
                   4       5        hour                   0..23
                   5       6        minutes                0..59
                   6       7        seconds                0..60
                                (use 60 for leap-second)
                   7       8        deci-seconds           0..9"                       <"The SMAC of flush packet which arrived this device lastly."                       D"The control VLAN of flush packet which arrived this device lastly."                       ("Reset the statistics of flush packets."                       �"This is port configuration table which received flush packet, 
                and configuration relation of port received flush packet was described.
                The index of table is hwSmartLinkRpcIfIndex."                       �"The table includes the information of the received flush packet port configuration information.
                The index of the table is hwSmartLinkRpcIfIndex."                       6"The index of port from which received flush packets."                       l"Set the VLAN ID to verify the validity of flush packets received.
                Ranging from 0 to 4095."                       D"Set the password to verify the validity of flush packets received."                       I"Set the password mode to verify the validity of flush packets received."                       �"The table includes the information of the smart link group configuration information,
                and include the mode of smart link group, working status of group, control vlan of group etc."                       �"The table includes the information of the smart link group configuration information.
                The index of the table is hwSmartLinkGcGroupId."                       "Smart link group index."                       1"The master interface index of smart link group."                       0"The slave interface index of smart link group."                      �"Working status of smart link group, include none, master, slave, idle and init. 
                none: all ports in group are inactive.
                Master: master port is active, and slave port is inactive.
                Slave: master port is inactive, and slave port is active.
                Idle: smart-link group is disable, and all ports are inactive.
                Init: smart-link group is enable, and all ports are inactive."                       y"Startup or close the smart link group.
                Before startup the smart link group, the group must be created."                       E"Set the tag of flush packets which send from this smart link group."                       F"Set password of flush packets which send from this smart link group."                       '"Active port was locked on master port"                       '"Active port was locked on slave port."                       "Set wait-to-restore time."                       Q"When wait-to-restore timer is over, the smart link group link will be switched."                       5"The link was switched every setting manual command."                       !"Status of smart link group row."                       O"Set the password mode of flush packets which send from this smart link group."                      "This table is the configuration table of member port of smart link group.
                This table described that configuration relation of member port of smart link group.
                This table index is hwSmartLinkPcGroupId and hwSmartLinkPcPortType."                       �"This table described that configuration relation of member port of smart link group.
                This table index is hwSmartLinkPcGroupId and hwSmartLinkPcPortType."                       "Smart link group index."                       +"The role of smart link group member port."                       5"Interface index of member port of smart link group."                       B"The status of member port, include unknown, active and inactive."                       1"The total of flush packets send from this port."                      �"The time when send flush packet lastly.
                field  octets  contents                range
                 - - -  - - -   - - - - -               - - -
                   1      1-2       year                   0..65536
                   2       3        month                  1..12
                   3       4        day                    1..31
                   4       5        hour                   0..23
                   5       6        minutes                0..59
                   6       7        seconds                0..60
                                (use 60 for leap-second)
                   7       8        deci-seconds           0..9"                       #"Status of monitor link group row."                       o"This is status information table of monitor link group,
                and index is hwMonitorLinkGcGroupId."                       o"This is status information table of monitor link group,
                and index is hwMonitorLinkGcGroupId."                       "Monitor link group index."                       �"Set recover time, when uplink port turn to UP and over the recover time, 
                all downlink port will be undo shutdown."                       #"Status of monitor link group row."                       �"This is the information table of member port in monitor link group upink,
                The table indexes are hwMonitorLinkUlGroupId, hwMonitorLinkUlPortType."                       �"This is the information table of member port in monitor link group upink,
                The table indexes are hwMonitorLinkUlGroupId and hwMonitorLinkUlPortType."                       "Monitor link group index."                       V"Type of uplink port in monitor link group, include smart link group and switch port."                       �"When port type is smart link, the value is smart link group index.
                When port type is switch port, the value is ifindex of switch port."                       ="State of member port in monitor group, include UP and DOWN."                       8"Show the time when the port state turn to UP recently."                       :"Show the time when the port state turn to DOWN recently."                       #"Status of monitor link group row."                       �"This is the information table of member port in monitor link group downlink,
                The table indexes are hwMonitorLinkDlGroupId and hwMonitorLinkDlArrayIndex."                       �"This is the information table of member port in monitor link group downlink,
                The table indexes are hwMonitorLinkDlGroupId and hwMonitorLinkDlArrayIndex."                       "Monitor link group index."                       1"The downlink array index of Monitor link group."                       8"Member interface index of monitor link group downlink."                       ="State of member port in monitor group, include UP and DOWN."                       8"Show the time when the port state turn to UP recently."                       :"Show the time when the port state turn to DOWN recently."                       #"Status of monitor link group row."                       �"This is port configuration table which received flush packet, 
                and configuration relation of port received flush packet was described.
                The index of table is hwSmartLinkMulRpcIfIndex and hwSmartLinkMulRpcVlan."                       �"The table includes the information of the received flush packet port configuration information.
                The index of the table is hwSmartLinkMulRpcIfIndex and hwSmartLinkMulRpcVlan."                       6"The index of port from which received flush packets."                       <"The control-vlan of port from which received flush packets"                       D"Set the password to verify the validity of flush packets received."                       I"Set the password mode to verify the validity of flush packets received."                       �" Operation of CreateAndGo can be
	             used to create a new instance, and operation of Destroy be 
	             used to destroy an existent index."                       "Indicates the interface name."                       6"Definition point for smart link group notifications."               M"The SNMP trap that is generated when smart link group link status switches."                 Q"The SNMP trap that is generated when detect the link change to abnormal status."                 d"The SNMP trap that is generated when detect the link change to normal status from abnormal status."                 D"The SNMP trap that is generated when smart link group was enabled."                 E"The SNMP trap that is generated when smart link group was disabled."                 S"The SNMP trap that is generated when detect the link change to master from slave."                 S"The SNMP trap that is generated when detect the link change to slave from master."                 C"The SNMP trap that is generated when detect the group turn to up."                 E"The SNMP trap that is generated when detect the group turn to down."                         >"The compliance statement for systems supporting this module."                   ;"A collection of objects providing smart link information."                 S"A collection of objects providing port configuration which received flush packet."                 H"A collection of objects providing smart link group status information."                 B"A collection of objects providing smart link port configuration."                 C"A collection of objects provding monitor link group information. "                 Q"A collection of objects providing monitor link group uplink port configuration."                 S"A collection of objects providing monitor link group downlink port configuration."                     "The Group of smart link Trap."                                