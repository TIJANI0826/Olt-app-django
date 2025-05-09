�-- ==================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI-OSPFV3-MIB.mib, The HUAWEI-OSPFV3-MIB provides information about OSPFv3
-- Reference: draft-ietf-ospf-ospfv3-mib-11
-- Version:    V2.28
-- History:
-- ==================================================================
   !"An OSPFv3 interface instance ID"               0"The range, in seconds, of dead interval value."             E"OSPF Version 2, Section 12.1.6, LS sequence
                number"G"The sequence number field is a signed 32-bit
                integer.  It is used to detect old and duplicate
                link state advertisements.  The space of
                sequence numbers is linearly ordered.  The
                larger the sequence number, the more recent the
                advertisement."             �"OSPF Version 2, Section 12.1.1, LS age;
                 Extending OSPF to Support Demand Circuits,
                 Section 2.2, The LS age field" �"The age of the link state advertisement in
                seconds.  The high-order bit of the LS age
                field is considered the DoNotAge bit for
                support of on-demand circuits."               P"The range of intervals on which hello messages are
                exchanged."              ""A 32-bit, unsigned integer uniquely identifying the 
                router in the Autonomous System. To ensure uniqueness, 
                this may default to the value of one of the router's 
                IPv4 host addresses if IPv4 is configured on the 
                router."             /"OSPF Version 2, Section 12.1.4, Link State ID" �"A unique 32-bit identifier of the piece of the
                  routing domain that is being described by a link
                  state advertisement.  In contrast to OSPFv2, the
                  Link State ID (LSID) has no addressing semantics."               "An OSPFv3 Area Identifier"               |"The values one might be able to configure for                  
                variables bounded by the Refresh Interval"                                                                -"The MIB module for OSPF version 3. 
                  Copyright (C) The Internet Society (2006). 
                  This version of this MIB module is part of 
                  RFC draft-ietf-ospf-ospfv3-mib-11;  
                  see the RFC itself for full legal 
                  notices."
