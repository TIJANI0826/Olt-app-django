Y-- ==================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI-ISIS-CONF-MIB provides information about ISIS
-- Reference:
-- Version: V2.40
-- History:
-- <author>,   <date>,  <contents>
--  HUAWEI   2009-08-03  ISIS private MIB
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types are imported
-- 
-- ==================================================================
   "A system ID."              
B"A value that represents a type of Internet address.
                
                unknown(0)  An unknown address type.  This value MUST
                            be used if the value of the corresponding
                            InetAddress object is a zero-length string.
                            It may also be used to indicate an IP address
                            that is not in one of the formats defined
                            below.
                
                ipv4(1)     An IPv4 address as defined by the
                            InetAddressIPv4 textual convention.
                
                ipv6(2)     An IPv6 address as defined by the
                            InetAddressIPv6 textual convention.
                
                ipv4z(3)    A non-global IPv4 address including a zone
                            index as defined by the InetAddressIPv4z
                            textual convention.
                
                ipv6z(4)    A non-global IPv6 address including a zone
                            index as defined by the InetAddressIPv6z
                            textual convention.
                
                dns(16)     A DNS domain name as defined by the
                            InetAddressDNS textual convention.
                
                Each definition of a concrete InetAddressType value must be
                accompanied by a definition of a textual convention for use
                with that InetAddressType.
                
                To support future extensions, the InetAddressType textual
                convention SHOULD NOT be sub-typed in object type definitions.
                It MAY be sub-typed in compliance statements in order to
                require only a subset of these address types for a compliant
                implementation.
                
                Implementations must ensure that InetAddressType objects
                and any dependent objects (e.g., InetAddress objects) are
                consistent.  An inconsistentValue error must be generated
                if an attempt to change an InetAddressType object would,
                for example, lead to an undefined InetAddress value.  In
                
                
                
                --                  [Page 6]
                
                
                
                particular, InetAddressType/InetAddress pairs must be
                changed together if the address type changes (e.g., from
                ipv6(2) to ipv4(1))."              �"Denotes the length of a generic Internet network address
                prefix.  A value of n corresponds to an IP address mask
                that has n contiguous 1-bits from the most significant
                bit (MSB), with all other bits set to 0.
                
                An InetAddressPrefixLength value is always interpreted within
                the context of an InetAddressType value.  Every usage of the
                InetAddressPrefixLength textual convention is required to
                specify the InetAddressType object that provides the
                context.  It is suggested that the InetAddressType object be
                logically registered before the object(s) that use the
                InetAddressPrefixLength textual convention, if they appear
                in the same logical row.
                
                InetAddressPrefixLength values larger than
                the maximum length of an IP address for a specific
                InetAddressType are treated as the maximum significant
                value applicable for the InetAddressType.  The maximum
                significant value is 32 for the InetAddressType
                'ipv4(1)' and 'ipv4z(3)' and 128 for the InetAddressType
                'ipv6(2)' and 'ipv6z(4)'.  The maximum significant value
                for the InetAddressType 'dns(16)' is 0.
                
                The value zero is object-specific and must be defined as
                part of the description of any object that uses this
                syntax.  Examples of the usage of zero might include
                situations where the Internet network address prefix
                is unknown or does not apply.
                
                The upper bound of the prefix length has been chosen to
                be consistent with the maximum size of an InetAddress."              9"Denotes a generic Internet address.
                
                An InetAddress value is always interpreted within the context
                of an InetAddressType value.  Every usage of the InetAddress
                textual convention is required to specify the InetAddressType
                object that provides the context.  It is suggested that the
                InetAddressType object be logically registered before the
                object(s) that use the InetAddress textual convention, if
                they appear in the same logical row.
                
                The value of an InetAddress object must always be
                consistent with the value of the associated InetAddressType
                object.  Attempts to set an InetAddress object to a value
                inconsistent with the associated InetAddressType
                must fail with an inconsistentValue error.
                
                When this textual convention is used as the syntax of an
                index object, there may be issues with the limit of 128
                sub-identifiers specified in SMIv2, STD 58.  In this case,
                the object definition MUST include a 'SIZE' clause to
                limit the number of potential instance sub-identifiers;
                otherwise the applicable constraints MUST be stated in
                the appropriate conceptual row DESCRIPTION clauses, or
                in the surrounding documentation if there is no single
                DESCRIPTION clause that is appropriate."                                                5"
                The HUAWEI PRIVATE MIB contains objects belonging to processes of the IS-IS protocol existing on the system. 
                It defines the model used to represent data that exists elsewhere in the system and on peripheral devices. 
                There are no constraints on this MIB.""Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com
                 " "202210291540Z" "202210281228Z" "202111031017Z" "202110211528Z" "202106091906Z" "202010291709Z" "202008112031Z" "202007272036Z" "202007141534Z" "202001060950Z" "201801241710Z" "201712201030Z" "201711142049Z" "201710211821Z" "201708172029Z" "201705051632Z" "201611071720Z" "201609261500Z" "201607231600Z" "201606131600Z" "201602041100Z" "201511301100Z" "201510151100Z" "201508271900Z" "201504081147Z" "201503130900Z" "201411061518Z" "201401151710Z" "201308081131Z" "201304011153Z" "200308111200Z" @"revision 2.3.8 Modify the type of hwisisIpv6PrefixAddressMask." �"revision 2.3.9 added hwisisIpv6PrefixAddress, hwisisIpv6PrefixAddressMask, hwisisLocalFlexAlgorithm, hwisisRemoteFlexAlgorithm, hwisisLocatorPrefixConflict, hwisisLocatorPrefixConflictClear." ;"revision 2.3.8 Modify the type of hwisisCostAdjustReason." �"revision 2.3.7 added hwisisMtId, hwisisCostAdjustReason, hwisisOriginalCost, hwisisAdjustedCost, hwIsisLinkCostAdjustment, hwIsisLinkCostAdjustmentClear." �"Modify the MAX-ACCESS of hwIsisRemainingLifetime, hwIsisPurgeLspNum, hwIsisAffectedNodeNum, hwIsisTotalNodeNum, hwIsisInterval, hwIsisRuledOutDeviceNum." Q"revision 2.3.5 added hwIsisImportRouteReachMax, hwIsisImportRouteReachMaxClear." Y"Modify the type of hwLoopDetectType, hwLoopDetectProtocol and hwLoopDetectProtocolAttr." m"Modify hwIsisProcDynamicName, hwIsisAdjSysName, hwIsisConflictSystemID, hwIsisAutoSysId description format." R"Added 		            
	        hwRouteLoopDetected,
			hwRouteLoopDetectedClear" c"Added 		            
	                   hwIsisAuthModeInsecure,
		hwIsisAuthModeInsecureClear "  "revision 2.3.0 import ifIndex " o"revision 2.2.9 modify DEFVAL { three-way } to DEFVAL { threeWay }, and DEFVAL { none } to DEFVAL { disable } " "revision 2.2.8" "revision 2.2.7" �"modify hwIsisAdjChangeReason,hwisisSysInstance,hwisisSysLevelIndex,hwIsisOwnSysID,hwIsisAdjSysID,hwIsisPeerFlappingSuppressStatus,hwIsisSystemID,hwIsisSystemID1,hwIsisSystemID2,hwIsisSystemID3,hwIsisSystemIdConflict discription" "revision 2.2.5" "revision 2.2.4" "revision 2.2.3" "revision 2.2.2" "revision 2.2.1" "revision 2.2.0" "revision 2.1.9" "revision 2.1.8" "revision 2.1.7" "revision 2.1.6" "revision 2.1.5" "revision 2.1.4" "revision 2.1.3" "revision 2.1.2" "revision 2.1.1" "init"                       N"The set of commands of the Integrated IS-IS protocol existing on the system."                       �"Each row defines some commmands to a single process of the IS-IS protocol existing on the system. 
                These commands belong to the IS-IS process."                       ]"The value of this object identifies the IS-IS process ID. The value ranges from 1 to 65535."                       �"The value of this object identifies the name of the IPv4 VPN instance bound to the IS-IS process. The value ranges from 0 to 31."                       �"The value of this object identifies the name of the IPv6 VPN instance bound to the IS-IS process. The value ranges from 0 to 31.
                "                      �"The value of this object identifies the type of IS-IS area authentication.
                null (0): Area authentication is not configured.
                md5 (1): The password is sent after being encrypted through MD5.
                simple (2): The password is sent in the form of simple text.
                keychain (3): The key chain table that changes with time is sent after being encrypted through MD5.
                By default, area authentication is not configured.
                "                      V"This object indicates the password of IS-IS area authentication. The password is a string of characters.
                If the IS-IS area authentication mode is simple, the password is a string of 0 to 16 characters.
                If the IS-IS area authentication mode is MD5, the password is a string of 0 to 392 characters.
                If the IS-IS area authentication mode is keychain, the name is a string of 0 to 47 characters.
                The length 0 indicates that no IS-IS area authentication password is configured.
                When read, it always returns length 0."                      X"The value of this object identifies the packet authentication mode of IS-IS area authentication:
                none (0): Authentication mode is not configured.
                authenticateall (1): Encapsulates authentication information for both transmitted and received LSPs and SNPs.
                allsendonly (2): Encapsulates authentication information for both generated LSPs and SNPs; does not authenticate received LSPs or SNPs.
                snppacketauthenticationavoid (3): Encapsulates authentication information for only generated LSPs and authenticates received LSPs.
                snppacketsendonly (4): Encapsulates authentication information for generated LSPs and SNPs; authenticates only received LSPs but does not authenticate received SNPs.
                By default, authentication is not configured.
                "                       �"The value of this object identifies the code of area authentication.
                none (0): The authentication code is not configured.
                osi (10): indicates OSI authentication.
                ip (133): indicates IP authentication."                      "The value of this object identifies the type of IS-IS router domain authentication.
                null (0): Domain authentication is not configured.
                md5 (1): The password is sent after being encrypted through MD5.
                simple (2): The password is sent in the form of simple text.
                keychain (3): The key chain table that changes with time is sent after being encrypted through MD5.
                By default, IS-IS route domain authentication is disabled.
                "                      �"This object indicates the password of IS-IS routing domain authentication. The password is a string of characters.
                If the IS-IS routing domain authentication mode is simple, the password is a string of 0 to 16 characters.
                If the IS-IS routing domain authentication mode is MD5, the password is a string of 0 to 392 characters.
                If the IS-IS routing domain authentication mode is keychain, the name is a string of 0 to 47 characters.
                The length 0 indicates that the password of IS-IS routing domain authentication is not configured.
                When read, it always returns length 0."                      `"The value of this object identifies the packet authentication mode of IS-IS route domain authentication.
                none (0): Authentication mode is not configured.
                authenticateall (1): Encapsulates authentication information for both transmitted and received LSPs and SNPs.
                allsendonly (2): Encapsulates authentication information for both generated LSPs and SNPs; does not authenticate received LSPs or SNPs.
                snppacketauthenticationavoid (3): Encapsulates authentication information for only generated LSPs and authenticates received LSPs.
                snppacketsendonly (4): Encapsulates authentication information for generated LSPs and SNPs; authenticates only received LSPs but does not authenticate received SNPs.
                By default, authentication is not configured.
                "                       �"The value of this object identifies the code of domain authentication.
                none (0): The authentication code is not configured.
                osi (10): indicates OSI authentication.
                ip (133): indicates IP authentication."                      3"The value of this object identifies the level of the IS-IS process.
                level1 (1): indicates level 1.
                level2 (2): indicates level 2.
                level12 (3): indicates level 1-2.
                By default, the level of an IS-IS process is level-1-2.
                "                       �"The value of this object identifies the counter of level-1 LSPs on the interface. 
                The value is an integer ranging from 0 to 15. The value 0 indicates that no counter is configured. The default value is 5.
                "                       �"The value of this object identifies the intervals for level-1 LSP flooding. 
                The value ranges from 10 to 50000, in milliseconds. The default value is 10 ms.
                "                       �"The value of this object identifies the counter of level-2 LSPs on the interface. 
                The value is an integer ranging from 0 to 15. The value 0 indicates that no counter is configured. The default value is 5.
                "                       �"The value of this object identifies the intervals for level-2 LSP flooding. 
                The value ranges from 10 to 50000 in milliseconds. The default value is 10ms.
                "                       �"Generates a log when the status of the peer changes.
                null (0): not configured
                enabledwithouttopology (1): IPv4 topology
                enabledwithtopology (2): IPv6 topology"                       �"The value of this object identifies the timer of LSP refreshing. The value ranges from 1 to 65534, in seconds. The default value is 900s.
                "                       �"The value of this object identifies the maximum Keepalive time of the LSP. The value ranges from 2 to 65535, in seconds. The default value is 1200s.
                "                       �"The value of this object identifies the timer for the maximum delay of level-1 LSPs with the same LSP ID. 
                The value ranges from 1 to 120, in seconds. By default, the value is 2s.
                "                       �"The value of this object identifies the delay timer that initially triggers a level-1 LSP. 
                The value ranges from 0 to 60000, in milliseconds.
                By default, the value is 0.
                "                       �"The value of this object identifies the delay timer for generating two level-1 LSPs with the same LSP ID. 
                The value ranges from 1 to 60000, in milliseconds.
                By default, the value is 0.
                "                       �"The value of this object identifies the timer for the maximum delay of Level-2 LSPs with the same LSP ID. 
                The value ranges from 1 to 120, in seconds. By default, the value is 2s."                       �"The value of this object identifies the delay timer that initially triggers a Level-2 LSP. The value ranges from 1 to 60000, in milliseconds.
                By default, the value is 0.
                "                       �"The value of this object identifies the delay timer for generating two Level-2 LSPs with the same LSP ID. 
                The value ranges from 1 to 60000, in milliseconds.
                By default, the value is 0.
                "                       �"The value of this object identifies the maximum intervals for SPF calculation. 
                The value ranges from 1 to 120, in seconds. By default, the value is 5s.
                "                       �"The value of this object identifies the delay timer for initial SPF calculation. 
                The value ranges from 1 to 60000, in milliseconds. By default, the interval is 50ms.
                "                       �"The value of this object identifies the incremental delay timer for two SPF calculations. 
                The value ranges from 1 to 60000, in milliseconds. By default, the interval is 200ms."                      %"Configures the cost type of the IS-IS process:
                narrow (1): the narrow type
                narrowcompatible (2): the narrow-compatible type
                compatible (3): compatible type
                wide (4): wide type
                widecompatible (5): wide-compatible type
                narrowcompatiblerelax (6): narrow-compatible relax-spf-limit type
                compatible-relax (7): compatible relax-spf-limit type
                By default, the cost type of an IS-IS process is narrow.
                "                       �"Configures the name of the IS-IS dynamic host. The value is a string of 1 to 64 characters. When the length is 0, the configured IS-IS dynamic host name is deleted."                       �"Whether to enable IS-IS GR.
                true (1): enables IS-IS GR.
                false (2): does not enable IS-IS GR.
                By default, IS-IS GR is disabled."                      "The value of this object identifies the maximum intervals for enabling GR. 
                The value ranges from 0 to 1800, in seconds. By default, the value is 300 seconds.
                The value 0 indicates that GR is not configured.
                "                      C"This object indicates that the SA bit in the sent Hello packet is set to 1 after the GR-enabled device is started:
                true (1): enables this function.
                false (2): disables this function.
                By default, IS-IS does not suppress Hello PDUs from carrying SA bits.
                "                      #"Enables IS-IS TE.
                none (0): does not enable IS-IS TE.
                level1 (1): enables level-1 TE.
                level2 (2): enables level-2 TE.
                level12 (3): enables level-1-2 TE.
                By default, IS-IS TE is disabled.
                "                       �"Whether to enable BFD on each interface.
                true (1): enables BFD on each interface.
                false (2): does not enable BFD on each interface.
                By default, BFD is disabled on each interface.
                "                      "Enables BFD-FRR binding on each interface.
                true (1): enables BFD-FRR binding on each interface.
                false (2): does not enable BFD-FRR binding on each interface.
                By default, BFD-FRR binding is disabled on each interface.
                "                       �"The value of this object identifies the minimum interval for sending BFD packets.
                 If isis binding to vpn and ipv4-family not enable, The value is zero.
                "                       �"The value of this object identifies the minimum interval for receiving BFD packets.
                 If isis binding to vpn and ipv4-family not enable, The value is zero."                       �"The value of this object identifies the local detection multiplier. The value ranges from 1 to 255.
                 If isis binding to vpn and ipv4-family not enable, The value is zero.
                "                      �"This objects indicates whether the IPv6 topology is enabled for the IS-IS process:
                disable(0): disables the IPv6 topology of the IS-IS process.
                standard(1): specifies the topology type as the standard mode.
                ipv6(2): enables IPv6 for the IS-IS process in the IPv6 topology.
                compatible(3): specifies the topology type as the compatible mode.
                compatibleenablemtspf(4): indicates that SPF calculation is performed in the IPv6 topology in compatible mode.
                By default, the IPv6 topology is not enabled for the IS-IS process.
                "                       �"This object supports settings of two values.
                createAndGo(4): A row is created.
                destroy(6): A row is deleted."                      "Enables BFD-FRR binding on each interface.
                true (1): enables optional checksum for CSNP,PSNP and IIH PDU.
                false (2): disables optional checksum for CSNP,PSNP and IIH PDU.
                By default, optional checksum is disabled.
                "                       �"This object is used to set the maximum limit number of IS-IS LSPs. 
				The value range is from 0 to 500000. 
				The default value 0 means no limit."                       �"This object is used to set the upper threshold value of LSPs limit. 
				The value range is from 1 to 100. 
				The default means 80."                       �"This object is used to set the lower threshold value of LSPs limit. 
				The value range is from 1 to 100. 
				The default means 70."                       6"This object is used to get the number of IS-IS LSPs."                      8"This object indicates the keychain name of IS-IS area authentication. The name is a string of characters.
                The name is a string of 0 to 47 characters. The length 0 indicates that no IS-IS area authentication keychain name is configured.
                When read, it returns the keychain name."                      <"This object indicates the keychain name of IS-IS domain authentication. The name is a string of characters.
                The name is a string of 0 to 47 characters. The length 0 indicates that no IS-IS domain authentication keychain name is configured.
                When read, it returns the keychain name."                       %"Set of network entities of process."                       3"Each row means one network entity of the process."                       U"The value of this object identifies the NET index. It is a string of 8 to 20 bytes."                       �"The value of this object identifies the status of the NET table.
                createAndGo(4): A row is created.
                destroy(6): A row is deleted."                       �"Set of commands of the integrated IS-IS protocol existing on the system, 
                which are different for IP type and MT.
                "                       �"Each row defines some commands specific to a single process of the IS-IS protocol existing on the system. 
                These commands are different from ProcBaseTable for IP type and MT."                       �"This object indicates the IP protocol type:
                ipv4(1): indicates IPv4.
                ipv6(2): indicates IPv6."                       B"The value of this object identifies the MT ID.
                "                       ~"This object indicates the name of the topology to be bound to an IS-IS process. The value is a string of 1 to 31 characters."                      �"This object is used to set the mode in which default routes are advertised:
                null(0): indicates that default routes are not advertised.
                always(1): indicates that default routes are always advertised.
                matchdefault(2): If there is the default route that is generated by another routing protocol or another IS-IS process in the routing table, this default route is advertised in an LSP. If this default route is deleted from the routing table, this default route is not advertised in the LSP.
                routepolicy(3): indicates that default routes are advertised according to the routing policy."                       n"This object indicates the routing policy name. 
                The name is a string of 0 to 40 characters."                       9"This object is used to set the cost of a default route."                       G"This object is used to set the administrative tag of a default route."                      ""This object is used to set the level of a default route:
                level1(1): indicates Level-1.
                level2(2): indicates Level-2.
                level12(3): indicates Level-1-2.
                By default, the level of a default route is Level-2.
                "                      "This object indicates whether an IS-IS process is prevented from learning default routes or adding them to the routing table:
                true(1): indicates that an IS-IS process is prevented from learning default routes or adding them to the routing table.
                false(2): indicates that an IS-IS process can learn default routes and then add them to the routing table.
                By default, an IS-IS process can learn default routes and then add them to the routing table.
                "                       �"Global level-1 cost for all the interfaces. 
                If the costStyle of the process is wide or widecompatible, the range of this value is from 1 to 16777215, else the range of this value is from 1 to 63."                       �"Global level-2 cost for all the interfaces.
                If the costStyle of the process is wide or widecompatible, the range of this value is from 1 to 16777215, else the range of this value is from 1 to 63."                       �"This object is used to set the preference of an IS-IS route. The value ranges from 1 to 255, and the default value is 15.
                 If isis binding to vpn and ip-family not enable, The value is zero."                       �"This object indicates the name of the routing policy used for route filtering. The name is a string of 0 to 40 characters.
                Zero-length means no configuration."                       �"This object is used to set the number of equal-cost routes. 
                 The range and the default value depend on license.
                 If isis binding to vpn and ip-family not enable, The value is zero."                       V"This object is used to set the default administrative tag of an IS-IS Level-1 route."                       V"This object is used to set the default administrative tag of an IS-IS Level-2 route."                       5"This object is used to set the reference bandwidth."                      g"This object indicates whether automatic interface cost calculation is enabled:
                true(1): indicates that automatic interface cost calculation is enabled.
                false(2): indicates that automatic interface cost calculation is disabled.
                By default, automatic interface cost calculation is disabled.
                "                      �"This object indicates whether a device is enabled to notify its neighbors that its status is Overload:
                disable (0): indicates that a device is disabled from notifying its neighbors that its status is Overload.
                enable(1): indicates that a device is enabled to notify its neighbors that its status is Overload.
                onstartup(2): When a device is restarted or becomes faulty, it notifies its neighbors that its status is Overload."                      �"This object indicates that the type of routes to be advertised when a device is in the Overload state:
                null(0): indicates that no route type is specified.
                external(1): indicates the imported external routes.
                interlevel(2): indicates the leak routes.
                externalandinterlevel(3): indicates the imported external and leak routes."                       �"The value of this object identifies the interval for waiting to clear the overload bit after the system is started. 
                The value ranges from 5 to 86400, in seconds. The default value is 600s."                       4"This object indicates the system ID of a neighbor."                      _"The value of this object identifies the maximum interval for waiting to clear the
                overload bit after the system is started and the neighbor relationship is established. 
                The value ranges of set is from 5 to 86400, in seconds. The default value is 1200s. 
                0 means no configuration.
                "                      �"This object indicates whether the function of waiting for BGP convergence is enabled:
                true(1): indicates that the function of waiting for BGP convergence is enabled.
                false(2): indicates that the function of waiting for BGP convergence is disabled.
                By default, the function of waiting for BGP convergence is disabled.
                "                       �"This object indicates the row status of this table:
                createAndGo(4): indicates that a row is created.
                destroy(6): indicates that a row is deleted."                       �"This object is used to set the maximum limit number of IS-IS Level-1 redistribute routes advertised in LSPs. 
                The value range is from 0 to 10000000. 
                The default value 0 means no limit."                       �"This object is used to set the maximum limit number of IS-IS Level-2 redistribute routes advertised in LSPs. 
                The value range is from 0 to 10000000. 
                The default value 0 means no limit."                       �"This object is used to set the upper threshold value of level-1 import limit. 
                The value range is from 1 to 100. 
                The default means 80."                       �"This object is used to set the upper threshold value of level-2 import limit. 
                The value range is from 1 to 100. 
                The default means 80."                       �"This object is used to set the lower threshold value of level-1 import limit. 
                The value range is from 1 to 100. 
                The default means 70."                       �"This object is used to set the lower threshold value of level-2 import limit. 
                The value range is from 1 to 100 
                The default means 70."                       A"This object is used to get the number of level-1 import routes."                       A"This object is used to get the number of level-2 import routes."                       0"Set of commands of priority-based convergence."                       e"Entry of priority-based convergence, each entry means one priority-based command for IS-IS process."                       �"This object indicates the preference of a route:
                medium(1): indicates medium.
                high(2): indicates high.
                critical(3): indicates critical."                      
