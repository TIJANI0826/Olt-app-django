W-- ==================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI-OSPFV2-MIB provides information about OSPFv2
-- Reference:
-- Version: V2.27
-- History:
-- <author>,   <date>,  <contents>
--  HUAWEI   2008-1-05  OSPF private MIB
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types are imported
-- 
-- ==================================================================
                                                    L"The HUAWEI-OSPFV2-MIB contains objects to manage the system configuration. 
                It defines the model used to represent configuration data that exists elsewhere 
                in the system and on peripheral devices. The MIB is proper for system configuration.
                There are no constraints on this MIB.""Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com
                 " "202208151236Z" "202204202030Z" "202204061538Z" "202203091538Z" "202203031538Z" "202105071018Z" "202101051447Z" "202007272045Z" "202007201750Z" "202001031750Z" "201807241502Z" "201708172002Z" "201703251659Z" "201702251236Z" "201608041521Z" "201605251110Z" "201605251110Z" "201605251110Z" "201603231750Z" "201603161750Z" "201602161750Z" "201512181750Z" "201507081110Z" "201505031110Z" "201504031110Z" "201405212110Z" "201312151236Z" "201308291540Z" "201306290949Z" e"Added object hwOspfv2NbrThresholdUpper, hwOspfv2NbrExceedThreshold, hwOspfv2NbrExceedThresholdClear" >"Modify hwOspfPrefixSidConflict, hwOspfPrefixSidConflictClear" ="Added hwOspfPrefixSidConflict, hwOspfPrefixSidConflictClear" �"Added hwOspfv2LinkCostAdjustment, hwOspfv2LinkCostAdjustmentClear, hwOspfCostAdjustReason, hwOspfOriginalCost, hwOspfAdjustedCost" �"Added hwOspfv2LinkCostAdjustment, hwOspfv2LinkCostAdjustmentClear, hwOspfCostAdjustReason, hwOspfOriginalCost, hwOspfAdjustedCost" 4"Added hwOspfv2IntfAuthModeType, hwOspfv2VLinkTable" �"Added hwOspfv2RouteLoopDetected, hwOspfv2RouteLoopDetectedClear, hwOspfv2LoopDetectType, hwOspfv2LoopDetectProtocolAttr, hwOspfv2LoopDetectRedistributeID1, hwOspfv2LoopDetectRedistributeID2" �"Modify hwOspfv2MIBBinding, hwOspfv2ActualRouterId, hwOspfv2LsaOrigIntvl, hwOspfv2AreaI, hwOspfv2AreaNssaNoImportRoute, hwOspfv2AreaAuthModeType, hwOspfv2SelfRouterId, hwOspfv2AreaId, hwOspfv2NewRouterId, hwOspfv2LsaId description format" $"change hwOspfv2SelfIfnetIndex type" p"Added 		            
	                hwOspfv2AuthModeInsecure,
		            hwOspfv2AuthModeInsecureClear "�"Change the max length of hwOspfv2AreaFilterExpPolicy from 40 to 200
                                       Change the max length of hwOspfv2AreaFilterImpPolicy from 40 to 200
                                       Change the max length of hwOspfv2AreaFilterExpAclName from 32 to 64
                                       Change the max length of hwOspfv2AreaFilterImpAclName from 32 to 64"]"modify hwospfv2ProcessFullPeerNumber,hwospfv2ProcessPeerUpCount,hwospfv2ProcessPeerDownCount,hwospfv2InterfacePeerUpCount,hwospfv2InterfacePeerDownCount,hwOspfv2ImportNssaRouteExceed,hwOspfv2ImportNssaRouteExceedClear,hwOspfv2LsdbApproachingOverflow,hwOspfv2LsdbApproachingOverflowClear,hwOspfv2LsdbOverflow,hwOspfv2LsdbOverflowClear discription.	"]"Added 		            
	                hwOspfv2ProcessStatisticTable,
		            hwospfv2ProcessPeerNumber,
		            hwospfv2ProcessFullPeerNumber,
		            hwospfv2ProcessPeerUpCount,
		            hwospfv2ProcessPeerDownCount,
		            hwospfv2ProcessSendLsaNumber,
		            hwospfv2ProcessReceiveLsaNumber,
	                hwOspfv2InterfaceStatisticTable,
		            hwospfv2InterfacePeerUpCount,
		            hwospfv2InterfacePeerDownCount,
	                hwOspfv2GlobalStatistic,
		            hwospfv2SendLsaNumber,
		            hwospfv2ReceiveLsaNumber "�"Change the value of hwOspfv2LsaArriveMaxIntvl from (1.10000) to (1.120000),
                                          Change the value of hwOspfv2LsaArriveStartIntvl from (0.1000) to (0.60000),
                                          Change the value of hwOspfv2LsaArriveHoldIntvl from (1.5000) to (1.60000),
                                          Change the value of hwOspfv2LsaOrigMaxIntvl from (1.10000) to (1.120000),
                                          Change the value of hwOspfv2LsaOrigStartIntvl from (0.1000) to (0.60000),
                                          Change the value of hwOspfv2LsaOrigHoldIntvl from (1.5000) to (1.60000),
                                          Change the value of hwOspfv2SpfSchMaxIntvl from (1.20000) to (1.120000),
                                          Change the value of hwOspfv2SpfSchStartIntvl from (1.1000) to (1.60000),
                                          Change the value of hwOspfv2SpfSchHoldIntvl from (1.5000) to (1.60000)," "Added 		            
	                hwOspfv2DeleteRouteByPurge,
		            hwOspfv2DeleteRouteByPurgeClear,
		            hwOspfv2RouteBeDeletedByPurgeExact,
		            hwOspfv2RouteBeDeletedByPurgeExactClear,
		            hwOspfv2RouteBeDeletedByPurgeInexact,
		            hwOspfv2RouteBeDeletedByPurgeInexactClear,
		            hwOspfv2RouteBeDeletedByPurge,
		            hwOspfv2RouteBeDeletedByPurgeClear,
		            hwOspfv2ThirdPartRouteBeDeletedByPurgeExact,
		            hwOspfv2ThirdPartRouteBeDeletedByPurgeExactClear,
		            hwOspfv2ThirdPartRouteBeDeletedByPurgeInexact,
		            hwOspfv2ThirdPartRouteBeDeletedByPurgeInexactClear,
		            hwOspfv2ThirdPartRouteBeDeletedByPurge,
		            hwOspfv2ThirdPartRouteBeDeletedByPurgeClear " +"Added a trap hwOspfv2GreaterAgeLsaRecived" ="Added hwOspfv2LsaId to indicates the link-id of recived lsa" :"Added hwOspfv2LsaAge to indicates the age of recived lsa" I"Changed the type of hwOspfv2ProcessIdIndex from Integer32 to Unsigned32"h"Added 		            
	                    hwOspfv2ImportAseRouteThreshold, 
		            hwOspfv2ImportAseRouteThresholdClear, 
		            hwOspfv2ImportAseRouteExceed, 
		            hwOspfv2ImportAseRouteExceedClear, 
		            hwOspfv2ImportNssaRouteThreshold, 
		            hwOspfv2ImportNssaRouteThresholdClear, 
		            hwOspfv2ImportNssaRouteExceed, 
		            hwOspfv2ImportNssaRouteExceedClear, 
		            hwOspfv2LsdbApproachingOverflow, 
		            hwOspfv2LsdbApproachingOverflowClear, 
		            hwOspfv2LsdbOverflow, 
		            hwOspfv2LsdbOverflowClear " "Deleted hwOspfv2PeerFlappingSuppressInterval, Added hwOspfv2PeerFlappingSuppressReason to indicates the suppress status change reason, change hwOspfv2PeerFlappingSuppressInterval of hwOspfv2PeerFlappingSuppressStatus to hwOspfv2PeerFlappingSuppressReason" M"Modified hwOspfv2PeerFlappingSuppressStatusChange status currentdescription" \"Added hwOspfv2PeerFlappingSuppressStatus to indicates the suppress status of peer flapping" d"Added to hwOspfv2ProcessIdIndex hwOspfv2IntraAreaRouterIdConflictRecovered to indicates process id" _"Added hwOspfv2IntraAreaRouterIdConflictRecovered to indicates the routerid conflict recovered" 7"Added hwOspfv2Statistic to get statistics information" \"Added object hwOspfv2AreaAuthKeychName to hwOspfv2AreaEntry to indicates the keychain name" $"Move the invalid characters of MIB" /"Add value for hwOspfv2NbrGrStatus: notsupport"                   �"The ID of OSPF process that is bound to OSPF public MIB and the process will respond to SNMP requests from OSPF public MIB. The default value 0 means that no process is bound to OSPF public MIB."                           \"This node is used to record the time ticks when hwOspfv2MIBObjectsTable changed last time."                       Y"This node is used to record the time ticks when hwOspfv2ProcessTable changed last time."                       V"This node is used to record the time ticks when hwOspfv2AreaTable changed last time."                       Y"This node is used to record the time ticks when hwOspfv2NetworkTable changed last time."                       Z"Information describes the configured parameters of the router's attached OSPF processes."                       Z"Information describes the configured parameters of the router's attached OSPF processes."                       Z"The process ID indicates the OSPF process number. The value ranges from 1 to 4294967295."                       �"The name of VPN instance to which the process belongs.
                The process instance needs to be specified when the process is created,
                and then cannot be changed."                      ="A 32-bit integer uniquely identifies the router in the Autonomous System.
                OSPF private router ID can be configured through this node. The default 
                value is 0.0.0.0. If the value of this node is 0.0.0.0, it means that no 
                private router ID is set for this process. "                      "This node is used to get actual router ID of process and it is a read-only node. If the node hwOspfv2ConfigRouterId is not set, the actual router ID should default to the value of one of the router's IP interface addresses. By default, the value is '00000000'H."                       �"The reference value that is used to calculate the link cost.
                If there is no explicit link cost, OSPF calculates the cost according to the
                bandwidth of the link (cost = reference value (M)/bandwidth)."                       &"The description of the OSPF process."                      I"To avoid wasting network resources due to network changes, OSPF defines that the
                interval for receiving LSAs is 1 second.
                In a stable network, if the fast speed of route convergence is required, you can
                cancel the interval of receiving LSAs by setting it to 0 seconds.
                Routers can thus detect changes of topology and route in time. This speeds up route
                convergence. By default, this object is -1, indicating that an intelligent 
                timer is enabled instead. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer (hwOspfv2LsaArriveMaxIntvl, 
                hwOspfv2LsaArriveStartIntvl and hwOspfv2LsaArriveHoldIntvl) to default value, 
                it will get back to default configuration."                      �"This object indicates the maximum interval of intelligent-timer for receiving 
                OSPF LSAs. When hwOspfv2LsaArriveMaxIntvl is specified, you need also specify 
                hwOspfv2LsaArriveStartIntvl and hwOspfv2LsaArriveHoldIntvl, but you cannot 
                specify hwOspfv2LsaArriveIntvl. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer to default value, it will get back to
                default configuration."                      �"This object indicates the initial interval of intelligent-timer for receiving 
                OSPF LSAs. When hwOspfv2LsaArriveStartIntvl is specified, you need also specify
                hwOspfv2LsaArriveMaxIntvl and hwOspfv2LsaArriveHoldIntvl, but you cannot 
                specify hwOspfv2LsaArriveIntvl. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer to default value, it will get back to
                default configuration."                      r"This object indicates the Holdtime interval of intelligent-timer for receiving 
                OSPF LSAs. After an intelligent timer is enabled, the interval for receiving 
                LSAs is as follows: The initial interval for receiving LSAs is specified by 
                the parameter start-interval. The interval for receiving LSAs for the nth (n>2) 
                time is equal to hold-interval*2(n-1). When the interval specified by 
                hold-interval*2(n-1) reaches the maximum interval specified by max-interval, 
                OSPF receives LSAs at the maximum interval for three consecutive times. 
                Then, OSPF receives LSAs at the initial interval specified by start-interval. 
                When hwOspfv2LsaArriveHoldIntvl is specified, you need also specify 
                wOspfv2LsaArriveMaxIntvl and hwOspfv2LsaArriveStartIntvl, but you cannot
                specify hwOspfv2LsaArriveIntvl. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer to default value, it will get back to
                default configuration."                      G"To avoid wasting network source due to network changes, OSPF defines that the
                interval for updating LSAs is 5 seconds.
                In a stable network, if the speed of route convergence is required to be fast, 
                you can cancel the interval for updating LSAs by setting it to 0 seconds.
                So, routers can detect changes of topology and route in time. This speeds up 
                route convergence. By default, this object is -1, indicating that an intelligent
                timer is enabled instead. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer (hwOspfv2LsaOrigMaxIntvl, 
                hwOspfv2LsaOrigStartIntvl, and hwOspfv2LsaOrigHoldIntvl) to default value, 
                it will get back to default configuration."                      �"This object indicates the maximum interval of intelligent-timer for updating 
                OSPF LSAs. When hwOspfv2LsaOrigMaxIntvl is specified, you need also specify
                hwOspfv2LsaOrigStartIntvl and hwOspfv2LsaOrigHoldIntvl, but you cannot specify 
                hwOspfv2LsaOrigIntvl. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer to default value, it will get back to
                default configuration."                      �"This object indicates the initial interval of intelligent-timer for updating
                OSPF LSAs. When hwOspfv2LsaOrigStartIntvl is specified, you need also specify
                hwOspfv2LsaOrigMaxIntvl and hwOspfv2LsaOrigHoldIntvl, but you cannot specify 
                hwOspfv2LsaOrigIntvl. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer to default value, it will get back to
                default configuration."                      e"This object indicates the Holdtime interval of intelligent-timer for updating 
                OSPF LSAs. After an intelligent timer is enabled, the interval for updating 
                LSAs is as follows: The initial interval for updating LSAs is specified by the 
                parameter start-interval. The interval for updating LSAs for the nth (n>2) 
                time is equal to hold-interval*2(n-1). When the interval specified by 
                hold-interval*2(n-1) reaches the maximum interval specified by max-interval, 
                OSPF updates LSAs at the maximum interval for three consecutive times. Then, 
                OSPF updates LSAs at the initial interval specified by start-interval. When 
                hwOspfv2LsaOrigHoldIntvl is specified, you need also specify 
                hwOspfv2LsaOrigMaxIntvl and hwOspfv2LsaOrigStartIntvl, but you cannot specify
                hwOspfv2LsaOrigIntvl. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer to default value, it will get back to
                default configuration."                      �"This object indicates the interval for updating LSAs, excluding OSPF router 
                LSAs and network LSAs. hwOspfv2LsaOrigIntvlOtherType and hwOspfv2LsaOrigIntvl 
                cannot be specified together. Here -1 indicated that hwOspfv2LsaOrigIntvl is
                enabled instead. Note that -1 is not a configurable value. Instead, by set 
                this node to default value, it will get back to default configuration. "                       "The maximum number of external LSAs in OSPF LSDB.
                When this node is set to 0, it means that no limits exist."                       P"The maximum number of equal-cost routes to a destination in the routing table."                       >"The maximum number of ASE routes that are supported by OSPF."                       E"The maximum number of inter-area routes that are supported by OSPF."                       E"The maximum number of intra-area routes that are supported by OSPF."                       �"The maximum count of retransmission. The value is an integer that ranges from 2 to 255. 
                When the retransmission limit is disabled, the value is set to 0."                       @"It is used to enable the routing rule for compatible RFC 1583."                       �"It is used to enable the sham-hello feature of OSPF.
                After the feature is enabled, OSPF updates the timeout timer of the neighbor when
                receiving protocol packets of various types."                      F"The value of the object identifies the interval unit for OSPF to calculate 
                routes. This object must be specified together with hwOspfv2SpfSchIntervalNumber.  
                By default, this object is none, indicating that an intelligent timer is 
                enabled instead. Note that none is not a configurable value. 
                Instead, by set the intelligent timer (hwOspfv2SpfSchMaxIntvl,   
                hwOspfv2SpfSchStartIntvl, and hwOspfv2SpfSchHoldIntvl) to default value, 
                it will get back to default configuration."                      :"The value of the object identifies the interval for OSPF to calculate routes. 
                This object must be specified together with hwOspfv2SpfSchIntervalUnit. By 
                default, this object is -1, indicating that an intelligent timer is 
                enabled instead. Note that -1 is not a configurable value. 
                Instead, by set the intelligent timer (hwOspfv2SpfSchMaxIntvl,   
                hwOspfv2SpfSchStartIntvl, and hwOspfv2SpfSchHoldIntvl) to default value, 
                it will get back to default configuration."                      "This object indicates the maximum interval of intelligent timer for OSPF to 
                perform the SPF calculation. When hwOspfv2SpfSchMaxIntvl is specified, you 
                need also specify hwOspfv2SpfSchStartIntvl and hwOspfv2SpfSchHoldIntvl, but 
                you cannot specify hwOspfv2SpfSchIntvlUnit or hwOspfv2SpfSchIntvlNumber. 
                Note that -1 is not a configurable value. Instead, by set the intelligent 
                timer to default value, it will get back to default configuration."                      "This object indicates the initial interval of intelligent timer for OSPF to 
                perform the SPF calculation. When hwOspfv2SpfSchStartIntvl is specified, you 
                need also specify hwOspfv2SpfSchMaxIntvl and hwOspfv2SpfSchHoldIntvl, but 
                you cannot specify hwOspfv2SpfSchIntvlUnit or hwOspfv2SpfSchIntvlNumber. 
                Note that -1 is not a configurable value. Instead, by set the intelligent 
                timer to default value, it will get back to default configuration."                      �"This object indicates the Holdtime interval of intelligent timer for OSPF to 
                perform the SPF calculation. After an intelligent timer is enabled, the 
                interval for the SPF calculation is as follows: The initial interval for 
                the SPF calculation is specified by the parameter start-interval. The 
                interval for the SPF calculation for the nth (n>2) time is equal to 
                hold-interval*2(n-1). When the interval specified by hold-interval*2(n-1) 
                reaches the maximum interval specified by max-interval, OSPF performs the 
                SPF calculation at the maximum interval for three consecutive times. Then, 
                OSPF performs the SPF calculation at the initial interval specified by 
                start-interval. When hwOspfv2SpfSchHoldIntvl is specified, you need also 
                specify hwOspfv2SpfSchMaxIntvl and hwOspfv2SpfSchStartIntvl, but you cannot 
                specify hwOspfv2SpfSchIntvlUnit or hwOspfv2SpfSchIntvlNumber. Note that -1 
                is not a configurable value. Instead, by set the intelligent timer to default
                value, it will get back to default configuration."                       �"It is used to enable opaque-LSAs capability. When the capability is enabled, 
                then the OSPF process can generate opaque LSAs and process the opaque LSAs
                received from neighbors."                      G"It is used to enable IGP-shortcut feature. The value false means disable. 
                Otherwise, the value true means enable. If you want to set this node to false, 
                please check whether Local MT feature is disabled. When Local MT feature is 
                enabled, this node cannot be set to false."                       E"It is used to enable IGP-shortcut and Forwarding Adjacency feature."                      )"The value of the flush timer. When configuring or undoing OSPF process, 
                flush self-originated LSAs first.
                If the timer expires, stop flushing LSAs, and then reset the process.
                This timer is one-off. When flushing is finished, it recovers to 0."                      "This node is used to create and destroy rows.
                Because CreateAndWait is not supported, you can set this node to CreatAndGo
                to create a new process. If the process is created successfully, the value of
                this node changes to active."                       V"Information describes the configured parameters of the router's attached OSPF areas."                       W" Information describes the configured parameters of the router's attached OSPF areas."                       ^"A 32-bit integer uniquely identifies an area. Area ID 0.0.0.0 is used for the OSPF backbone."                       8"Specify the type of area: nssa(1), stub(2), normal(3)."                      �"This node is used to reduce the number of LSAs that are transmitted to the NSSA
                or Stub area. You can configure this node as an ABR. This also prevents the ABR
                from transmitting Summary LSA (Type-3 LSA) to the NSSA or Stub area.
                Note: 
                All nodes about NSSA property (hwOspfv2AreaType, hwOspfv2AreaNoSummary, 
                hwOspfv2AreaNssaFlushTimer, hwOspfv2AreaNssaNoImportRoute, hwOspfv2AreaNssaDefAdvertise, 
                hwOspfv2AreaNssaTransAlways, hwOspfv2AreaNssaTransTimer, hwOspfv2AreaNssaAllowFaZero, 
                hwOspfv2AreaNssaSuppressFa, and hwOspfv2AreaNssaSetNBit) should be set together."                      8"The value of the flush timer. When configuring or undoing NSSA feature, flush self-originated
                Type-5 and Type-7 LSAs first.
                If the timer expires, stop flushing LSAs, and then reset the area.
                This timer is one-off. When flushing is finished, it recovers to 0. "                      "This node is used to decide whether default Type-7 LSAs should be originated.
                When this node is set to true, for ABR router it must originate Type-7 LSAs, while for ASBR
                router only if the route to 0.0.0.0 exists, it should originate Type-7 LSAs."                       �"This node is used to decide whether the external route is imported to NSSA area. On ASBR,
                if this node is set to true, the external route cannot be advertised to the NSSA area."                      _"This node specifies whether or not an NSSA router will unconditionally translate Type-7
                LSAs to Type-5 LSAs when acting as an NSSA border router.
                When hwOspfAreaNssaTranslateAlways is set to true, Type-7 LSAs are always translated
                regardless of the translator state of other NSSA border routers. 
                When hwOspfAreaNssaTranslateAlways is set to false, an NSSA border router will participate
                in the translator election process. The router will translate Type-7 LSAs to Type-5 LSAs only
                after being selected."                      B"This node is used to configure translator stability interval. 
                This minimizes excessive flushing of translated Type-7 LSAs and provides a more stable
                translator transition.
                If the area type is not NSSA, the default value of the translator stability interval
                parameter is 0 seconds, and hwOspfv2AreaType is stub(2) or normal(3).
                If the type of the area is NSSA, the default value of the translator stability interval 
                parameter is 40 seconds, and hwOspfv2AreaType is nssa(1)."                       �"When this node is set to true, the forwarding address of Type-7 LSAs can be filled with zero
                when the router generates Type-7 LSAs."                       �"When this node is set to true, the forwarding address of Type-7 LSAs can be filled with zero
                when the ABR translates Type-7 LSAs into Type-5 LSAs."                       ["When this node is set to true, N-bit should be set in the option when sending DD packets."                       �"This node is used to specify the cost of the default routes that flush to stub area by the ABR. 
                The value ranges from 0 to 16777214. The default value is -1."                       ;"This node is used to specify the description of the area."                      �"This object indicates the number of basic ACL.
                The ACL number ranges from 2000 to 2999. 
                The default value is 0, indicating no configuration.
                The object is used to filter the Summary LSAs that leave the area.
                It is incompatible with hwOspfv2AreaFilterExpAclName, hwOspfv2AreaFilterExpPrefix, 
                and hwOspfv2AreaFilterExpPolicy. Only one object can be configured each time."                      �"This object indicates the name of the address prefix list. 
                The name is a string of 1 to 169 characters.
                The object is used to filter the Summary LSAs that leave the area.
                It is incompatible with hwOspfv2AreaFilterExpAcl, hwOspfv2AreaFilterExpAclName, 
                and hwOspfv2AreaFilterExpPolicy. Only one object can be configured each time."                      �"This object indicates the name of the routing policy. 
                The name is a string of 1 to 200 characters.
                The object is used to filter the Summary LSAs that leave the area.
                It is incompatible with hwOspfv2AreaFilterExpAcl, hwOspfv2AreaFilterExpAclName, and
                hwOspfv2AreaFilterExpPrefix. Only one object can be configured each time."                      �"This object indicates the number of basic ACL. The value ranges from 2000 to 2999. 
                The default value is 0, indicating no configuration.
                The object is used to filter the Summary LSAs that enter the area.
                It is incompatible with hwOspfv2AreaFilterImpAclName, hwOspfv2AreaFilterImpPrefix, 
                and hwOspfv2AreaFilterImpPolicy. Only one object can be configured each time."                      �"This object indicates the name of the address prefix list. 
                The name is a string of 1 to 169 characters.
                The object is used to filter the Summary LSAs that enter the area.
                It is incompatible with hwOspfv2AreaFilterImpAcl, hwOspfv2AreaFilterImpAclName, and 
                hwOspfv2AreaFilterImpPolicy. Only one node can be configured each time."                      �"This object indicates the name of the routing policy. 
                The name is a string of 1 to 200 characters.
                The object is used to filter the Summary LSAs that enter the area.
                It is incompatible with hwOspfv2AreaFilterImpAcl, hwOspfv2AreaFilterImpAclName and 
                hwOspfv2AreaFilterImpPrefix. Only one node can be configured each time."                      �"The type of the OSPF area authentication mode.
                none(1): not configured.
                simple(2): indicates the simple authentication mode.
                md5(3): indicates the md5 cipher mode.
                hmd5(4): indicates the hmac-md5 cipher mode.
                keychain(5): indicates the keychain authentication mode.
                hmacSha256(6): indicates the hmac-Sha256 cipher mode.
                Note: 
                If this value is set to simple(2), you should specify hwOspfv2AreaAuthPasswordType
                and hwOspfv2AreaAuthText, but cannot specify hwOspfv2AreaAuthKeyId.
                To configure the simple authentication mode with the authentication key being NULL, 
                set hwOspfv2AreaAuthPasswordType to plainText(2) and set hwOspfv2AreaAuthText to 
                a string of 0 characters.
                If this value is set to md5(3) or hmd5(4) or hsha256(6), you can specify hwOspfv2AreaAuthKeyId
                or not. Once you specify hwOspfv2AreaAuthKeyId, you should specify hwOspfv2AreaAuthPasswordType
                and hwOspfv2AreaAuthText at the same time.
                If this value is set to keychain(5), you should specify it and hwOspfv2AreaAuthText together, or specify it and hwOspfv2AreaAuthKeychName together, 
                but should not specify hwOspfv2AreaAuthKeyId and hwOspfv2AreaAuthPasswordType, and should not specify hwOspfv2AreaAuthText and hwOspfv2AreaAuthKeychName at the same time."                      "Specify the type of area authentication key.
                plaintext(2): If this node is set to plaintext(2), you can specify only the plain text
                authentication key on the node hwOspfAreaAuthText. When viewing the configuration file,
                display the password in plain mode.
                ciphertext(3): If this node is set to ciphertext(3), you can specify the cipher text
                authentication key or cipher text authentication key in node hwOspfv2AreaAuthText. When
                viewing the configuration file, display the password in cipher mode.
                Note:
                If you set this node to plaintext(2) or ciphertext(3), you should set the node
                hwOspfv2AreaAuthText at the same time."                       �"Specify the authentication key ID for MD5 or HMAC-MD5 authentication mode.
                The value of the ID is an integer that ranges from 1 to 255. The default value 0 means
                no configuration."                      }"In simple authentication, this object indicates the authentication key.
                It's a string of 1 to 8 characters in plain text or 24 characters in cipher text. 
                In MD5 or HMAC-MD5 or  HMAC-SHA256 authentication, this object also indicates the authentication key. 
                It's a string of 1 to 255 characters in plain text or 20 to 392 characters in cipher text.
                In keychain authentication, this object indicates the keychain name.
                It's a string of 1 to 47 characters.
                When read, hwOspfv2AreaAuthText always returns an octet string of length zero."                      Q"The node is used to enable the MPLS-TE capability.
                disable(1): no configuration.
                stdEnable(2): accepts only the LSAs in the standard format. That is, an LSA is rejected
                if it has more than one Top level TLV.
                stdDisable(3): accepts the LSAs not in the standard format."                      "This node is used to create and destroy rows.
                Because CreateAndWait is not supported, you can set this node to CreatAndGo to create a new
                area. If the area is created successfully, the value of this node changes to active."                      j"This object indicates the ACL name. Note that the ACL can only be used as basic ACL.
                The object is used to filter the Summary LSAs that leave the area.
                It is incompatible with hwOspfv2AreaFilterExpAcl, hwOspfv2AreaFilterExpPrefix, 
                and hwOspfv2AreaFilterExpPolicy. Only one object can be configured each time."                      j"This object indicates the ACL name. Note that the ACL can only be used as basic ACL.
                The object is used to filter the Summary LSAs that enter the area.
                It is incompatible with hwOspfv2AreaFilterImpAcl, hwOspfv2AreaFilterImpPrefix, 
                and hwOspfv2AreaFilterImpPolicy. Only one object can be configured each time."                       O"This object indicates the keychain name. It's a string of 1 to 47 characters."                       Y"Information describes the configured parameters of the router's attached OSPF networks."                       Y"Information describes the configured parameters of the router's attached OSPF networks."                       _"Network IP address: specifies the address of the network segment where the interface resides."                      1"Network IP mask: specifies the wildcard mask of an IP address, which is similar to the
                reversed form of the mask of an IP address.
                '1' represents that the corresponding bit in the IP address is ignored and '0' represents
                that this bit must be reserved."                      "This node is used to create and destroy rows.
                Because CreateAndWait is not supported, you can set this node to CreatAndGo to create a new
                network. If the network is created successfully, the value of this node changes to active."                       _"This object indicates the configured parameters of the OSPF neighbors attached to the router."                       _"This object indicates the configured parameters of the OSPF neighbors attached to the router."                       <"This object indicates the unique value for each interface."                       <"This object indicates the IP address of the OSPF neighbor."                       �"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System. It is the router ID of itself."                       ["This object indicates the IP address of the OSPF interface associated with this neighbor."                       ?"The name of the OSPF interface associated with this neighbor."                       �"This object indicates the IP address of the designated router that is obtained from the DD packets
                from this neighbor. By default, the value is '00000000'H."                       �"This object indicates the IP address of the backup designated router which is obtained from the
                DD packets from this neighbor. By default, the value is '00000000'H."                      v"This object indicates the size of the largest IP datagram that can be sent out the sending interface 
                without fragmentation. It is obtained from the DD packets from this neighbor. By default, the value is 0.
                The MTU of the interface should be set to 0 in the DD packets when the MTU is not enabled on the OSPF 
                interface."                       7"This object indicates the router ID of this neighbor."                       h"This object indicates the state of the relationship with this neighbor. By default, the state is down."                       \"This object indicates whether this neighbor is master or slave through the DD negotiation."                      "This object indicates the priority of this neighbor in the designated router election algorithm.  
                The value 0 signifies that the neighbor is not eligible to become the designated router on this 
                particular network. By default, the value is 1."                       ]"This object indicates the time (in seconds) since the state of this neighbor has been full."                       �"This object indicates the unsigned 32-bit non-decreasing sequence number. Used to guard against replay attacks. 
                By default, the value is 0."                       ["This object indicates the period (in seconds) after which this neighbor is declared dead."                       v"This object indicates whether the neighbor performs GR or functions as a GR helper. By default, the state is normal."                       J"The Interface Table describes the interfaces from the viewpoint of OSPF."                       I"Information describes the configured parameters of the OSPF interfaces."                       $"A unique value for each interface."                       !"The name of the OSPF interface."                      �"The type of the OSPF interface authentication mode.
                none(1): not configured.
                simple(2): indicates the simple authentication mode.
                md5(3): indicates the md5 cipher mode.
                hmd5(4): indicates the hmac-md5 cipher mode.
                keychain(5): indicates the keychain authentication mode.
                hmacSha256(6): indicates the hmac-Sha256 cipher mode.
		null(7): indicates the null authentication mode."                       ["Information describes the configured parameters of the router's attached OSPF area vlink."                       W" Information describes the configured parameters of the router's attached OSPF areas."                       <"A 32-bit integer uniquely identifies an virtual link peer."                      �"The type of the OSPF area authentication mode.
                none(1): not configured.
                simple(2): indicates the simple authentication mode.
                md5(3): indicates the md5 cipher mode.
                hmd5(4): indicates the hmac-md5 cipher mode.
                keychain(5): indicates the keychain authentication mode.
                hmacSha256(6): indicates the hmac-Sha256 cipher mode.
                null(7): indicates the null authentication mode."                           /"The reason of the OSPF neighbor state change."                       0"The reason of the OSPF interface state change."                       ^"A 32-bit integer uniquely identifies an area. Area ID 0.0.0.0 is used for the OSPF backbone."                       �"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System. It is the new router ID."                       '"The suppress status of peer flapping."                       5"The reason of peer flapping suppress status change."                       X"A 32-bit integer uniquely identifies an area. LSA-ID 0.0.0.0 is used for the OSPF LSA."                       "This age of the ospf lsa."                       K"This object indicates the name of an OSPF router which purge OSPF routes."                       Q"This object indicates the IP address of an OSPF router which purge OSPF routes."                       h"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System."                       Y"This object indicates the number of LSAs deleted by the local device or another device."                       R"This object indicates the number of affected node when OSPF routes were deleted."                       ?"This object indicates the total number of node in the System."                       @"This object indicates the period interval for purge statistic."                       Q"This object indicates the number of node ruled out when checking faulty device."                       Q"This object indicates the name of an OSPF router which maybe purge OSPF routes."                       Q"This object indicates the name of an OSPF router which maybe purge OSPF routes."                       Q"This object indicates the name of an OSPF router which maybe purge OSPF routes."                       W"This object indicates the IP address of an OSPF router which maybe purge OSPF routes."                       W"This object indicates the IP address of an OSPF router which maybe purge OSPF routes."                       W"This object indicates the IP address of an OSPF router which maybe purge OSPF routes."                       h"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System."                       h"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System."                       h"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System."                       Y"This object indicates the name of the insecure authentication mode configured for OSPF."                       H"This object indicates the type of the OSPFv2 import route loop detect."                       V"This object indicates the protocol attribute of the OSPFv2 import route loop detect."                       g"This object indicates the redis-list router id and process id of the OSPFv2 import route loop detect."                       g"This object indicates the redis-list router id and process id of the OSPFv2 import route loop detect."                       B"This object indicates the reason why OSPF adjusts the link cost."                       *"This object indicates the original cost."                       V"This object indicates Link cost of the current event that triggers OSPF adjustment. "                       A"Conflicted Prefix sid Index. The value ranges from  0 to 65534."                       :"The Prefix Address configured in the Loopback Interface."                       "Prefix Ip Address Mask."                       "Flexible Algorithm."                       >"Conflict type can be Prefix Sid conflict or Prefix conflict."                       O"This object indicates the upper alarm threshold for the number of neighbors. "                           R"These objects are used to monitor/manage changed OSPF neighbor alarm parameters."                 X"These objects are used to monitor/manage changed OSPF neighbor clear alarm parameters."                 D"The object is used to monitor router ID conflict in an intra area."                 P"The object is used to monitor conflicted IP addresses of DRs in an intra area."                 M"The object is used to monitor router ID conflict recovery in an intra area."                 Y"The object is used to monitor the peer flapping-suppress status of interface in ospfv2."                 �"This object indicates that the number of AS-external LSAs generated when an OSPF process imports external routes exceeds the configured alarm threshold."                 �"This object indicates that the number of AS-external LSAs generated when an OSPF process imports external routes has been less than the configured alarm threshold."                 �"This object indicates that the number of AS-external LSAs generated when an OSPF process imports external routes exceeds the configured maximum number."                 �"This object indicates that the number of AS-external LSAs generated when an OSPF process imports external routes has been less than the configured maximum number."                 �"This object indicates that the number of NSSA LSAs generated when an OSPF process imports external routes exceeds the configured alarm threshold."                 �"This object indicates that the number of NSSA LSAs generated when an OSPF process imports external routes has been less than the configured alarm threshold."                 �"This object indicates that the number of NSSA LSAs generated when an OSPF process imports external routes falls below the lower threshold.