"Huawei Industrial Base
                   Bantian, Longgang
                    Shenzhen 518129
                    People's Republic of China
                    Website: http://www.huawei.com
                    Email: support@huawei.com
                  " "202208151236Z" "202204191030Z" "202204181740Z" "202203221540Z" "202203031538Z" "202201201439Z" "202110201019Z" "202007272055Z" "201911041056Z" "201708172015Z" "201608041521Z" "201605251110Z" "201605251110Z" "201605251110Z" "201603231750Z" "201603181750Z" "201603011750Z" "201603011750Z" "201507081110Z" "201505031110Z" "201504031110Z" "200706122100Z" e"Added object hwOspfv3NbrThresholdUpper, hwOspfv3NbrExceedThreshold, hwOspfv3NbrExceedThresholdClear" *"modify hwOspfv3IntraAreaRouteridConflict" Q"Added hwOspfv3IntraAreaRouteridConflict, hwOspfv3IntraAreaRouteridConflictClear" D"modify hwOspfv3LinkCostAdjustment, hwOspfv3LinkCostAdjustmentClear" �"Added hwOspfv3LinkCostAdjustment, hwOspfv3LinkCostAdjustmentClear, hwOspfCostAdjustReason, hwOspfv3OriginalCost, hwOspfv3AdjustedCost" "Added import DisplayString" �"Added hwOspfv3RouteLoopDetected, hwOspfv3RouteLoopDetectedClear, hwOspfv3LoopDetectType, hwOspfv3LoopDetectProtocolAttr, hwOspfv3LoopDetectRedistributeID1, hwOspfv3LoopDetectRedistributeID2"�"modify discription of 
                                       hwOspfv3AreaNssaTranslatorState,
                                       hwOspfv3AreaNssaTranslatorEvents,
                                       hwOspfv3AsLsdbEntry,
                                       hwOspfv3AreaLsdbEntry,
                                       hwOspfv3LinkLsdbEntry,
                                       hwOspfv3IfEntry,
                                       hwOspfv3VirtIfEntry,
                                       hwOspfv3NbrEntry,
                                       hwOspfv3NbrRestartHelperExitRc,
                                       hwOspfv3CfgNbrEntry,
                                       hwOspfv3VirtNbrEntry,
                                       hwOspfv3VirtNbrRestartHelperExitRc,
                                       hwOspfv3AreaAggregateEntry,
                                       hwOspfv3LsaId"�"modify discription of 
                                       hwOspfv3VirtIfStateChange,
                                       hwOspfv3IfStateChange,
                                       hwOspfv3NbrStateChange,
                                       hwOspfv3VirtNbrStateChange,
                                       hwOspfv3ExtAreaLsdbLimit,
                                       hwOspfv3ReadOnlyCompliance" 7"modify hwOspfv3PeerFlappingSuppressStatus discription" "Added 		            
	                hwOspfv3DeleteRouteByPurge,
		            hwOspfv3DeleteRouteByPurgeClear,
		            hwOspfv3RouteBeDeletedByPurgeExact,
		            hwOspfv3RouteBeDeletedByPurgeExactClear,
		            hwOspfv3RouteBeDeletedByPurgeInexact,
		            hwOspfv3RouteBeDeletedByPurgeInexactClear,
		            hwOspfv3RouteBeDeletedByPurge,
		            hwOspfv3RouteBeDeletedByPurgeClear,
		            hwOspfv3ThirdPartRouteBeDeletedByPurgeExact,
		            hwOspfv3ThirdPartRouteBeDeletedByPurgeExactClear,
		            hwOspfv3ThirdPartRouteBeDeletedByPurgeInexact,
		            hwOspfv3ThirdPartRouteBeDeletedByPurgeInexactClear,
		            hwOspfv3ThirdPartRouteBeDeletedByPurge,
		            hwOspfv3ThirdPartRouteBeDeletedByPurgeClear " +"Added a trap hwOspfv3GreaterAgeLsaRecived" ="Added hwOspfv3LsaId to indicates the link-id of recived lsa" :"Added hwOspfv3LsaAge to indicates the age of recived lsa" D"Changed the type of hwOspfv3ProcessId from Integer32 to Unsigned32"�"Added 
	                    hwOspfv3ImportAseRouteThreshold,
                            hwOspfv3ImportAseRouteThresholdClear,
                            hwOspfv3ImportAseRouteExceed,
                            hwOspfv3ImportAseRouteExceedClear,
                            hwOspfv3ImportNssaRouteThreshold,
                            hwOspfv3ImportNssaRouteThresholdClear,
                            hwOspfv3ImportNssaRouteExceed,
                            hwOspfv3ImportNssaRouteExceedClear""Deleted hwOspfv3PeerFlappingSuppressInterval, Added hwOspfv3PeerFlappingSuppressReason to indicates the suppress status change reason, change hwOspfv3PeerFlappingSuppressInterval of hwOspfv3PeerFlappingSuppressStatusChange to hwOspfv3PeerFlappingSuppressReason" M"Modified hwOspfv2PeerFlappingSuppressStatusChange status currentdescription" \"Added hwOspfv3PeerFlappingSuppressStatus to indicates the suppress status of peer flapping" J"Added hwOspfv3IntraAreaRouterIdConflictRecovered to indicates process id" _"Added hwOspfv3IntraAreaRouterIdConflictRecovered to indicates the routerid conflict recovered" ("Initial version, published as RFC xxxx"                  w"An ospfv3VirtIfStateChange notification signifies that there 
           has been a change in the state of an OSPFv3 virtual 
           interface. 
 
           This notification should be generated when the interface 
           state regresses (for example, goes from Point-to-Point to Down) 
           or progresses to a terminal state (that is, Point-to-Point)."                �"An ospfv3NbrStateChange notification signifies that 
           there has been a change in the state of a 
           non-virtual OSPFv3 neighbor. This notification should be 
           generated when the neighbor state regresses 
           (for example, goes from Attempt or Full to 1-Way or 
           Down) or progresses to a terminal state (for example, 
           2-Way or Full). When an neighbor transitions 
           from or to Full on non-broadcast multi-access 
           and broadcast networks, the notification should be 
           generated by the designated router. A designated 
           router transitioning to Down will be noted by 
           ospfIfStateChange."                w"An ospfv3VirtNbrStateChange notification signifies 
           that there has been a change in the state of an OSPFv3 
           virtual neighbor. This notification should be generated 
           when the neighbor state regresses (for example, goes 
           from Attempt or Full to 1-Way or Down) or 
           progresses to a terminal state (for example, Full)."                �"An ospfv3IfConfigError notification signifies that a 
           packet has been received on a non-virtual 
           interface from a router whose configuration 
           parameters conflict with this router's 
           configuration parameters. Note that the event 
           optionMismatch should cause a notification only if it 
           prevents an adjacency from forming."                �"An ospfv3VirtIfConfigError notification signifies that a 
           packet has been received on a virtual interface 
           from a router whose configuration parameters 
           conflict with this router's configuration 
           parameters. Note that the event optionMismatch 
           should cause a notification only if it prevents an 
           adjacency from forming."                 �"An ospfv3IfRxBadPacket notification signifies that an 
           OSPFv3 packet that cannot be parsed has been received on a 
           non-virtual interface."                 �"An ospfv3VirtIfRxBadPacket notification signifies 
           that an OSPFv3 packet that cannot be parsed has been received 
           on a virtual interface."                �"An ospfv3IfStateChange notification signifies that there 
           has been a change in the state of a non-virtual 
           OSPFv3 interface. This notification should be generated 
           when the interface state regresses (for example, goes 
           from Dr to Down) or progresses to a terminal 
           state (that is, Point-to-Point, DR Other, Dr, or 
           Backup)."                "An ospfv3RestartStatusChange notification signifies that 
           there has been a change in the graceful restart 
           state for the router. This notification should be 
           generated when the router restart status 
           changes."                0"An ospfv3NbrRestartHelperStatusChange notification 
           signifies that there has been a change in the 
           graceful restart helper state for the neighbor. 
           This notification should be generated when the 
           neighbor restart helper status transitions for a neighbor."                Y"An ospfv3VirtNbrRestartHelperStatusChange 
           notification signifies that there has been a 
           change in the graceful restart helper state for 
           the virtual neighbor. This notification should be 
           generated when the virtual neighbor restart helper status 
           transitions for a virtual neighbor."                b"An ospfv3NssaTranslatorStatusChange notification 
            indicates that there has been a change in the router's ability 
            to translate OSPFv3 NSSA LSAs into OSPFv3 External LSAs. 
            This notification should be generated when the Translator Status 
            transitions from or to any defined status on a per area basis."                "An hwOspfv3LastAuthKeyExpiry notification 
            indicates that the last key associated with an interface has expired.
            When this notification is received, either the lifetime of the key should be extended
            or a new key should be configured."                "An hwOspfv3AuthSequenceNumWrap notification 
            indicates that the 64-bit authentication sequence number has wrapped.
            When this notification is received, all the keys must be reset
            to avoid the possibility of replay attacks."                 M"The object is used to monitor router ID conflict recovery in an intra area."                 Q"These objects are used to monitor changed OSPFv3 peer flapping suppress status."                 �"This object indicates that the number of AS-external LSAs generated when an OSPFv3 process imports external routes exceeds the configured alarm threshold."                 �"This object indicates that the number of AS-external LSAs generated when an OSPFv3 process imports external routes has been less than the configured alarm threshold."                 �"This object indicates that the number of AS-external LSAs generated when an OSPFv3 process imports external routes exceeds the configured maximum number."                 �"This object indicates that the number of AS-external LSAs generated when an OSPFv3 process imports external routes has been less than the configured maximum number."                 �"This object indicates that the number of NSSA LSAs generated when an OSPFv3 process imports external routes exceeds the configured alarm threshold."                 �"This object indicates that the number of NSSA LSAs generated when an OSPFv3 process imports external routes has been less than the configured alarm threshold."                 �"This object indicates that the number of NSSA LSAs generated when an OSPFv3 process imports external routes exceeds the configured maximum number."                 �"This object indicates that the number of NSSA LSAs generated when an OSPFv3 process imports external routes has been less than the configured maximum number."                 P"This object is used to monitor the router receive a greater age lsa in ospfv3."                 �"This object indicates that the local device deleted OSPFv3 routes advertised by other devices. 
            Reset or isolate the device from the network."                 g"This object indicates that the local device did not delete OSPFv3 routes advertised by other devices."                 �"This object indicates that OSPFv3 routes advertised by the local device were deleted by another device. 
            Reset or isolate the faulty device from the network."                 m"This object indicates that OSPFv3 routes advertised by the local device were not deleted by another device."                �"This object indicates that OSPFv3 routes advertised by the local device were deleted by another device, 
            and the possibly faulty device did not support OSPFv3 flush LSA source trace. Log in to the possibly faulty device. 
            If the device is deleting routes, reset or isolate it from the network. Otherwise, check other devices. 
            Neither of the devices displayed in the display ospfv3 purge-source-trace analysis-info  command output is the faulty device."                 m"This object indicates that OSPFv3 routes advertised by the local device were not deleted by another device."                "This object indicates that OSPFv3 routes advertised by the local device were deleted by another device. 
            Log in to the possibly faulty device. If the device is deleting routes, reset or isolate it from the network. 
            Otherwise, check other devices."                 m"This object indicates that OSPFv3 routes advertised by the local device were not deleted by another device."                 �"This object indicates that OSPFv3 routes advertised by another device were deleted. 
            Reset or isolate the faulty device from the network."                 Y"This object indicates that OSPFv3 routes advertised by another device were not deleted."                �"This object indicates that OSPFv3 routes advertised by another device were deleted, 
            and the possibly faulty device did not support OSPFv3 flush LSA source trace. 
            Log in to the possibly faulty device. If the device is deleting routes, reset or isolate it from the network. 
            Otherwise, check other devices. Neither of the devices displayed in the display ospfv3 purge-source-trace analysis-info 
            command output is the faulty device."                 Y"This object indicates that OSPFv3 routes advertised by another device were not deleted."                 �"This object indicates that OSPFv3 routes advertised by another device were deleted. Log in to the possibly faulty device. 
            If the device is deleting routes, reset or isolate it from the network. Otherwise, check other devices."                 Y"This object indicates that OSPFv3 routes advertised by another device were not deleted."                 R"This object indicates that a routing loop has been detected on the local device."                 9"This object indicates that the routing loop is cleared."                 G"This object indicates that an OSPF link cost adjustment event occurs."                 K"This object indicates that an OSPF link cost adjustment event is cleared."                 D"The object is used to monitor router ID conflict in an intra area."                 M"The object is used to monitor router ID conflict recovery in an intra area."                 Q"This object indicates that the number of ospfv3 exceeds the configed threshold."                 `"This object indicates that the number of ospfv3 has been less than the the configed threshold."                        U"A 32-bit integer uniquely identifying the 
                router in the Autonomous System. To ensure 
                uniqueness, this may default to the value of 
                one of the router's IPv4 host addresses, 
                represented as a 32-bit unsigned integer, 
                if IPv4 is configured on the router."                       �"The administrative status of OSPFv3 in the 
                router. The value 'enabled' denotes that the 
                OSPFv3 Process is active on at least one 
                interface; 'disabled' disables it on all 
                interfaces."                       +"The version number of OSPF for IPv6 is 3."                       P"A flag to note whether this router is an area 
                border router." I"OSPF Version 2, Section 3 Splitting the AS into 
                Areas"                     l"A flag to note whether this router is  
                configured as an Autonomous System border router." I"OSPF Version 2, Section 3.3 Classification of 
                routers"                     z"The number of AS-Scope (for example AS-External) link state 
                advertisements in the link state database."                      �"The 32-bit unsigned sum of the LS checksums of 
                the AS-scoped link state advertisements  
                contained in the link state database. This sum 
                can be used to determine if there has been a 
                change in a router's link state database, and 
                to compare the link state database of two 
                routers."                       �"The number of new link-state advertisements 
                that have been originated. This number is 
                incremented each time the router originates a new 
                LSA."                      "The number of link state advertisements  
                received determined to be new instantiations. 
                This number does not include newer  
                instantiations of self-originated link state 
                advertisements."                       x"The number of AS-Scope External(LS type 0x4005) link state 
                advertisements in the link state database"                       "The maximum number of non-default  
                AS-external-LSAs entries that can be stored in the 
                link state database. If the value is -1, then 
                there is no limit. 
 
                When the number of non-default AS-external-LSAs 
                in a router's link-state database reaches 
                ospfv3ExtAreaLsdbLimit, the router enters Overflow 
                state. The router never holds more than 
                ospfv3ExtAreaLsdbLimit non-default AS-external-LSAs 
                in its database. Ospfv3ExtAreaLsdbLimit MUST be set 
                identically in all routers attached to the OSPFv3 
                backbone and/or any regular OSPFv3 area. (that is, 
                OSPFv3 stub areas and NSSAs are excluded)."                       �"The router's support for OSPFv3 Graceful restart.  
              Options include: no restart support, only planned  
              restarts or both planned and unplanned restarts."                       6"Configured OSPFv3 Graceful restart timeout interval."                       ;"The current status of OSPFv3 Graceful restart capability."                       N"Remaining time in current OSPFv3 Graceful restart  
              interval."                      �"Describes the outcome of the last attempt at a  
              Graceful restart. 
     
              none:............no restart has yet been attempted. 
              inProgress:......a restart attempt is currently underway. 
              completed:.......the last restart completed successfully. 
              timedOut:........the last restart timed out. 
              topologyChanged:.the last restart was aborted due to 
                               a topology change."                      "If this object is set to true(1), then it enables 
                the generation of OSPFv3 Notifications. If it is 
                set to false(2), these notifications are not 
                generated. 
    
                Configured values MUST survive an agent reboot."                      @"Reference bandwidth in kilobits per second for
               calculating default interface metrics.  The
               default value is 100,000 KBPS (100 MBPS).

               This object is persistent, and when written, the
               entity SHOULD save the change to non-volatile
               storage."                       �"Information describing the configured  
                parameters and cumulative statistics of the router's 
                attached areas." F"OSPF Version 2, Section 6 The Area Data  
                Structure"                     �"Information describing the configured  
                parameters and cumulative statistics of one of the 
                router's attached areas."                       m"A 32-bit integer uniquely identifying an area. 
                Area ID 0 is used for the OSPFv3 backbone." ."OSPF Version 2, Appendix C.2 Area parameters"                     �"Indicates whether an area is a Stub area, NSSA, or 
                standard area. AS-scope LSAs are not imported into Stub 
                Areas or NSSAs. NSSAs import AS-External data as NSSA 
                LSAs which have Area-scope" ."OSPF Version 2, Appendix C.2 Area parameters"                     �"The number of times that the intra-area route 
                table has been calculated using this area's 
                link state database. This is typically done 
                using Dijkstra's algorithm."                       �"The total number of area border routers 
                reachable within this area. This is initially zero, 
                and is calculated in each SPF Pass."                       �"The total number of Autonomous System border 
                routers reachable within this area. This is 
                initially zero, and is calculated in each SPF 
                Pass."                       �"The total number of Area-Scope link state  
                advertisements in this area's link state  
                database."                      q"The 32-bit unsigned sum of the Area-Scope link state 
                advertisements' LS checksums contained in this 
                area's link state database. The sum can be used 
                to determine if there has been a change in a 
                router's link state database, and to compare the 
                link-state database of two routers."                      "The variable ospfv3AreaSummary controls the 
                import of Inter-Area LSAs into stub and 
                NSSA areas. It has no effect on other areas. 
 
                If it is noAreaSummary, the router will neither 
                originate nor propagate Inter-Area LSAs into the 
                stub or NSSA area. It will rely entirely on its 
                default route. 
 
                If it is sendAreaSummary, the router will both 
                summarize and propagate Inter-Area LSAs."                      >"This object permits management of the table by 
                facilitating actions such as row creation, 
                construction and destruction. 
 
                The value of this object has no effect on 
                whether other objects in this conceptual row can be 
                modified."                       `"The metric value advertised for the default route 
                 into Stub and NSSA areas."                       �"Indicates an NSSA border router's policy to
                perform NSSA translation of NSSA-LSAs into
                AS-External-LSAs."                      �"Indicates if and how an NSSA border router is performing NSSA translation of NSSA-LSAs into AS-External-LSAs.  When this object is set to 'enabled', the NSSA border router's ospfv3AreaNssaTranslatorRole has been set to 'always'. When this object is set to 'elected', a candidate NSSA border router is translating NSSA-LSAs into AS-External-LSAs.  When this object is set to 'disabled', a candidate NSSA Border router is NOT translating NSSA-LSAs into AS-External-LSAs."                       �"The stability interval defined as the number of
                seconds after an elected translator determines its
                services are no longer required that it should
                continue to perform its translation duties."                      *"Indicates the number of Translator state changes that have occurred since the last start-up of the OSPFv3 routing process. Discontinuities in the value of this counter can occur at re-initialization of the management system and at other times as indicated by the value of ospfv3DiscontinuityTime."                       4"The OSPFv3 Process's AS-Scope Link State Database."                       -"A single AS-Scope Link State Advertisement."                       �"The type of the link state advertisement. 
                Each link state type has a separate  
                advertisement format. AS-Scope LSAs not recognized 
                by the router may be stored in the database."                       o"The 32 bit number that uniquely identifies the 
                originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    C"The Link State ID is an LS Type Specific field 
                containing a unique identifier; 
                it identifies the piece of the routing domain 
                that is being described by the advertisement. 
                In contrast to OSPFv2, the LSID has no 
                addressing semantics."                      H"The sequence number field is a signed 32-bit 
                integer. It is used to detect old and duplicate 
                link state advertisements. The space of 
                sequence numbers is linearly ordered. The 
                larger the sequence number the more recent the 
                advertisement." J"OSPF Version  2,  Section  12.1.6  LS  sequence 
                number"                     V"This field is the age of the link state  
                advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"       9-- Should be 0..MaxAge 
-- unless DoNotAge bit is set 
            �"This field is the checksum of the complete 
                contents of the advertisement, excepting the 
                age field. The age field is excepted so that 
                an advertisement's age can be incremented 
                without updating the checksum. The checksum 
                used is the same that is used for ISO 
                connectionless datagrams; it is commonly 
                referred to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     N"The entire Link State Advertisement, including 
                its header."                       P"Indicates whether the LSA type is recognized by 
                this Router."                       6"The OSPFv3 Process's Area-Scope Link State Database."                       /"A single Area-Scope Link State Advertisement."                       V"The 32-bit identifier of the Area from which the 
                LSA was received." ."OSPF Version 2, Appendix C.2 Area parameters"                     �"The type of the link state advertisement. 
                Each link state type has a separate 
                advertisement format. Area-Scope LSAs unrecognized 
                by the router are also stored in this database."                       o"The 32-bit number that uniquely identifies the 
                originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    C"The Link State ID is an LS Type Specific field 
                containing a unique identifier; 
                it identifies the piece of the routing domain 
                that is being described by the advertisement. 
                In contrast to OSPFv2, the LSID has no 
                addressing semantics."                      I"The sequence number field is a signed 32-bit 
                integer. It is used to detect old and  
                duplicate link state advertisements. The space 
                of sequence numbers is linearly ordered. The 
                larger the sequence number the more recent the 
                advertisement." J"OSPF Version  2,  Section  12.1.6  LS  sequence 
                number"                     U"This field is the age of the link state 
                advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"       9-- Should be 0..MaxAge 
-- unless DoNotAge bit is set 
            �"This field is the checksum of the complete 
                contents of the advertisement, excepting the 
                age field. The age field is excepted so that 
                an advertisement's age can be incremented 
                without updating the checksum. The checksum 
                used is the same that is used for ISO  
                connectionless datagrams; it is commonly 
                referred to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     N"The entire Link State Advertisement, including 
                its header."                       P"Indicates whether the LSA type is recognized 
                by this Router."                       6"The OSPFv3 Process's Link-Scope Link State Database."                       /"A single Link-Scope Link State Advertisement."                       O"The identifier of the link from which the LSA 
                was received."                       ]"The identifier of the interface instance from 
                which the LSA was received."                       �"The type of the link state advertisement. 
                Each link state type has a separate 
                advertisement format. Link-Scope LSAs unrecognized 
                by the router are also stored in this database."                       o"The 32 bit number that uniquely identifies the 
                originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    C"The Link State ID is an LS Type Specific field 
                containing a unique identifier; 
                it identifies the piece of the routing domain 
                that is being described by the advertisement. 
                In contrast to OSPFv2, the LSID has no 
                addressing semantics."                      H"The sequence number field is a signed 32-bit 
                integer. It is used to detect old and duplicate 
                link state advertisements. The space of 
                sequence numbers is linearly ordered. The 
                larger the sequence number the more recent the 
                advertisement." J"OSPF Version  2,  Section  12.1.6  LS  sequence 
                number"                     U"This field is the age of the link state 
                advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"       9-- Should be 0..MaxAge 
-- unless DoNotAge bit is set 
            �"This field is the checksum of the complete 
                contents of the advertisement, excepting the 
                age field. The age field is excepted so that 
                an advertisement's age can be incremented 
                without updating the checksum. The checksum 
                used is the same that is used for ISO 
                connectionless datagrams; it is commonly 
                referred to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     N"The entire Link State Advertisement, including 
                its header."                       Q"Indicates whether the LSA type is recognized by this 
                 Router."                       f"The OSPFv3 Interface Table describes the  
                interfaces from the viewpoint of OSPFv3." L"OSPF Version 2, Appendix C.3 Router interface 
                parameters"                     d"The OSPFv3 Interface Entry describes one 
                interface from the viewpoint of OSPFv3."                       �"The interface index of this OSPFv3 interface. 
                 It corresponds to the interface index of the 
                 IPv6 interface on which OSPFv3 is configured."                       �"Enables multiple interface instances of OSPFv3 
                to be run over a single link. Each protocol 
                instance would be assigned a separate ID. This ID 
                has local link significance only."                       �"A 32-bit integer uniquely identifying the area 
                to which the interface connects. Area ID 
                0 is used for the OSPFv3 backbone."                       "The OSPFv3 interface type."                      )"The OSPFv3 interface's administrative status. 
                The value formed on the interface, and the 
                interface will be advertised as an internal route 
                to some area. The value 'disabled' denotes 
                that the interface is external to OSPFv3."                      �"The priority of this interface. Used in 
                multi-access networks, this field is used in 
                the designated router election algorithm. The 
                value 0 signifies that the router is not  
                eligible to become the designated router on this 
                particular network. In the event of a tie in 
                this value, routers will use their Router ID as 
                a tie breaker."                       �"The estimated number of seconds it takes to 
                transmit a link state update packet over this 
                interface."                       "The number of seconds between link state 
                advertisement retransmissions, for adjacencies 
                belonging to this interface. This value is 
                also used when retransmitting database  
                description and link state request packets."                       �"The length of time, in seconds, between the 
                Hello packets that the router sends on the 
                interface. This value must be the same for all 
                routers attached to a common network."                      `"The number of seconds that a router's Hello 
                packets have not been seen before its  
                neighbors declare the router down on the interface. 
                This should be some multiple of the Hello interval. 
                This value must be the same for all routers attached 
                to a common network."                       "The OSPFv3 Interface State."                       )"The Router ID of the Designated Router."                       B"The Router ID of the Backup Designated 
                Router."                       n"The number of times this OSPFv3 interface has 
                changed its state, or an error has occurred."                      >"This object permits management of the table by 
                facilitating actions such as row creation, 
                construction and destruction. 
 
                The value of this object has no effect on 
                whether other objects in this conceptual row can be 
                modified."                      "The metric assigned to this interface. 
                 The default value of the Metric is 
                Reference Bandwidth / ifSpeed. The value 
                of the reference bandwidth is configured 
                by the ospfv3ReferenceBandwidth object."                       �"The total number of Link-Scope link state 
                advertisements in this link's link state 
                database."                      q"The 32-bit unsigned sum of the Link-Scope link state 
                advertisements' LS checksums contained in this 
                link's link state database. The sum can be used 
                to determine if there has been a change in a 
                router's link state database, and to compare the 
                link state database of two routers."                       �"The larger time interval, in seconds, between 
                the Hello packets sent to an inactive  
                non-broadcast multi-access neighbor."                      �"The way multicasts should forwarded on this 
                interface; not forwarded, forwarded as data 
                link multicasts, or forwarded as data link  
                unicasts. Data link multicasting is not  
                meaningful on point to point and NBMA interfaces, 
                and setting ospfv3MulticastForwarding to 0 
                effectively disables all multicast forwarding."                       G"Information about this router's virtual 
                interfaces." H"OSPF Version 2, Appendix C.4 Virtual link 
                parameters"                     /"Information about a single Virtual Interface."                       y"The Transit Area that the Virtual Link 
                traverses. By definition, this is not 
                Area 0"                       ("The Router ID of the Virtual Neighbor."                       �"The local interface index assigned to this 
                OSPFv3 virtual interface. It is advertised in 
                Hello's sent over the virtual link and in the 
                router's router-LSAs."                       �"Specifies the interface instance ID to be used 
                for the virtual interface. This ID has local link 
                significance only."                       �"The estimated number of seconds it takes to 
                transmit a link state update packet over this 
                interface."                      �"The number of seconds between link state 
                advertisement retransmissions, for adjacencies 
                belonging to this interface. This value is 
                also used when retransmitting database 
                description and link state request packets. This 
                value should be well over the expected 
                round-trip time."                       �"The length of time, in seconds, between the 
                Hello packets that the router sends on the 
                interface.  This value must be the same for the 
                virtual neighbor."                      :"The number of seconds that a router's Hello 
                packets have not been seen before its 
                neighbors declare the router down. This should 
                be some multiple of the Hello interval. This 
                value must be the same for the virtual 
                neighbor."                       f"OSPFv3 virtual interface states. The same encoding 
                as the hwOspfv3IfTable is used."                       T"The number of state changes or error events on 
                this Virtual Link"                      >"This object permits management of the table by 
                facilitating actions such as row creation, 
                construction and destruction. 
 
                The value of this object has no effect on 
                whether other objects in this conceptual row can be 
                modified."                       �"The total number of Link-Scope link state 
                advertisements in this virtual link's link state 
                database."                      y"The 32-bit unsigned sum of the Link-Scope link-state 
                advertisements' LS checksums contained in this 
                virtual link's link-state database. The sum can be used 
                to determine if there has been a change in a 
                router's link state database, and to compare the 
                link state database of two routers."                       ."A table of non-virtual neighbor information." J"OSPF Version 2, Section 10 The Neighbor Data 
                Structure"                     ."The information regarding a single neighbor." J"OSPF Version 2, Section 10 The Neighbor Data 
                Structure"                     Z"The local link ID of the link over which the 
                 neighbor can be reached."                       �"Interface instance over which the neighbor 
                can be reached. This ID has local link 
                significance only."                       i"A 32-bit integer uniquely identifying the neighboring 
               router in the Autonomous System."                       n"The address type of ospfv3NbrAddress. Only IPv6 
                addresses without zone index are expected."                       T"The IPv6 address of the neighbor associated with 
                the local link."                       M"A Bit Mask corresponding to the neighbor's 
                options field." 0"OSPF Version 3, Appendix A.2 the Options field"                     �"The priority of this neighbor in the designated 
                router election algorithm. The value 0 signifies 
                that the neighbor is not eligible to become the 
                designated router on this particular network."                       E"The State of the relationship with this 
                Neighbor." ."OSPF Version 2, Section 10.1 Neighbor States"                     o"The number of times this neighbor relationship 
                has changed state, or an error has occurred."                       C"The current length of the retransmission 
                queue."                       Q"Indicates whether Hellos are being suppressed 
                to the neighbor"                       �"The interface ID that the neighbor advertises 
                in its Hello Packets on this link, that is, the 
                neighbor's local interface index."                       h"Indicates whether the router is acting  
              as a Graceful restart helper for the neighbor."                       �"Remaining time in current OSPFv3 Graceful restart  
              interval, if the router is acting as a restart  
              helper for the neighbor."                      �"Describes the outcome of the last attempt at acting as a Graceful restart helper for the neighbor.
               - none: No restart has yet been attempted.
               - inProgress: A restart attempt is currently underway.
               - completed: The last restart completed successfully.
               - timedOut: The last restart timed out.
               - topologyChanged: The last restart was aborted due to a topology change."                       L"A table of configured, non-virtual neighbor 
                information." J"OSPF Version 2, Section 10 The Neighbor Data 
                Structure"                     �"The information regarding a single configured 
                neighbor or neighbor discovered by lower-level 
                protocols such as Inverse Neighbor Discovery." J"OSPF Version 2, Section 10 The Neighbor Data 
                Structure"                     Z"The local link ID of the link over which the 
                 neighbor can be reached."                       �"Interface instance over which the neighbor 
                can be reached. This ID has local link 
                significance only."                       m"A 32-bit integer uniquely identifying the static neighbor 
               router in the Autonomous System."                       �"The priority of this neighbor in the designated 
                router election algorithm. The value 0 signifies 
                that the neighbor is not eligible to become the 
                designated router on this particular network."                      >"This object permits management of the table by 
                facilitating actions such as row creation, 
                construction and destruction. 
 
                The value of this object has no effect on 
                whether other objects in this conceptual row can be 
                modified."                       *"A table of virtual neighbor information." *"OSPF Version 2, Section 15 Virtual Links"                     "Virtual neighbor information."                       "The Transit Area Identifier."                       j"A 32-bit integer uniquely identifying the 
                neighboring router in the Autonomous System."                       g"The local interface ID for the virtual link over 
                which the neighbor can be reached."                       g"The interface instance for the virtual link over 
                which the neighbor can be reached."                       r"The address type of ospfv3VirtNbrAddress. Only IPv6 
                addresses without zone index are expected."                       l"The IPv6 address advertised by this Virtual Neighbor. 
                It must be a Global scope address."                       M"A Bit Mask corresponding to the neighbor's options 
                field." 0"OSPF Version 3, Appendix A.2 the Options field"                     1"The state of the Virtual Neighbor Relationship."                       j"The number of times this virtual link has 
                changed its state, or an error has occurred."                       C"The current length of the retransmission 
                queue."                       Q"Indicates whether Hellos are being suppressed 
                to the neighbor"                       �"The interface ID that the neighbor advertises 
                in its Hello Packets on this virtual link, that is, 
                the neighbor's local interface ID."                       h"Indicates whether the router is acting  
              as a Graceful restart helper for the neighbor."                       �"Remaining time in current OSPFv3 Graceful restart  
              interval, if the router is acting as a restart  
              helper for the neighbor."                      
"Describes the outcome of the last attempt at acting  
               as a Graceful restart helper for the neighbor. 
    
              none:............no restart has yet been attempted. 
              inProgress:......a restart attempt is currently underway. 
              completed:.......the last restart completed successfully. 
              timedOut:........the last restart timed out. 
              topologyChanged:.the last restart was aborted due to 
                               a topology change."                      "A range of IPv6 prefixes specified by a 
                prefix/prefix length pair. Note that if 
                ranges are configured such that one range 
                subsumes another range the most specific 
                match is the preferred one."                      "A range of IPv6 prefixes specified by a 
                prefix/prefix length pair. Note that if 
                ranges are configured such that one range 
                subsumes another range the most specific match is 
                the preferred one." /"OSPF Version 2, Appendix C.2  Area parameters"                     I"The Area the Address Aggregate is to be found 
                within." ."OSPF Version 2, Appendix C.2 Area parameters"                     �"The type of the Address Aggregate.  This field 
                specifies the Area Lsdb type that this Address 
                Aggregate applies to." V"OSPF Version 2, Appendix A.4.1 The Link State 
                Advertisement header"                     c"The prefix type of ospfv3AreaAggregatePrefix. Only 
                IPv6 addresses are expected."           --{ ipv6(2) } 
           "The IPv6 Prefix." ."OSPF Version 2, Appendix C.2 Area parameters"                     `"The length of the prefix (in bits). A prefix can 
                not be shorter than 0 bits." ."OSPF Version 2, Appendix C.2 Area parameters"                    >"This object permits management of the table by 
                facilitating actions such as row creation, 
                construction and destruction. 
 
                The value of this object has no effect on 
                whether other objects in this conceptual row can be 
                modified."                       �"Prefixes subsumed by ranges either trigger the 
                advertisement of the indicated aggregate 
                (advertiseMatching), or result in the prefix not 
                being advertised at all outside the area."                          {"Potential types of configuration conflicts. 
           Used by the ospfv3ConfigError and  
           ospfv3ConfigVirtError notifications. When the last value 
           of a notification using this object is needed, but no 
           notifications of that type have been sent, this value 
           pertaining to this object should be returned as 
           noError"                       �"OSPFv3 packet types. When the last value of a notification 
           using this object is needed, but no notifications of 
           that type have been sent, the value pertaining 
           to this object should be returned as nullPacket"                      �"The IPv6 address of an inbound packet that cannot 
               be identified by a neighbor instance. When 
               the last value of a notification using this object is 
               needed, but no notifications of that type have been sent, 
               the value pertaining to this object should 
               be returned as 0. 
 
               Only IPv6 addresses without zone index are expected."                       "The interface name"                        "Interface state change reason."                       "Neighbor state change reason."                       \"The process ID indicates the OSPFv3 process number. The value ranges from 1 to 4294967295."                       m"A 32-bit integer uniquely identifying an area. 
                Area ID 0 is used for the OSPFv3 backbone."                      U"A 32-bit integer uniquely identifying the 
                router in the Autonomous System. To ensure 
                uniqueness, this may default to the value of 
                one of the router's IPv4 host addresses, 
                represented as a 32-bit unsigned integer, 
                if IPv4 is configured on the router."                      d"his object indicates the mode of the OSPFv3 neighbor relationship flapping suppression.
none(1): OSPFv3 neighbor relationship flapping suppression is not started yet.
holddown(2): OSPFv3 neighbor relationship flapping suppression works in Hold-down mode.
holdmaxcost(3): OSPFv3 neighbor relationship flapping suppression works in Hold-max-cost mode.
"                       5"The reason of peer flapping suppress status change."                       X"A 32-bit integer uniquely identifies an area. LSA-ID 0.0.0.0 is used for the OSPF LSA."                       "This age of the ospf lsa."                       O"This object indicates the name of an OSPFv3 router which purge OSPFv3 routes."                       U"This object indicates the IP address of an OSPFv3 router which purge OSPFv3 routes."                       h"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System."                       Y"This object indicates the number of LSAs deleted by the local device or another device."                       T"This object indicates the number of affected node when OSPFv3 routes were deleted."                       ?"This object indicates the total number of node in the System."                       @"This object indicates the period interval for purge statistic."                       Q"This object indicates the number of node ruled out when checking faulty device."                       U"This object indicates the name of an OSPFv3 router which maybe purge OSPFv3 routes."                       U"This object indicates the name of an OSPFv3 router which maybe purge OSPFv3 routes."                       U"This object indicates the name of an OSPFv3 router which maybe purge OSPFv3 routes."                       ["This object indicates the IP address of an OSPFv3 router which maybe purge OSPFv3 routes."                       ["This object indicates the IP address of an OSPFv3 router which maybe purge OSPFv3 routes."                       ["This object indicates the IP address of an OSPFv3 router which maybe purge OSPFv3 routes."                       h"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System."                       h"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System."                       h"This object indicates the 32-bit integer that uniquely identifies the router in the Autonomous System."                       H"This object indicates the type of the OSPFv3 import route loop detect."                       V"This object indicates the protocol attribute of the OSPFv3 import route loop detect."                       g"This object indicates the redis-list router id and process id of the OSPFv3 import route loop detect."                       g"This object indicates the redis-list router id and process id of the OSPFv3 import route loop detect."                       D"This object indicates the reason why OSPFv3 adjusts the link cost."                       *"This object indicates the original cost."                       W"This object indicates Link cost of the current event that triggers OSPFv3 adjustment."                       O"This object indicates the upper alarm threshold for the number of neighbors. "                               \"These objects are used for managing/monitoring 
                OSPFv3 global parameters."                 O"These objects are used for OSPFv3 systems 
                supporting areas."                 n"These objects are used for OSPFv3 systems 
                that display their AS-scope link state database."                 p"These objects are used for OSPFv3 systems 
                that display their Area-scope link state database."                 p"These objects are used for OSPFv3 systems 
                that display their Link-scope link state database."                 \"These interface objects used for  
                managing/monitoring OSPFv3 interfaces."                 p"These virtual interface objects are used for  
                managing/monitoring OSPFv3 virtual interfaces."                 ]"These neighbor objects are used for 
                managing/monitoring OSPFv3 neighbors."                 s"These configured neighbor objects are used for 
                managing/monitoring OSPFv3 configured neighbors."                 m"These virtual neighbor objects are used for 
                managing/monitoring OSPFv3 virtual neighbors."                 �"These area aggregate objects used required for 
                aggregating OSPFv3 prefixes for summarization  
                across areas."                 L"These objects are used to record notification 
                parameters"                 -"This group is used for OSPFv3 notifications"                         "The compliance statement"   n"This group is required for OSPFv3 systems that 
                display their AS-scope link state database." p"This group is required for OSPFv3 systems that 
                display their Area-scope link state database." p"This group is required for OSPFv3 systems that 
                display their Link-scope link state database." _"This group is required for OSPFv3 systems that
                support OSPFv3 notifications." _"This group is required for OSPFv3 systems that
                support OSPFv3 notifications." b"An implementation is only required to support IPv6 
                address without zone index." a"An implementation is only required to support IPv6
                address without zone index." b"An implementation is only required to support IPv6 
                address without zone index." a"An implementation is only required to support IPv6
                address without zone index."            0"When this MIB module is implemented without
                  support for read-create (that is, in read-only
                  mode), the implementation can claim read-only
                  compliance.  Such a device can then be monitored,
                  but cannot be configured with this MIB."   k"This group is required for OSPFv3 systems that
              display their AS-scope link state database." m"This group is required for OSPFv3 systems that
              display their Area-scope link state database." �"This group is required for OSPFv3 systems that
              display their Link-scope link state database
              for non-virtual interfaces." ]"This group is required for OSPFv3 systems that
              support OSPFv3 notifications." ]"This group is required for OSPFv3 systems that
              support OSPFv3 notifications." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."                                            