"This object indicates the type of a Level-1 route preference policy:
                none(0): indicates that no policy type is specified.
                prefix(1): indicates the IP prefix policy.
                tag(2): indicates the administrative tag policy."                      
"This object indicates the type of a Level-2 route preference policy:
                none(0): indicates that no policy type is specified.
                prefix(1): indicates the IP prefix policy.
                tag(2): indicates the administrative tag policy."                       �"This object indicates the name of a Level-1 IP prefix policy. 
                The name is a string of 0 to 169 characters.
                Zero-length means no configuration."                       �"This object indicates the name of a Level-2 IP prefix policy. 
                The name is a string of 0 to 169 characters.
                Zero-length means no configuration."                       O"This object indicates the administrative tag of the Level-1 route preference."                       O"This object indicates the administrative tag of the Level-2 route preference."                       %"Set of IP summary addresses to use."                       -"Each entry contains one IP summary address."                       ?"This object indicates the IP address of the summarized route."                       @"This object indicates the subnet mask of the summarized route."                      n"This object indicates whether the function of avoiding learning the summarized routes through SPF calculation is enabled:
                true(1): indicates that the function is enabled.
                false(2): indicates that the function is disabled.
                By default, the summarized routes can be learned through SPF calculation.
                "                      s"This object indicates whether the function of generating Null0 routes during route summarization is enabled:
                true(1): indicates that the function is enabled.
                false(2): indicates that the function is disabled.
                By default, the function of generating Null0 routes during route summarization is disabled.
                "                       �"This object indicates the level of the summarized route:
                level1(1): indicates Level-1.
                level2(2): indicates Level-2.
                level12(3): indicates Level-1-2."                       Y"This object indicates the administrative tag of the summarized route.
                "                       �"This object indicates the row status of this table:
                createAndGo(4): indicates that a row is created.
                destroy(6): indicates that a row is deleted."                       "Set of import route command."                        "Entry of import route command."                      8"This object indicates the routing protocol of the imported routes:
                direct(1): indicates direct.
                static(2): indicates static.
                rip(3): indicates RIP.
                ospf(4): indicates OSPF
                isis(5): indicates IS-IS.
                bgp(6): For VPN instance, indicates EBGP and IBGP, otherwise indicates EBGP.
                ospfv3(7): indicates OSPFv3.
                ripng(8): indicates RIPng.
                bgpIbgp(9): For VPN instance, this is unusable, otherwise indicates IBGP and EBGP."                       �"Process ID of the route protocols. The range is from 1 to 65535. 
                If the protocol is direct, static or bgp, this value can only be 1."                      "This object indicates whether the original cost of the source route is inherited:
                true(1): indicates that the original cost of the source route is inherited.
                false(2): indicates that the original cost of the source route is not inherited."                      "Cost of the imported routes. 
                If the costStyle of the process is wide or widecompatible,
                the range of this value is from 0 to 4261412864, 
                else the range of this value is from 0 to 63. 0 means no configuration."                      C"This object indicates the cost type of the imported external route. This object does not apply to IPv6.
                internal(1): indicates internal.
                external(2): indicates external.
                This node is invalid for IPv6. By default, the cost type of the imported external route is external."                       �"This object indicates the local IS-IS level of the imported route:
                level1(1): indicates Level-1.
                level2(2): indicates Level-2.
                level12(3): indicates Level-1-2."                       �"This object indicates the administrative tag assigned to an imported route.
                If this object is not configured, the value will be 0."                      "This object indicates the name of the routing policy used to import routes. 
                The name is a string of 0 to 40 characters. 
                The length 0 indicates that no name is configured for the routing policy used to import routes.
                "                       �"This object indicates the row status of this table:
                createAndGo(4): indicates that a row is created.
                destroy(6): indicates that a row is deleted."                       "Set of route leak commands."                       "Entry of route leak commands."                       �"This object indicates the index of the route leaking type:
                level1intolevel2(1): indicates that Level-1 routes are leaked to Level-2.
                level2intolevel1(2): indicates that Level-2 routes are leaked to Level-1."                       }"This object indicates the tag of route leaking.
                If the tag is not configured, the reading value will be 0."                      |"This object indicates the type of the policy used for route leaking:
                none(0): indicates that no policy type is specified.
                basicAcl(1): indicates the number of a basic ACL.
                aclName(2): indicates the ACL name.
                ipPrefix(3): indicates the IPv4 prefix.
                routePolicy(4): indicates the routing policy."                       �"The value of this object identifies the number of a basic ACL. 
                The value ranges from 2000 to 2999.
                0 means no configuration, The range of this value is from 2000 to 2999.
                "                      T"The policy name of route leak. If policy type is aclName, the length of this value is from 1 to 32. 
                If policy type is ipPrefix 
                the length of this value is from 1 to 169. 
                If policy type is routePolicy, the length of this value is from 1 to 40.
                The default length is 0."                       �"This object indicates the row status of this table:
                createAndGo(4): indicates that a row is created.
                destroy(6): indicates that a row is deleted."                       "Set of Frr commands."                       7"Entry of frr commands for the specific MT of process."                       �"The value of this object identifies the FRR policy name. 
                The value is a string of 1 to 40 characters. Value 0 indicates that the FRR policy is deleted."                      "The value of this object identifies the level of the FRR LFA algorithm.
                null(0): cancels the operation of the LFA algorithm.
                level1(1): indicates Level-1.
                level2(2): indicates Level-2.
                level12(3): indicates Level-1-2."                       �"The value of this object identifies the status of FRR:
                enable(1): enables FRR.
                disable(2): disables FRR.
                By default, FRR is disabled.
                "                       W"Set of commands on interface of the Integrated IS-IS protocol existing on the system."                       d"Each row defines some commands to a single interface of the IS-IS protocol existing on the system."                       ;"The value of this object identifies the interface index. "                       �"The value of this object identifies the status of IPv4 IS-IS on an interface:
                enable(1): enables IPv4 IS-IS.
                disable(2): disables IPv4 IS-IS."                       �"The value of this object identifies the status of IPv6 IS-IS on an interface: 
                enable(1): enables IPv6 IS-IS. 
                disable(2): disables IPv6 IS-IS."                      "The value of this object identifies the level of an interface:
                level1(1): indicates Level-1.
                level2(2): indicates Level-2.
                level12(3): indicates Level-1-2.
                By default, the interface is at Level-1-2."                      �"The value of this object identifies whether the broadcast interface is simulated as a P2P interface:
                enable(1): indicates that the broadcast interface is simulated as a P2P interface.
                disable(2): indicates that the broadcast interface is not simulated as a P2P interface.
                By default, broadcast interfaces are not simulated as P2P interfaces.
                "                       �"The value of this object identifies the interval for sending Level-1 Hello PDUs. 
                The value ranges from 3 to 255, in seconds. By default, the value is 10s.
                "                       �"The value of this object identifies the interval for sending Level-2 Hello PDUs. 
                The value ranges from 3 to 255, in seconds. By default, the value is 10s.
                "                       �"The value of this object identifies the number of Level-1 Hello PDUs that fail to received from the IS-IS neighbor before the neighbor declared Down. 
                The value ranges from 3 to 1000. By default, the value is 3."                       �"The value of this object identifies the number of Level-2 Hello PDUs that fail to received from the IS-IS neighbor before the neighbor declared Down. 
                The value ranges from 3 to 1000. By default, the value is 3."                      ."The value of this object identifies the mode of authenticating Level-1 Hello PDUs:
                null(0): indicates that area-based authentication is not configured.
                md5(1): indicates that the password is encrypted through MD5 and then sent.
                simple(2): indicates that the password is sent in plaintext.
                keychain(3): indicates that the key-chain that varies with the time is encrypted through MD5 and then sent.
                By default, area-based authentication is not configured.
                "                      v"The value of this object identifies the authentication password of Level-1 Hello packets. The password is a string of characters.
                If the packet authentication mode is simple, the password is a string of 0 to 16 characters.
                If the packet authentication mode is MD5, the password is a string of 0 to 392 characters.
                If the packet authentication mode is keychain, the name is a string of 0 to 47 characters.
                The length 0 indicates that the authentication password of Level-1 Hello packets is not configured.
                When read, it always returns length 0."                      �"The value of this object identifies the mode of sending the authentication password of Level-1 Hello PDUs:
                true(1): indicates that the passwords in only the sent PDUs are authenticated but not in the received PDUs.
                false(2): indicates that the passwords in both sent and received PDUs are authenticated.
                By default, the passwords in both sent and received PDUs are authenticated."                      "The value of this object identifies the authentication code of Level-1 Hello PDUs:
                none(0): indicates that no authentication is configured.
                osi(10): indicates OSI authentication.
                ip(133): indicates IP authentication."                      *"The value of this object identifies the mode of authenticating Level-2 Hello PDUs:
                null(0): indicates that area-based authentication is not configured.
                md5(1): indicates that password is encrypted through MD5 and then sent.
                simple(2): indicates that the password is sent in plaintext.
                keychain(3): indicates that the key-chain that varies with the time is encrypted through MD5 and then sent.
                By default, area-based authentication is not configured.
                "                      v"The value of this object identifies the authentication password of Level-2 Hello packets. The password is a string of characters.
                If the packet authentication mode is simple, the password is a string of 0 to 16 characters.
                If the packet authentication mode is MD5, the password is a string of 0 to 392 characters.
                If the packet authentication mode is keychain, the name is a string of 0 to 47 characters.
                The length 0 indicates that the authentication password of Level-2 Hello packets is not configured.
                When read, it always returns length 0."                      �"The value of this object identifies the mode of sending the authentication password of Level-2 Hello PDUs:
                true(1): indicates that the passwords in only the sent PDUs are authenticated but not in the received PDUs.
                false(2): indicates that the password is authenticated in the PDUs that are both sent and received.
                By default, the passwords in both sent and received PDUs are authenticated."                      "The value of this object identifies the authentication code of Level-2 Hello PDUs:
                none(0): indicates that no authentication is configured.
                osi(10): indicates OSI authentication.
                ip(133): indicates IP authentication."                      ."The value of this object identifies the status of synchronization of IS-IS and LDP:
                enable(1): enables synchronization of IS-IS and LDP.
                disable(2): disables synchronization of IS-IS and LDP.
                By default, synchronization of IS-IS and LDP is disabled."                      "The value of this object identifies the timeout period of the Holddown time for synchronization of IS-IS and LDP. 
                The value ranges from 0 to 65535, in seconds. By default, the value is 10s. 0 means to stop Holddown timer.
                -1 means no configuration."                      K"The value of this object identifies the timeout period of the Hold-Max-Cost time for synchronization of IS-IS and LDP. 
                The value ranges from 0 to 65536, in seconds. 
                By default, the value is 10s. The value of 65536 means infinite. 0 means to stop Hold-Max-Cost timer. -1 means no configuration."                      k"The value of this object identifies whether IS-IS sends small Hello PDUs without the padding field:
                enable(1): indicates that IS-IS sends small Hello PDUs without the padding field.
                disable(2): indicates that IS-IS does not send small Hello PDUs without the padding field.
                By default, the function is disabled."                      �"The value of this object identifies whether the segment in an IP address is checked:
                enable(1): indicates that the segment in an IP address is not checked.
                disable(2): indicates that the segment in an IP address is checked.
                By default, the segment in an IP address is checked.
                This object applies to only P2P interfaces.
                "                      "The value of this object identifies whether fast RPR loop detection is enabled:
                enable(1): enables fast RPR loop detection.
                disable(2): disables fast RPR loop detection.
                By default, fast RPR loop detection is disabled."                      k"The value of this object identifies whether IS-IS sends standard Hello PDUs with the padding field:
                enable(1): indicates that IS-IS sends standard Hello PDUs with the padding field.
                disable(2): indicates that IS-IS does not send standard Hello PDUs with the padding field.
                By default, the function is disabled."                       �"The value of this object identifies the interval for resending LSPs. 
                The value ranges from 1 to 300, in seconds. The default value is 5.
                This object applies to only P2P interfaces.
                "                       �"The value of this object identifies the interval for sending Level-1 CSNP PDUs on an interface. 
                The value ranges from 1 to 65535, in seconds. The default value is 10."                       �"The value of this object identifies the interval for sending Level-2 CSNP PDUs on an interface. 
                The value ranges from 1 to 65535, in seconds. The default value is 10."                       �"The value of this object identifies the interval for sending batch of LSPs or CSNPs on an interface. The value ranges from 1 to 10000, in milliseconds. 
                By default, the value is 50."                       �"The value of this object identifies the number of a bundle of LSPs. The value ranges from 1 to 1000. 
                By default, it is 10."                       �"The value of this object identifies the priority of the Level-1 DIS, which is valid only on a broadcast interface. 
                The value ranges from 0 to 127. By default, it is 64.
                "                       �"The value of this object identifies the priority of the Level-2 DIS, which is valid only on a broadcast interface. 
                The value ranges from 0 to 127. By default, it is 64."                      R"The value of this object identifies whether the status of an IS-IS interface is set to silent.
                enable(1): indicates that the status of IS-IS interface is set to silent.
                disable(2): indicates that the status of IS-IS interface is not set to silent.
                By default, the function is disabled."                       �"The value of this object identifies the mesh-group ID. The value ranges from 0 to 4294967295. Value 0 indicates that the mesh-group ID is not set."                      T"The value of this object identifies the mesh block function. If this function is configured, the set mesh-group ID is deleted. The value of this object can be:
                enable(1): enables the mesh block function.
                disable(2): disables the mesh block function.
                By default, the function is disabled."                      
