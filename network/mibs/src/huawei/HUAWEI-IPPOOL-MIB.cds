~-- ============================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- DESCRIPTION:  HUAWEI-IPPOOL-MIB
-- Reference:  
-- Version: V2.48
-- History:
--         v3.01
--         modified by huangjun 2009-12-08
-- ============================================================================
                                                                 ,"The MIB contains objects of module IPPOOL." �"Huawei Industrial Base
  Bantian, Longgang
   Shenzhen 518129
   People's Republic of China
   Website: http://www.huawei.com
   Email: support@huawei.com
 " "202204150000Z" "202202250000Z" "202202080000Z" "202106220000Z" "202103310000Z" "202011200000Z" "202008270000Z" "202007220000Z" "202006220000Z" "202003270000Z" "201911290000Z" "201909120000Z" "201903290000Z" "201903200000Z" "201902160000Z" "201901290000Z" "201812280000Z" "201812240000Z" "201812130000Z" "201812130000Z" "201808010000Z" "201807120000Z" "201806140000Z" "201805210000Z" "201801290000Z" "201801260000Z" "201801200000Z" "201801180000Z" "201711270000Z" "201709260000Z" "201704180000Z" "201611170000Z" "201609270000Z" "201603101109Z" "201512240000Z" "201508120000Z" "201503310000Z" "201502110000Z" "201412260000Z" "201412260000Z" "201407250000Z" "201403140000Z" "201311280000Z" "201311080000Z" "201310170000Z" "201307270000Z" "201307190000Z" "201305220000Z" @"V2.47-V2.48 modify range for hwBasUnrImportRouteReachThreshold" 5"V2.46-V2.47 added hwBasUnrImportRouteReachThreshold" W"V2.45-V2.46 added hwIPPoolDAPDeviceSubnetFullAlarm,hwIPv6PoolDAPDevicePrefixFullAlarm" %"V2.44-V2.45 delete invalid comment." F"V2.43-V2.44 modify the description of node in hwUserIPConflictAlarm." Y"V2.42-V2.43 modify the range of node in hwIPDhcpSvrRefCount hwIPDhcpv6SvrGroupRefCount." f"V2.41-V2.42 modify the range of node in hwIPv6PrefixIndex hwIPv6PoolIndex and hwIPv6RemotePoolIndex." ="V2.40-V2.41 modify the range of node in hwIPPoolGroupIndex." ="V2.39-V2.40 modify the range of node in hwIPPoolGroupIndex." 9"V2.38-V2.39 add hwDhcpv6ServerDown, hwDHCPv6ServerAddr." t"V2.37-V2.38 add hwDapPoolStatusTable, hwDapSubnetStatusTable, hwDapV6PoolStatusTable and hwDapV6PrefixStatusTable." %"V2.36-V2.37 Modify sever to server." G"V2.35-V2.36 add hwRemoteIPPoolIPTotalNum and hwRemoteIPPoolIPUsedNum." S"V2.34-V2.35 Change the uint of hwIPPoolIpAddrRenewal and hwIPPoolIpAddrRebinding." ["V2.33-V2.34 the value range and default value of hwIPPoolDhcpServerDeadCount are changed." 5"V2.32-V2.33 Consistency,Expand the range of values." R"V2.31-V2.32 add hwCUPoolGroupUsedIPExhaust and hwCUPoolGroupUsedIPExhaustResume." `"V2.30-V2.31 add hwCUPoolGroupUsedIPReachThreshold and hwCUPoolGroupUsedIPReachThresholdResume." \"V2.29-V2.30 modify the object type of node hwCUIPDynSubnetStatus hwCUIPPoolDynSubnetTable." b"V2.28-V2.29 modify the range of node in hwCUIPv6PoolStatisticTable and hwCUIPPoolDynSubnetTable." C"V2.27-V2.28 modify the range of node in hwCUIPPoolStatisticTable." H"V2.26-V2.27 modify trap node hwPoolVPNInstance and hwVPNPoolThreshold." ("V2.25-V2.26  modify ip pool vpn nodes." %"V2.24-V2.25  add ip pool vpn nodes." g"Modify V2.23-V2.24 added hwCUIPPoolStatisticTable,hwCUIPv6PoolStatisticTable,hwCUIPPoolDynSubnetTable" J"Modify V2.22-V2.23 modify for reset warning after an ip pool is isolated" 9"Modify V2.21-V2.22 modify for mib add DAPIPV6 leaf node" /"Modify V2.20-V2.21 modify for mib discription" %"Modify V2.20-V2.21 modify for dapv6" :"Modify V2.19-V2.20 modify length of ip pool name 32->128" 6"Modify V2.18-V2.19 add for DAP and IPV6 pool warning" -"Modify V2.16-V2.17 add isolate pool warning" ;"Modify V2.15-V2.16 mod pool and pool-group subnet warning" L"Modify V2.14-V2.15 mod hwIPSectionIndex<0-7> for  hwIPSectionIndex<0-255>." D"Modify V2.13-V2.14 mod hwUserIPAddress for  hwUserIPConflictAlarm." R"Modify V2.12-V2.13 mod hwIPPoolType for supporting local rui-slave address pool." 5"Modify V2.11-V2.12 mod for DAP warning fail reason." E"Modify V2.10-V2.11 mod for hwIPv6RemotePoolExportHostRoutePDprefix." 9"Modify V2.09-V2.10 add for pool weight and DAP warning." 2"V2.08-V2.09 add for pool weight and DAP warning." 5"V2.07-V2.08 add four dhcpv6 server support polling." "  V1.2-V1.3 add four nodes." ,"The MIB contains objects of module IPPOOL." ,"The MIB contains objects of module IPPOOL." T" V1.3-V1.4 add three nodes for export NA/PD/ND route,three table for DHCP enhence." " V1.2-V1.3 add four nodes." 0" V1.1-V1.2 add two nodes for dhcp server down." 3"V1.0-V1.1  increate option/s size from 64 to 255."                   G"hwIPPoolTable is used to configure information about an address pool."                       �"The configuration list of IP address pool, which is used to configure the relevant attributes of the IP address pool inside the device."                       @"This object indicates the unique index of the IP address pool."                       T"IP address pool name, the service module guarantees the exclusiveness of the name."                       O"Gateway IP address.
                By default, the mask is 255.255.255.255."                       I"Gateway mask.
                By default, the mask is 255.255.255.255."                       M"Primary DNS IP address.
                By default, it is 255.255.255.255."                       L"Second DNS IP address.
                By default, it is 255.255.255.255."                       Q"Primary Netbios IP address.
                By default, it is 255.255.255.255."                       P"Second Netbios IP address.
                By default, it is 255.255.255.255."                       �"IP address lease: 0~(1000*24*60-1)(m)  unit: minute. It is allowed not to specify the lease during the adding. The default value is 3*24*60(m)."                       X"Row admin status, either Add or Delete.
                Supports adding and deletion."                       "IP VPN-instance name."                       P"Value indicates the type of pool, 1-local, 2-relay, 3-server, 4-localRuiSlave."                       �"Network ip address of a DHCP Server global pool. 
            To delete a configured network ip, please set
            hwDHCPSGlobalPoolConfigUndoFlag to 1"                      �"Net mask of a DHCP Server global pool(network).
            The SET operation to this object ought to be with
            the SET of hwDHCPSGlobalPoolNetwork together, and
            any SET operation alone to this object will be
            regarded as an invalid operation.
            When a network ip of a DHCP server global pool was 
            deleted, the net mask would also be deleted
            automatically, and no further operation needed"                       9"This object indicates the total number of IP addresses."                       :"This object indicates the number of IP addresses in use."                       S"This object indicates the number of conflicting IP addresses that are not in use."                       L"This object indicates the number of IP addresses that cannot be allocated."                       5"This object indicates the number of idle addresses."                       "used percent."                       �"String of DNS server ip addresses for DHCP clients.
            Since mostly 8 ip addresses can be configured for a pool
            totally, a string is defined to get or configure 8
            ip addresses at a time"                       x"A DNS server ip address to be deleted. This object
            is only for deleting a given ip address of DNS server."                       �"String of NetBIOS server ip addresses for DHCP
            clients. Since mostly 8 ip addresses can be configured for
            a pool totally, so a string is defined to get or
            configure 8 ip addresses at a time"                       �"A NetBIOS server ip address to delete. This
            object is only for deleting a given ip address of NetBIOS
            server"                       "unnumbered interface name."                       I"The flag indicates whether funtion of conflict auto recycle is enabled."                       $"The lowest IP address in the pool."                       %"The highest IP address in the pool."                       #"The number of the request packet."                       -"The number of the effective request packet."                       ("The configuration table of IP section."                      "IPSection Entry.
                IP section configuration table, used to manage the IP address of user.
                There are at most eight address sections to each address pool. Its indexes are   hwIPPoolIndex (from the external) and HwIPSectionIndex."                       2"This object indicates the address segment index."                       -"IP section DESCRIPTION, which can be empty."                       A"This object indicates the start IP address of the address pool."                       B"This object indicates the end IP address in the address segment."                       3"This object indicates the address segment length."                       L"This object indicates the number of IP addresses that have been allocated."                       #"The number of conflict addresses."                       ;"This object indicates the number of invalid IP addresses."                       5"This object indicates the number of idle addresses."                       �"This object indicates the status of an address segment. Currently, the status of the address pool can be added (4) or deleted (6)."                       �"Extend table of the local address pool.
                 When IP addresses are allocated by the built-in DHCP servers, you need to configure the lease and option."                       "DESCRIPTION."                       $"Whether the address is prohibited."                       �"Option ID.
                 When IP addresses are allocated by the built-in DHCP server, the option is a configuration parameter, which needs to be defined and explained by the carrier."                       "Value of the option."                       �"Option ID.
                 When IP addresses are allocated by the built-in DHCP server, the option is a configuration parameter, which needs to be defined and explained by the carrier."                       "Value of the option."                       �"Option ID.
                 When IP addresses are allocated by the built-in DHCP server, the option is a configuration parameter, which needs to be defined and explained by the carrier."                       "Value of the option."                       �"Option ID.
                 When IP addresses are allocated by the built-in DHCP server, the option is a configuration parameter, which needs to be defined and explained by the carrier."                       "Value of the option."                       w"DNS suffix, a string of 0-50 characters.
                If the value is 0, it indicates that the suffix is deleted."                       z"mode of IP addresses reserving. 1 indicates leasing management, 2 indicates MAC binding, and other values are invalid.  "                       �"ip address renewal: 0~(1000*24*60-1)*60(s)  unit: second. It is allowed not to  specify the renewal during the adding. The default value is 129600(s)"                       �"ip address rebinding: 0~(1000*24*60-1)*60(s)  unit: second. It is allowed not to specify the rebinding during the adding. The default value is 226800(s)"                       "SIP Server IP address"                       "SIP Server IP address"                       @"The name of SIP server. 0 indicates to delete the SIP server. "                       @"The name of SIP server. 0 indicates to delete the SIP server. "                      n"Address status table.
                 It supports the query and setting of status of the local address pool. 
                 It does not support the query and setting of status of the remote address pool for the following reasons:
                  1. The status of the remote address pool cannot be set.
                  2. The remote and local address pools map different status tables, with different indexes.
                  3. The remote address pool is managed by the remote equipment, rather than the local equipment. The local equipment displays only the approximate status of the remote address pool."                       "DESCRIPTION."                       "IP address."                       "Status of the address."                       "IP address pool name."                      Y"Configuration table of the DHCP server group.
                 To monitor the status of the remote DHCP server, you need to configure the local DHCP server.
                 You can configure a maximum of 4094 DHCP server groups.
                 Each server group consists of two DHCP servers. Select the server based on the server status."                       "DESCRIPTION."                       �"Index of a DHCP server group.
                 When you create an address pool, the equipment adds the hwIPPoolDhcpSvrGroupIndex entry by default and sends it to the NMS."                        "Name of the DHCP server group."                       ."Primary IP address of the DHCP server group."                       0"Secondary IP address of the DHCP server group."                       $"Status of the primary DHCP server."                       &"Status of the secondary DHCP server."                       1"Whether the server supports the Release packet."                       1"Number of times the server group is referenced."                       "DHCP server row status."                       *"VPN instance of the primary DHCP server."                       ,"VPN instance of the secondary DHCP server."                        "DHCP source interface address."                      �"Configuration table of the remote address pool.
                 The remote address pool must be configured on the local equipment in the following cases:
                   Users obtain IP addresses through the built-in DHCP client and need to renew the addresses.
                   The equipment needs to record the IP addresses to be renewed.
                   The equipment needs to report the routes of the users."                       "DESCRIPTION."                       �"Index of an address pool.
                 When you create an address pool, the equipment adds the hwRemoteIPPoolIndex x entry by default and sends it the NMS.
                "                       `"Name of an address pool.
                 The service module ensures that the name is unique."                       "IP address of the gateway."                       "IP address mask."                       +"Name of the associated DHCP server group."                       ?"Whether the address pool is locked, 0: locked, 1: not locked."                       @"
                 Row status of IP pool.  
                 "                       &"IP address of the active DNS server."                       '"IP address of the standby DNS server."                       '"IP address of the active NBNS server."                       ("IP address of the standby NBNS server."                       "IP VPN-instance name."                       "DHCP server group name."                       H"Whether the address pool lease manage is enable, 0: diable, 1: enable."                       $"The weight of this Remote IP pool."                       S"This object indicates the total number of IP addresses of remote ip address pool."                       R"This object indicates the used number of IP addresses of remtoe ip address pool."                           ?"This object indicates the number of configured address pools."                       H"This object indicates the number of idle IPv4 addresses on the device."                       H"This object indicates the number of IP addresses in use on the device."                       M"This object indicates the number of conflicting IP addresses on the device."                       ^"This object indicates the number of IP addresses that the device is not allowed to allocate."                       C"This object indicates the number of IPv4 addresses on the device."                       B"This object indicates the usage of IPv4 addresses on the device."                       ""DHCP server configuration table."                       "Description."                       "The index of DHCP server."                        "The IP address of DHCP server."                       9"The name of VPN instance for the master DHCP server.   "                       "The state of DHCP server."                       $"The send discovering speed number."                       :"The interval of discovery packets sent by DHCP server.  "                       �"The threshold of no response packets from DHCP server, when the number count over the threshold, DHCP server is changed from up to down status.
                The default value is 0."                       �"The threshold of nak packets from DHCP server, when nak packets count over the threshold, DHCP server is changed from up to down status.
                The default value is 10."                       c"The timeout interval for response packet,the time unit is second and default value is 25 seconds."                       v"The interval of DHCP server automatically recover up status, the time unit is minute and default value is 3 minutes."                       v"A table for configuring options to DHCP server pools,
               include option code type and value and so on ."                       "DESCRIPTION."                       �"Option ID.
                 When IP addresses are allocated by the built-in DHCP server, the option is a configuration parameter, which needs to be defined and explained by the carrier."                       "Value of the option."                      ="This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6).
            while configuration new option, you must specify option type 
            and value"                      "Configuration table of the address Pool Group.
                 IP Pool Group support an aggregation of IP Pools. Many Ip Pools of different gateway can be referenced by IP Pool Group.
                 The max number of IP Pools referenced by an Ip Pool Group is 1024 "                       �"The configuration list of IP address pool group, which is used to configure the relevant attributes of the IP address pool group inside the device."                       ?"
                Name of an IP Pool Group.
                "                       �"
                Vpn instance of an address Pool Group.
                Vpn instance of All IP Pools must accord with the vpn instance of IP Pool Group.
                Use string '--' to undo vpn instance in Pool Group.
                "                       �"Whether dereference all IP Pools in Pool Group.
                 Only support dereference all IP Pools in this operation. If dereference Pool one by one is needed, please use IPPoolGroupExtTable.
                "                       �"
                 Row status of IP Pool Group. 
                 Support Active, CreateAndGo and Destroy. 
                 "                      "Configuration extension table of the address pool group.
                 The extension table can set the order of an IP pool in IP Pool Group.
                 The extension table can be used to dereference an IP pool in IP pool Group.
                 "                       B"The configuration list of IP address pool group extension table."                       N"
                The IP Pool referenced in IP Pool Group.
                "                       �"The order of IP Pool in IP Pool Group.
                 Specify the move order to adjust the order of the IP Pool in IP Pool Group.
                 Only supoort set operation."                       �"
                 Row status of IP pool group extension. 
                 Support CreateAndGo and Destroy. 
                 "                       N"
                Display table of the address pool group.
                "                       @"The configuration list of IP address pool display group table."                       }"
                This object indicates the number of address pools referenced in the address pool group.
                "                       t"
                This object indicates the number of address pool groups referenced by domains.
                "                       t"
                This object indicates the total number of addresses in the address pool group.
                "                       M"
                The Used number of IP in IP Pool Group.
                "                       S"
                The Conflicted number of IP in IP Pool Group.
                "                       P"
                The Disable number of IP in IP Pool Group.
                "                       S"
                The Designated number of IP in IP Pool Group.
                "                       M"
                The Free number of IP in IP Pool Group.
                "                       N"
                The Used Percent of IP in IP Pool Group.
                "                      %"
                Set the domain search list which is uesed to fill content of DHCP packet option 119.
                The option is passed from the DHCP Server to the DHCP Client to specify the domain 
                search list used when resolving hostnames using DNS.
                "                       C"The configuration list of IP address pool DomainSearchList table."                       u"
                The domain search list which is used to fill content of DHCP packet option 119.
                "                       �"
                Row status of IP pool DomainSearchList. 
                Support CreateAndGo and Destroy.
                "                       R"
                The configuration table of IPv6 prefix pool.
                "                       -"The configuration list of IPv6 prefix pool."                        "The index of IPv6 prefix pool."                       "The name of IPv6 prefix pool"                       "The type of IPv6 prefix pool."                       _"The prefix of IPv6 prefix pool. This node is valid only for local and delegation prefix pool."                       Q"The prefix length of IPv6 prefix pool. Note that 0 is not a configurable value."                       �"The delegating prefix length of IPv6 prefix pool. Note that 0 is not a configurable value. This node is valid only for local and delegation prefix pool."                       6"The preferred lifetime(seconds) of IPv6 prefix pool."                       1"The valid lifetime(seconds) of the IPv6 prefix."                       ="The flag indicating whether the IPv6 prefix pool is locked."                       0"The vpn instance name of the IPv6 prefix pool."                       �"The reserved flag of the IPv6 prefix pool. 0-none reserved, 1-mac reserved, 2-mac plus lease reserved, 3-duid reserved, 4-duid plus lease reserved."                       b"The link address of the IPv6 remote prefix pool. This node is valid only for remote prefix pool."                       u"The flag indicates whether prefix pool is used in unshared-mode. The node is valid only for delegation prefix pool."                       >"Row admin status. Support adding, modification and deletion."                       v"The flag indicates whether the prefix pool only for DHCPv6 IA_PD. The node is valid only for delegation prefix pool."                       S"
                The configuration table of IPv6 address pool.
                "                       ."The configuration list of IPv6 address pool."                        "The index of IPv6 addres pool."                       "The name of IPv6 addres pool."                       "The type of IPv6 addres pool."                       +"The prefix pool name of IPv6 addres pool."                       �"The DNS of IPv6 addres pool. The format to set value is : operator+space+primary DNS+space+secondary DNS. operator: 1-Add, 2-Delete."                       *"The DNS search list of IPv6 addres pool."                       %"The preference of IPv6 addres pool."                       :"The flag indicating whether IPv6 address pool is locked."                       �"The renew time percent of IPv6 addres pool. When hwIPv6PoolRenewPercent is specified, you need also specify hwIPv6PoolRebindingPercent."                       �"The rebinding time percent of IPv6 addres pool. When hwIPv6PoolRebindingPercent is specified, you need also specify hwIPv6PoolRenewPercent."                       ="The flag indicating whether DHCPv6 rapid-commit is enabled."                       F"The flag indicating whether DHCPv6 server unicast option is enabled."                       9"Configure the name of Address Family Transition Router."                       >"Row admin status. Support adding, modification and deletion."                       ["
                The configuration table of IPv6 address pool's usage.
                "                       6"The configuration list of IPv6 address pool's usage."                       I"This object indicates the number of idle addresses in the address pool."                       K"This object indicates the number of addresses in use in the address pool."                       H"This object indicates the number of idle prefixes in the address pool."                       J"This object indicates the number of prefixes in use in the address pool."                       N"This object indicates the number of IPv6 addresses in the IPv6 address pool."                       U"This object indicates the number of IPv6 addresses in use in the IPv6 address pool."                       S"This object indicates the number of idle IPv6 addresses in the IPv6 address pool."                       Z"This object indicates the number of conflicting IPv6 addresses in the IPv6 address pool."                       b"This object indicates the number of IPv6 addresses that cannot be used in the IPv6 address pool."                       H"This object indicates the IPv6 address usage of the IPv6 address pool."                       M"This object indicates the number of NDRA prefixes in the IPv6 address pool."                       T"This object indicates the number of NDRA prefixes in use in the IPv6 address pool."                       R"This object indicates the number of idle NDRA prefixes in the IPv6 address pool."                       Y"This object indicates the number of conflicting NDRA prefixes in the IPv6 address pool."                       a"This object indicates the number of NDRA prefixes that cannot be used in the IPv6 address pool."                       L"This object indicates the IPv6 NDRA prefix usage of the IPv6 address pool."                       K"This object indicates the number of PD prefixes in the IPv6 address pool."                       R"This object indicates the number of PD prefixes in use in the IPv6 address pool."                       P"This object indicates the number of idle PD prefixes in the IPv6 address pool."                       W"This object indicates the number of conflicting PD prefixes in the IPv6 address pool."                       _"This object indicates the number of PD prefixes that cannot be used in the IPv6 address pool."                       J"This object indicates the IPv6 PD prefix usage of the IPv6 address pool."                       "IPv6 address pool name."                       L"
                The binding of client DUID and prefix.
                "                       *"The binding of client's DUID and prefix."                       "The client duid."                       "The binding prefix of client."                       0"Row admin status. Support adding and deletion."                       Y"
                The configuration table of the DHCPv6 server group.
                "                       0"The configuration list of DHCPv6 server group."                       #"The index of DHCPv6 server group."                       ""The name of DHCPv6 server group."                       "The primary DNS address."                       "The seconday DNS address."                       "The status of primary DNS."                       "The status of secondary DNS."                       Q"The flag indicating whether server will automaticly send DHCPv6 release packet."                       ."The referenced count of DHCPv6 server group."                       /"The outer interface of primary DHCPv6 server."                       1"The outer interface of secondary DHCPv6 server."                       +"The algorithm of selecting DHCPv6 server."                       &"The weight of primary DHCPv6 server."                       ("The weight of secondary DHCPv6 server."                       1"The vpn instance name of primary DHCPv6 server."                       3"The vpn instance name of secondary DHCPv6 server."                       >"Row admin status. Support adding, modification and deletion."                       i"The interface name whose IP address is the source IP address carried in the packets sent to the server."                       Z"
                The configuration table of IPv6 remote address pool.
                "                       5"The configuration list of IPv6 remote address pool."                       #"The index of remote address pool."                       ""The name of remote address pool."                       ."The prefix pool name of remote address pool."                       6"The DHCPv6 server group name of remote address pool."                       <"The flag indicating whether remote address pool is locked."                       8"The flag indicating whether to export ipv6 host route."                       >"Row admin status. Support adding, modification and deletion."                       C"The flag indicating whether to export host's ipv6 address route ."                       ?"The flag indicating whether to export host's pd prefix route."                       ?"The flag indicating whether to export host's nd prefix route."                       &"The weight of this Remote IPv6 pool."                           D"This object indicates the number of configured IPv6 address pools."                       H"This object indicates the number of idle IPv6 addresses on the device."                       G"This object indicates the number of idle IPv6 prefixes on the device."                       J"This object indicates the number of IPv6 addresses in use on the device."                       I"This object indicates the number of IPv6 prefixes in use on the device."                       C"This object indicates the number of IPv6 addresses on the device."                       J"This object indicates the number of IPv6 addresses in use on the device."                       H"This object indicates the number of idle IPv6 addresses on the device."                       O"This object indicates the number of conflicting IPv6 addresses on the device."                       W"This object indicates the number of IPv6 addresses that cannot be used on the device."                       B"This object indicates the usage of IPv6 addresses on the device."                       B"This object indicates the number of NDRA prefixes on the device."                       I"This object indicates the number of NDRA prefixes in use on the device."                       G"This object indicates the number of idle NDRA prefixes on the device."                       N"This object indicates the number of conflicting NDRA prefixes on the device."                       V"This object indicates the number of NDRA prefixes that cannot be used on the device."                       A"This object indicates the usage of NDRA prefixes on the device."                       @"This object indicates the number of PD prefixes on the device."                       G"This object indicates the number of PD prefixes in use on the device."                       E"This object indicates the number of idle PD prefixes on the device."                       L"This object indicates the number of conflicting PD prefixes on the device."                       T"This object indicates the number of PD prefixes that cannot be used on the device."                       ?"This object indicates the usage of PD prefixes on the device."                       H"
                DHCPv6 server configuration table.
                "                       +"The configuration of DHCPv6 server table."                       "The index of DHCPv6 server."                       $"The IPv6 address of DHCPv6 server."                       4"The name of VPN instance for the DHCPv6 server.   "                       "The IfIndex of DHCPv6 server."                       "The state of DHCPv6 server."                       &"The speed of sending solicit packet."                       :"The interval of solicit packets sent by DHCPv6 server.  "                       z"A Ext table for configuring options to DHCP server pools,
               include option code type and value and so on ."                       "DESCRIPTION."                       �"Sub Option ID.
                 When IP addresses are allocated by the built-in DHCP server, the option is a configuration parameter, which needs to be defined and explained by the carrier."                       9"Value indicates the type of sub-option, 1-ip, 2-string."                       "Value of the sub-option."                      C"This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6).
            while configuration new suboption, you must specify suboption type 
            and value"                       �"A table for configuring options which will be replied to client 
                 in according to specified option value of DHCP client request "                       "DESCRIPTION."                       G"Option ID.
                 Option code from DHCP request of client."                       G"Option ID.
                 Option code from DHCP request of client."                      "This object is used to configuration option code which is needed to 
                reply to client according to specified option value in DHCP request,
                Option code, from 2 to 254, include 2 and 254, exclude
                  3,6,15,44,46,50-54,57-60,82"                       �"Sub Option ID.
                 When IP addresses are allocated by the built-in DHCP server, the option is a configuration parameter, 
                 which needs to be defined and explained by the carrier."                       @"Value indicates the type of sub-option, 1-ip, 2-string, 3-hex."                       "Value of the sub-option."                      ="This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6).
            while configuration new option, you must specify option type 
            and value"                       P"A table for configuring the status of ipv6 address which in ipv6 local preifx "                       "DESCRIPTION."                       "Ipv6Address."                       �"Ipv6Address status: idle(0) occupied(1) prohibitive(2) conflictive(3).
				Status can set idle(0) when prohibitive(2) conflictive(3) reserved(7),set prohibitive(2) when idle(0)."                       "Ipv6 Local prefix's name."                       T"A table for configuring the status of ipv6 prefix which in ipv6 delegation preifx "                       "DESCRIPTION."                       "Ipv6Prefix."                       "Ipv6PrefixLength."                       �"Ipv6 Prefix status:idle(0) occupied(1) prohibitive(2) conflictive(3).
				Status can set idle(0) when prohibitive(2) conflictive(3) reserved(7),set prohibitive(2) when idle(0)."                        "Ipv6 Delegation prefix's name."                           )"Enable IP Pool Constant index function."                           !"The ipv4 remote pool algorithm."                       !"The ipv6 remote pool algorithm."                       C"The IPv4 dynamic address pool list in the CU separation scenario."                       ("Dynamic address pool usage statistics."                       "Network index."                       "Subnet index."                       "Low IP address of the subnet."                        "High IP address of the subnet."                       '"Number of IP addresses of the subnet."                       3"Number of conflicting IP addresses of the subnet."                       "Subnet usage."                       "The status of this subnet."                       C"IPv6 address pool usage statistics list in CU isolation scenario."                       c"Collect statistics about the usage of IPv6 address pools of UPs in the scenario of CU separation."                       "Id of ipv6 address pools."                       *"Number of IPv6 address pools configured."                       *"Number of idle IPv6 addresses on the UP."                       )"Number of idle IPv6 prefixes on the UP."                       ,"Number of in-use IPv6 addresses on the UP."                       +"Number of in-use IPv6 prefixes on the UP."                       +"Total number of IPv6 addresses on the UP."                       ,"Number of in-use IPv6 addresses on the UP."                       *"Number of idle IPv6 addresses on the UP."                       1"Number of conflicting IPv6 addresses on the UP."                       ."Number of disabled IPv6 addresses on the UP."                       "IPv6 address usage on the UP."                       +"Total number of ND RA prefixes on the UP."                       ,"Number of in-use ND RA prefixes on the UP."                       *"Number of idle ND RA prefixes on the UP."                       1"Number of conflicting ND RA prefixes on the UP."                       ."Number of disabled ND RA prefixes on the UP."                       "ND RA prefix usage on the UP."                       ("Total number of PD prefixes on the UP."                       "PD prefix usage on the UP."                       '"Number of idle PD prefixes on the UP."                       ."Number of conflicting PD prefixes on the UP."                       +"Number of disabled PD prefixes on the UP."                       "PD prefix usage on the UP."                       C"IPv4 address pool usage statistics list in CU isolation scenario."                       c"Collect statistics about the usage of IPv4 address pools of UPs in the scenario of CU separation."                       "Id of ipv4 address pool."                       *"Number of IPv4 address pools configured."                       *"Number of idle IPv4 addresses on the UP."                       ,"Number of in-use IPv4 addresses on the UP."                       1"Number of conflicting IPv4 addresses on the UP."                       ."Number of disabled IPv4 addresses on the UP."                       +"Total number of IPv4 addresses on the UP."                       "IPv4 address usage on the UP."                       1"IPv4 address pool usage statistics list of vpn."                       B"Collect statistics about the usage of IPv4 address pools of vpn."                       "VPN ID"                       8"The total number of all IPv4 address pools of the vpn."                       F"The total number of free addresses in all IPv4 addresses of the vpn."                       F"The total number of used addresses in all IPv4 addresses of the vpn."                       M"The total number of conflicting addresses in all IPv4 addresses of the vpn."                       R"The total number of addresses to be excluded from all IPv4 addresses of the vpn."                       R"The total number of addresses to be reserved from all IPv4 addresses of the vpn."                       W"The total number of addresses to be static binded from all IPv4 addresses of the vpn."                       "The threshold of the vpn."                       -"The used percent of addresses with the vpn."                       1"IPv6 address pool usage statistics list of vpn."                       B"Collect statistics about the usage of IPv6 address pools of vpn."                       "VPN ID"                       8"The total number of all IPv6 address pools of the vpn."                       F"The total number of free addresses in all IPv6 addresses of the vpn."                       F"The total number of used addresses in all IPv6 addresses of the vpn."                       M"The total number of conflicting addresses in all IPv6 addresses of the vpn."                       R"The total number of addresses to be excluded from all IPv6 addresses of the vpn."                       "The threshold of the vpn."                       -"The used percent of addresses with the vpn."                       )"The table of dap-server ip pool status."                       )"The entry of dap-server ip pool status."                       *"Index of address resource pool instance."                       -"Name of the address resource pool instance."                       "Address resource pool status."                       &"Total number of all subnet segments."                       )"Total number of subnet segments in use."                       '"Total number of free subnet segments."                       *"Total number of blocked subnet segments."                       !"Utilization of subnet segments."                       0"The table of dap-server ip pool subnet status."                       0"The entry of dap-server ip pool subnet status."                       '"Current status of the subnet segment."                       )"Client name registered with the server."                       "Subnet segment mask length."                       $"Total addresses in subnet segment."                       )"Initial IP of divisible subnet segment."                       )"End IP of distributable subnet segment."                       +"The table of dap-server ipv6 pool status."                       +"The entry of dap-server ipv6 pool status."                       *"Index of address resource pool instance."                       -"Name of the address resource pool instance."                       "Address resource pool status."                       "Total number of all prefixes."                       !"Total prefixes used for status."                       )"Total number of prefixes in idle state."                       #"Total number of prefixes blocked."                       "Prefix usage."                       2"The table of dap-server ipv6 pool prefix status."                       2"The entry of dap-server ipv6 pool prefix status."                       '"Current status of the subnet segment."                       )"Client name registered with the server."                       "Prefix mask length."                       "Prefix IPv6 address."                               "IP address of the user."                        "IP address of the DHCP server."                       "DHCP    VPN instance name."                       #"Exclusive index of IP pool group."                       "DHCP server down reason."                       "DAP name."                       /"Failure Cause of Address Segment Application."                       6"The Automatically Locked Address Pool Unlock Reason."                       :"This object indicates the name of a dynamic prefix pool."                       7"This object indicates the lenght of a dynamic prefix."                       "VPN-instance name."                       5"threshold value of all address of the vpn-instance."                       "index of UP-Group."                       D"Alarm threshold for the IP address usage of an address pool group."                       "Current usage."                       ""IP address of the DHCPv6 server."                       5"The Number of BRAS UNR VPN Import Routes threshold."                               �"
                1. Notification/alarm name: IP address conflict 
                2. Notification/alarm cause: A user IP address conflict occurs. "                 �"
                1 Notice/Trap name: IP address lease alarm.
                2 Notice/Trap generation cause: The user IP lease is over.
                3 Repair suggestion:
                    Check whether to renew configuring BAS IP pool."                 M"This object indicates the alarm generated when IP address allocation fails."                 n"
               This object indicates the alarm generated when the DHCP server goes Down.
                "                 �"
                This object indicates the alarm generated when the address pool gateway allocated by the DHCP server is different from the one configured locally.
                "                 �"
                This object indicates that the usage of the IP address pool exceeds the upper alarm threshold. 
                Solution: Check configurations of the IP address pool.
                "                 �"
                This object indicates that the usage of the IP address pool falls below the lower alarm threshold.
                "                 �"
                   This object indicates the alarm generated when the gateway unnumbered interface bound in the address pool is deleted through board removal and reinstallation.
                "                 �"
                This object indicates the alarm generated when the address usage of the address pool group reaches the alarm threshold.
                "                 �"
                This object indicates the alarm generated when the address usage of the address pool group falls below 90% of the alarm threshold.
                "                 U"
                The constance index of ip pool recover failure.
                "                 _"
                The constance index of  ipv6 prefix pool recover failure.
                "                 W"
                The constance index of ipv6 pool recover failure.
                "                 ]"
                The number of IP addresses in the IP pool is exhausted.
                "                 �"
                This object indicates that the number of IP addresses in use in an IP address pool falls below 90% of the total number of IP addresses in the address pool.
                "                 �"
                This object indicates the alarm generated when the addresses in an address pool group are exhausted.
                "                 �"
                This object indicates the alarm generated when the address usage of the address pool falls below 90%.
                "                 �"
                This object indicates the alarm generated when the percentage of addresses in use to the total number of addresses in an IPv6 address pool exceeds the alarm threshold (80% by default).
                "                 �"
                This object indicates the alarm generated when the IPv6 address usage falls below 90% of the alarm threshold.
                "                 �"
               This object indicates the alarm generated when addresses in an IPv6 address pool are exhausted and no more IPv6 addresses can be allocated. 
                "                 �"
                This object indicates the alarm generated when there are addresses in the IPv6 address pool available for allocation.
                "                �"
                This object indicates that the BRAS applies to a RADIUS server for address segments in a dynamic address pool but fails. 
                The alarm is generated in the following scenarios: 
                1. The server fails to give a response.
                2. The RADIUS server responds with a denial. 
                3. The RADIUS server responds that no addresses are assignable. 
                4. The addresses responded with by the RADIUS server are invalid. 
                5. The addresses responded with by the RADIUS server conflict with the addresses on the BRAS. 
                6. The address pool on the BRAS is full.
                "                 �"
                This object indicates that an address segment fails to be released (probably because the server does not exist).
                "                 �"
                This object indicates that the number of address segments allocated to a dynamic address pool has reached 256.
                "                 �"
                This object indicates that the number of address segments that are dynamically applies for has reached 4096.
                "                 b"
                The number of Subnets  in the IP pool exceeds the threshold.
                "                 c"
                The number of Subnets  in the IP pool is under the threshold.
                "                 g"
                The number of Subnets in the IP pool group exceeds the threshold.
                "                 i"
                The number of Subnets  in the IP pool group is under the threshold.
                "                 Y"
                The number of Subnets in the IP pool is exhausted. 
                "                 c"
                The number of Subnets  in the IP pool  is under the exhaust. 
                "                 `"
                The number of Subnets in the IP pool group is exhausted.  
                "                 g"
                The number of Subnets  in the IP pool group is under the exhaust.
                "                 s"
                The address pool was automatically locked due to address allocation failures.
                "                 Y"
                The automatically locked address pool was unlocked.
                "                 b"
                The number of Subnets  in the IP pool exceeds the threshold.
                "                 c"
                The number of Subnets  in the IP pool is under the threshold.
                "                 X"
                The number of Subnets in the IP pool is exhausted.
                "                 b"
                The number of Subnets  in the IP pool  is under the exhaust.
                "                 a"
                The number of Prefix  in the IP pool exceeds the threshold.
                "                 b"
                The number of Prefix  in the IP pool is under the threshold.
                "                 W"
                The number of Prefix in the IP pool is exhausted.
                "                 `"
                The number of Prefix in the IP pool  is under the exhaust.
                "                 D"
                Apply the prefix unsuccessful.
                "                 E"
                Release an prefix unsuccessful.
                "                 �"
                The number of prefix dynamically allocated to the device reached the upper limit allowed by the dynamic prefix pool.
                "                 �"
                The number of prefix dynamically allocated to the device reached the maximum number allowed.
                "                 r"
                The master main control board restarted after the address pool was isolated.
                "                 \"
                The IP address usage of the vpn reached the threshold.
                "                 _"
                The IP address usage of the vpn fell below the threshold.
                "                 ^"
                The IPv6 address usage of the vpn reached the threshold.
                "                 a"
                The IPv6 address usage of the vpn fell below the threshold.
                "                 �"
                The number of used IP addresses in the IP pool group exceeds the threshold.
                Repair suggestion: Check the configuration of the IP address pool group.
                "                 r"
                The number of used IP addresses in the IP pool group is under the threshold.
                "                 c"
                The number of IP addresses in the IP pool group is exhausted.
                "                 k"
                The number of IP addresses in the IP pool group is under the exhaust.
                "                 p"
               This object indicates the alarm generated when the DHCPv6 server goes Down.
                "                 �"
                The number of address segments dynamically allocated to the device reached the maximum number allowed.
                "                 �"
               The number of address segments dynamically allocated to the device falls below 90% of the maximum number allowed.
                "                 �"
                The number of prefix dynamically allocated to the device reached the maximum number allowed.
                "                 �"
                The number of prefix dynamically allocated to the device falls below 90% of the maximum number allowed.
                "                 i"
                The number of BRAS UNR VPN import route exceeded the maximum value.
                "                 k"
                The number of BRAS UNR VPN import route fell below the maximum value.
                "                         >"The compliance statement for systems supporting this module."                   )"The HUAWEI IP pool configuration group."                 ,"The HUAWEI IP section configuration group."                 3"The HUAWEI IP pool extension configuration group."                 3"The HUAWEI IP address status configuration group."                 4"The HUAWEI DHCP service group configuration group."                 -"The HUAWEI remote pool configuration group."                 &"The HUAWEI IP pool statistics group."                 $"The HUAWEI IP pool trap OID group."                 !"The HUAWEI IP pool traps group."                     1"The HUAWEI IP pool DHCP server configure group."                 u"A table for configuring options to DHCP server pools,
              include option code type and value and so on ."                 /"The HUAWEI Ip pool group configuration group."                 9"The HUAWEI Ip pool group extension configuration group."                 ."A table for displaying HUAWEI IP pool group."                 ["Set the domain search list name which is uesed to fill content of DHCP packet option 119."                 x"A table for configuring options to DHCP server pools,
              include suboption code type and value and so on ."                 �"Dhcp reply options which will be replied to client 
             in according to specified option value of DHCP client request "                 "."                 "."                 "."                 "."                 "."                 "."                 ("The HUAWEI IPv6 pool statistics group."                 5"The HUAWEI IPv6 address status configuration group."                 4"The HUAWEI IPv6 prefix status configuration group."                 )"Enable IP Pool Constant index function."                