"                 �"This object indicates that the number of NSSA LSAs generated when an OSPF process imports external routes reaches or exceeds the configured maximum number.
"                 �"This object indicates that the number of NSSA LSAs generated when an OSPF process imports external routes falls below the configured maximum number.
"                 �"This object indicates that the number of AS-external LSAs in the LSDB of an OSPF process is approaching the configured maximum number.
"                 �"This object indicates that the number of AS-external LSAs in the LSDB of an OSPF process falls far below the configured maximum number.
"                 �"This object indicates that the number of AS-external LSAs in the LSDB of an OSPF process has reached the configured maximum number.
"                 O"The object is used to monitor the router receive a greater age lsa in ospfv2."                 �"This object indicates that the local device deleted OSPF routes advertised by other devices. 
                Reset or isolate the device from the network."                 e"This object indicates that the local device did not delete OSPF routes advertised by other devices."                 �"This object indicates that OSPF routes advertised by the local device were deleted by another device. 
                Reset or isolate the faulty device from the network."                 k"This object indicates that OSPF routes advertised by the local device were not deleted by another device."                �"This object indicates that OSPF routes advertised by the local device were deleted by another device, 
                and the possibly faulty device did not support OSPF flush LSA source trace. Log in to the possibly faulty device. 
                If the device is deleting routes, reset or isolate it from the network. Otherwise, check other devices. 
                Neither of the devices displayed in the display ospf purge-source-trace analysis-info  command output is the faulty device."                 k"This object indicates that OSPF routes advertised by the local device were not deleted by another device."                "This object indicates that OSPF routes advertised by the local device were deleted by another device. 
                Log in to the possibly faulty device. If the device is deleting routes, reset or isolate it from the network. 
                Otherwise, check other devices."                 k"This object indicates that OSPF routes advertised by the local device were not deleted by another device."                 �"This object indicates that OSPF routes advertised by another device were deleted. 
                Reset or isolate the faulty device from the network."                 W"This object indicates that OSPF routes advertised by another device were not deleted."                �"This object indicates that OSPF routes advertised by another device were deleted, 
                and the possibly faulty device did not support OSPF flush LSA source trace. 
                Log in to the possibly faulty device. If the device is deleting routes, reset or isolate it from the network. 
                Otherwise, check other devices. Neither of the devices displayed in the display ospf purge-source-trace analysis-info 
                command output is the faulty device."                 W"This object indicates that OSPF routes advertised by another device were not deleted."                 �"This object indicates that OSPF routes advertised by another device were deleted. Log in to the possibly faulty device. 
                If the device is deleting routes, reset or isolate it from the network. Otherwise, check other devices."                 W"This object indicates that OSPF routes advertised by another device were not deleted."                 T"This object indicates that an insecure authentication mode is configured for OSPF."                 ]"This object indicates that the insecure authentication mode configured for OSPF is deleted."                 R"This object indicates that a routing loop has been detected on the local device."                 9"This object indicates that the routing loop is cleared."                 G"This object indicates that An OSPF link cost adjustment event occurs."                 K"This object indicates that An OSPF link cost adjustment event is cleared."                 G"This object indicates that An OSPF link cost adjustment event occurs."                 K"This object indicates that An OSPF link cost adjustment event is cleared."                 Q"This object indicates that the number of ospfv2 exceeds the configed threshold."                 `"This object indicates that the number of ospfv2 has been less than the the configed threshold."                         Y"The compliance statement for entities implementing
                the Huawei OSPF MIB"                   C"These objects are used to monitor/manage OSPF general parameters."                 C"These objects are used to monitor/manage OSPF process parameters."                 @"These objects are used to monitor/manage OSPF area parameters."                 C"These objects are used to monitor/manage OSPF network parameters."                 K"These objects are used to monitor/manage changed OSPF neighbor parameters"                 H"These objects are used to monitor/manage changed OSPF table parameters"                 Q"These objects are used to monitor/manage changed OSPF private alarm parameters."                     W"The objects are used to monitor/manage the neighbor state change from full to others."                 M"These objects are used to monitor/manage changed OSPF interface parameters."                 3"The statistics information group of OSPF process."                 V"These objects are used to monitor/manage changed OSPF peer flapping suppress status."                 5"The statistics information group of OSPF interface."                 2"The statistics information group of OSPF router."                     O"Information describes the statistics of the router's attached OSPF processes."                       O"Information describes the statistics of the router's attached OSPF processes."                       ""The peer number of OSPF process."                       b"The value of this object identifies the number of neighbors in full state in the OSPF process.
"                       `"The value of this object identifies the number of neighbors in Up state in the OSPF process.
"                       b"The value of this object identifies the number of neighbors in Down state in the OSPF process.
"                       &"The lsa send number of OSPF process."                       )"The lsa receive number of OSPF process."                       P"Information describes the statistics of the router's attached OSPF interfaces."                       P"Information describes the statistics of the router's attached OSPF interfaces."                       b"The value of this object identifies the number of neighbors in Up state on the OSPF interface.
"                       d"The value of this object identifies the number of neighbors in Down state on the OSPF interface.
"                           %"The lsa send number of OSPF router."                       ("The lsa receive number of OSPF router."                                  