"The value of this object identifies the DIS name of an interface. 
                The configuration is applicable to only a broadcast interface. The value is a string of 0 to 64 characters. 
                Value 0 indicates that the DIS name is not configured."                      "The value of this object identifies the mode of negotiating the setup of a neighbor relationship on P2P interfaces:
                none(0): indicates that the negotiation mode used to establish a neighbor relationship is not specified.
                twoWay(1): indicates that a neighbor relationship is set up through negotiations in two-way handshake mode.
                threeWay(2): indicates that a neighbor relationship is set up through negotiations in three-way handshake mode.
                threeWayOnly(3): indicates that a neighbor relationship is set up through negotiations in three-way handshake mode and the backward compatibility is not supported.
                By default, a neighbor relationship is set up through negotiations in three-way handshake mode."                      <"The value of this object identifies whether the OSICP check is required:
                enable(1): enables the OSICP check.
                disable(2): disables the OSICP check.
                By default, the function is disabled.
                This object applies to only P2P interfaces.
                "                       �"The value of this object identifies the setting of two values:
                createAndGo(4): creates one row.
                destroy(6): deletes one row."                      Y"The value of this object identifies the keychain name of Level-1 Hello packets. The keychain name is a string of characters.
                The name is a string of 0 to 47 characters. The length 0 indicates that the authentication password of Level-1 Hello packets is not configured.
                When read, it returns the keychain name."                      Y"The value of this object identifies the keychain name of Level-2 Hello packets. The keychain name is a string of characters.
                The name is a string of 0 to 47 characters. The length 0 indicates that the authentication password of Level-2 Hello packets is not configured.
                When read, it returns the keychain name."                      R"The value of this object identifies whether the snpa check of lsp and snp is required.
                enable(1): enables the snpa check.
                disable(2): disables the snpa check.
                By default, the function is disabled.
                This object applies to only simulated P2P interfaces.
                "                       �"Set of some specific commands on interface of the Integrated IS-IS protocol existing on the system, which are different of IP type."                       �"Entry of Some specific commands on interface of the Integrated IS-IS protocol existing on the system, which are different of IP type."                      o"The value of this object identifies the Level-1 cost of an interface. 
                If the cost style is wide or widecompatible, the range of this value is from 0 to 16777215, 
                else the range of this value is from 0 to 63.
                The value of 0 means undo this configuration, and the cost of the circuit will become the default value."                      o"The value of this object identifies the Level-2 cost of an interface. 
                If the cost style is wide or widecompatible, the range of this value is from 0 to 16777215, 
                else the range of this value is from 0 to 63.
                The value of 0 means undo this configuration, and the cost of the circuit will become the default value."                       �"The value of this object identifies the tag value of a Level-1 interface.
                The value ranges from 0 to 4294967295. By default, it is 0, which indicates that the set tag value is deleted.
                "                       �"The value of this object identifies the tag value of a Level-2 interface.
                The value ranges from 0 to 4294967295. By default, it is 0, which indicates that the set tag value is deleted.
                "                      U"The value of this object identifies whether the advertisement of the interface address is suppressed:
                Null(0): indicates that the interface address can be advertised.
                level1(1): indicates that the advertisement of the Level-1 interface address is suppressed.
                level2(2): indicates that the advertisement of the Level-2 interface address is suppressed.
                level12(3): indicates that the advertisement of the Level-1 and Level-2 interface addresses is suppressed.
                By default, the interface address can be advertised."                      �"The value of this object identifies whether an interface is enabled to become a backup interface in Loop Free Alternate (LFA) calculation.
                Null(0): disables an interface from becoming a backup interface in LFA calculation.
                level1(1): specifies an interface as a backup interface in Level-1.
                level2(2): specifies an interface as a backup interface in Level-2.
                level12(3): specifies an interface as a backup interface in Level-1 and Level-2."                       �"This object indicates the row status of this table:
                createAndGo(4): indicates that a row is created.
                destroy(6): indicates that a row is deleted."                       ["Set of BFD commands on interface of the Integrated IS-IS protocol existing on the system."                       ]"Entry of BFD commands on interface of the Integrated IS-IS protocol existing on the system."                      $"The value of this object identifies the BFD status:
                enable(1): enables BFD.
                disable(2): disables BFD.
                static(3): configures static BFD.
                block(4): blocks BFD on an interface.
                By default, BFD is not enabled."                       �"The value of this object identifies the minimum interval for sending BFD packets. 
                The value range and default value of this object are determined by the license file."                       �"The value of this object identifies the minimum interval for sending BFD packets. 
                The value range and default value of this object are determined by the license file."                       �"The value of this object identifies the local BFD detection multiplier. 
                The value range and default value of this object are determined by the license file."                      6"This object indicates that the BFD status is bound to IS-IS Auto FRR.
                enable(1): indicates that BFD is bound to IS-IS Auto FRR.
                disable(2): indicates that BFD is not bound to IS-IS Auto FRR.
                By default, the BFD session status is not bound to IS-IS Auto FRR."                           ="This object indicates the cause of the neighbor Down event."                       *"This object indicates the IS-IS process."                       '"This object indicates an IS-IS level."                       t"This object indicates the system ID of an IS-IS process. The system ID and area address are a major part of a NET."                       t"This object indicates the system ID of an IS-IS process. The system ID and area address are a major part of a NET."                       �"Configures the name of the IS-IS dynamic host. The value is a string of 1 to 64 characters. When the length is 0, the configured IS-IS dynamic host name is deleted."                      e"The ID for this instance of the Integrated IS-IS protocol. This value is appended to each of the area addresses to form the Network Entity Titles. The derivation of a value for this object is implementation-specific.  Some implementations may automatically assign values and not permit an SNMP write, while others may require the value to be set manually."                      e"The ID for this instance of the Integrated IS-IS protocol. This value is appended to each of the area addresses to form the Network Entity Titles. The derivation of a value for this object is implementation-specific.  Some implementations may automatically assign values and not permit an SNMP write, while others may require the value to be set manually."                       "Local IP address."                       "IP address of the remote end."                       "Neighbor IP address."                      _"This object indicates the mode of the IS-IS neighbor relationship flapping suppression.
none(1): IS-IS neighbor relationship flapping suppression is not started yet.
holddown(2): IS-IS neighbor relationship flapping suppression works in Hold-down mode.
holdmaxcost(3): IS-IS neighbor relationship flapping suppression works in Hold-max-cost mode."                        "The remaining-lifetime of LSP."                       ("The dynamic host name of IS-IS device."                        "IP address of of IS-IS device."                       ("The IS-IS device purge the lsp number."                       )"The IS-IS device affect the lsp number."                       "The IS-IS total node number."                       "The statistic interval."                       "The rule out device number."                       "The IS-IS System ID."                       c"This object indicates a system ID which is used to uniquely identify a host or router in an area."                        "IP address of of IS-IS device."                       c"This object indicates a system ID which is used to uniquely identify a host or router in an area."                       ("The dynamic host name of IS-IS device."                        "IP address of of IS-IS device."                       c"This object indicates a system ID which is used to uniquely identify a host or router in an area."                       ("The dynamic host name of IS-IS device."                        "IP address of of IS-IS device."                       c"This object indicates a system ID which is used to uniquely identify a host or router in an area."                       Z"This object indicates the name of the insecure authentication mode configured for IS-IS."                       <"This object indicates the protocol type of loop detection."                       C"This object indicates the protocol of the routing loop detection."                       O"This object indicates the protocol attribution of the routing loop detection."                       O"This object indicates the first redistribute ID of the detected routing loop."                       P"This object indicates the second redistribute ID of the detected routing loop."                       F"Maximum number of routes that can be advertised in an IS-IS process."                       "IS-IS multi-topology ID."                       0"The reason for the IS-IS link cost adjustment."                       "Original IS-IS link cost."                       :"Adjusted IS-IS link cost triggered by the current event."                       "IPv6 prefix address."                       "IPv6 prefix address mask."                       "Local Flexible Algorithm."                       "Remote Flexible Algorithm."                               Y"The compliance statement for entities implementing
                the Huawei ISIS MIB"                   #"The group of hwIsisProcBaseGroup."                 $"The group of hwIsisProcMTExtGroup."                 )"The group of hwIsisPrefixPriorityGroup."                 ""The group of hwIsisSummaryGroup."                 "The group of hwIsisNETGroup."                 &"The group of hwIsisImportRouteGroup."                 $"The group of hwIsisRouteLeakGroup."                 "The group of hwIsisFrrGroup."                 #"The group of hwIsisIntfBaseGroup."                 ""The group of hwIsisIntfExtGroup."                 ""The group of hwIsisIntfBfdGroup."                 !"The group of adj change reason."                 1"The collections of notifications sent by an IS."                         0"IS-IS detects a system ID conflict in an area."                 H"ISIS level-1 number of imported routes has exceeded the maximum limit."                 `"ISIS level-1 number of imported routes is restored to less than or equal to the maximum limit."                 H"ISIS level-2 number of imported routes has exceeded the maximum limit."                 `"ISIS level-2 number of imported routes is restored to less than or equal to the maximum limit."                 I"ISIS level-1 number of imported routes has reached the threshold value."                 P"ISIS level-1 number of imported routes has been less than the threshold value."                 I"ISIS level-2 number of imported routes has reached the threshold value."                 P"ISIS level-2 number of imported routes has been less than the threshold value."                 :"The number of LSP has reached the upper threshold value."                 A"The number of LSP has been less than the lower threshold value."                 j"After a system ID conflict was detected within an IS-IS area, IS-IS changed the system ID automatically."                 ,"The isisAdjacencyChange alarm was cleared."                 A"The LSP sequence number has exceeded the upper threshold value."                 G"The LSP sequence number has been less than the upper threshold value."                 ?"The LSP sequence number has been less than the maximum value."                 W"The object is used to monitor the peer flapping-suppress status of interface in ISIS."                 S"The object is used to monitor the receiving of LSP with small remaining lifetime."                 D"The local device deleted IS-IS routes advertised by other devices."                 K"The local device did not delete IS-IS routes advertised by other devices."                 M"IS-IS routes advertised by the local device were deleted by another device."                 Q"IS-IS routes advertised by the local device were not deleted by another device."                �"IS-IS routes advertised by the local device were deleted by another device, and the possibly faulty device did not 
				support IS-IS purge LSP source tracing. Log in to the possibly faulty device. If the device is deleting routes, 
				reset or isolate it from the network. Otherwise, check other devices. Neither of the devices displayed in the 
				display isis purge-source-trace analysis-report command output is the faulty device."                 Q"IS-IS routes advertised by the local device were not deleted by another device."                 �"IS-IS routes advertised by the local device were deleted by another device. Log in to the possibly faulty device. 
				 If the device is deleting routes, reset or isolate it from the network. Otherwise, check other devices."                 Q"IS-IS routes advertised by the local device were not deleted by another device."                 n"IS-IS routes advertised by another device were deleted. Reset or isolate the faulty device from the network."                 ="IS-IS routes advertised by another device were not deleted."                �"IS-IS routes advertised by another device were deleted, and the possibly faulty device did not support 
				 IS-IS purge LSP source tracing. Log in to the possibly faulty device. If the device is deleting routes, 
				 reset or isolate it from the network. Otherwise, check other devices. Neither of the devices displayed 
				 in the display isis purge-source-trace analysis-report command output is the faulty device."                 ="IS-IS routes advertised by another device were not deleted."                 �"IS-IS routes advertised by another device were deleted. Log in to the possibly faulty device. 
				 If the device is deleting routes, reset or isolate it from the network. Otherwise, check other devices."                 ="IS-IS routes advertised by another device were not deleted."                 U"This object indicates that an insecure authentication mode is configured for IS-IS."                 ^"This object indicates that the insecure authentication mode configured for IS-IS is deleted."                 R"This object indicates that a routing loop has been detected on the local device."                 9"This object indicates that the routing loop is cleared."                 T"The number of import routes in this IS-IS process reached or exceeded the maximum."                 S"The number of import routes in this IS-IS process has been less than the maximum."                 -"An IS-IS link cost adjustment event occurs."                 1"An IS-IS link cost adjustment event is cleared."                 m"Locator or interface IPv6 prefix conflict with locator prefix between local and another device is detected."                 l"Locator or interface IPv6 prefix conflict with locator prefix between local and another device is cleared."                            