0-- ============================================================================
-- Copyright (C) 2021 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description:  
-- Reference:  
-- Version: V2.14
-- History:
-- ============================================================================
  w"type of port :
                 invalid(1):invalid type,       
                 pw(2) :  pw type,
                 switchport(3) :  switchport type,
                 dot1q(4): dot1q sub-interface type,
                 termination(5): termination sub-interface type,
                 board(6): interface board number,
                 VlanPort(7): Vlanif port,
                 qinq-batch-config(9): batch config qinq port ce VLAN ID,
                 dot1q-termination-batch-config(10): batch config dot1q termination port ce VLAN ID,
                 Main-interface-bound-to-vsi(11): Main interface that bound to vsi"              �"The VLAN-ID that uniquely identifies a specific VLAN,
        any VLAN, or no VLAN.  The special values 0 and 4095
        have the same meaning as described in the VlanIdOrAny
        and VlanIdOrNone TEXTUAL-CONVENTIONs.

        Note that a MIB object that is defined using this
        TEXTUAL-CONVENTION should clarify the meaning of
        'any VLAN' and 'no VLAN' (i.e., the special values
        0 and 4095)."                                                                                j"The MIB module for IGMP Snooping feature. 

         Internet Group Management Protocol (IGMP) is the protocol used 
         by IPv4 end hosts to indicate their interest in receiving 
         multicast traffic for certain multicast groups to neighboring 
         multicast routers. 
         IGMP Snooping is a switch protocol. A switch that implements 
         IGMP Snooping listens to the IGMP messages exchanged between 
         the hosts and router, then provides selective transmission of 
         multicast traffic based on multicast mac destination address
         or multicast group address." �"Huawei Industrial Base
               Bantian, Longgang
                Shenzhen 518129
                People's Republic of China
                Website: http://www.huawei.com
                Email: support@huawei.com
             " "202104250000Z" "201810150000Z" "201807140000Z" "201803120000Z" "201711040000Z" "201706230000Z" "201610110000Z" "201608160000Z" "201606230000Z" "201409180000Z" "201401120000Z" "201308280000Z" "201308260000Z" "201308170000Z" "200812300000Z" "Modify comment." �"1: Modify hwL2mcGlobalEntryThresholdExceed.
                 2.Modify hwL2mcGlobalEntryThresholdResume.
                 3.Add hwL2mcNotificationsExceedType"w"1: Add hwL2mcGlobalEntryThresholdExceed.
                 2.Add hwL2mcGlobalEntryThresholdResume.
                 3.Add hwL2mcUserPerEntryThresholdExceed.
                 4.Add hwL2mcUserPerEntryThresholdResume.
		 5.Add hwL2mcGlobalEntryExceed.
		 6.Add hwL2mcUserPerEntryExceed.
                 7.Create 1 params including.
	           hwL2mcNotificationReason.""Add hwL2mcReportListeningThresholdExceed, hwL2mcReportListeningThresholdResume
         and create 3 params including
                 hwL2mcNotificationsSlot,
                 hwL2mcNotificationsExceedCurrent,
                 hwL2mcNotificationsExceedThreshold"2"Modify MAX-ACCESS of hwMldFwdVlanIndex,
         	hwMldFwdVsiName,
		hwMldFwdGroupAddress,
		hwMldFwdSourceAddress,
		hwMldFwdPortType,
		hwMldFwdPortIfIndex,
		hwMldFwdPortPeId,
		hwMldFwdPortCeId,
		hwMldFwdPeerAddress,
		hwMldFwdVcOrSiteId,
		hwL2mcGroupRowStatus,
		hwL2mcDTGroupRowStatus."l"Add hwL2mcReportListeningGrpExceed ,
         and create 5 params including                 
                 hwL2mcNotificationsAddressType, 
                 hwL2mcNotificationsExceedLimit, 
                 hwL2mcNotificationsExceedGroupAddress, 
                 hwL2mcNotificationsExceedSourceAddress, 
                 hwL2mcNotificationsPortUserMac " "Add hwMldFwdTable." "Add hwL2mcLimitGroupTable ." +"Modify range of hwL2mcLimitMaxBandWidth ." "Import NOTIFICATION-TYPE." "Add new porttype." "Modify import mibs." J"Add hwL2mcNotificationsPortIfName to trap hwL2mcPortOtherQuerierTimeout." 4"Add trap hwL2mcPortOtherQuerierTimeout to the MIB." "Initial version of the MIB."                       �"IGMP snooping is enabled or disabled in the global view:
                        1: enabled
                        2: disabled
                        The default value is 2.
                "                      ,"The sending of query packets is enabled or disabled:
                        1: enabled
                        2: disabled
                The default value is 2.
                Note: Ensure that you query and configure this object after hwIgmpSnoopingEnabled is configured.
                "                       �"The source IP addresses of the Query messages sent by a device.
                The value ranges from 1.0.0.0 to 223.255.255.255.
                The default value is 192.168.0.1.
                "                       ,"The CAC trap interval. The default is 300."                       ?"The Performance statistic interval. The default is 15 minute."                           N"This table describes the configurations of IGMP snooping in a VLAN or a VSI."                       }"An entry is created for each active VLAN or VSI in the device 
         and deleted when the VLAN or VSI becomes inactive."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       �"Whether IGMP snooping is enabled in a VLAN or a VSI:
                        1:enabled
                        2:disabled
                The default value is 2.
                "                      S"The aging time of an interface on a router.
                The value ranges from 1 to 1000, in seconds.
                The default value is 180, which router port is created by Igmp Query message.
                And when it is created by PIM hello messge, the default value is the time of Holdtime in the message.
                "                       �"The maximum response time.
                The value ranges from 1 to 25, in seconds.
                The default value is 10, in seconds.
                "                       �"The last member query interval.
                The value ranges from 1 to 5, in seconds.
                The default value is 1, in seconds.
                "                       �"The query interval.
                The value ranges from 1 to 65535, in seconds.
                The default value is 60, in seconds.
                "                       �"The robustness variable.
                The value ranges from 2 to 5.
                The default value is 2.
                "                       o"Whether to check the router-alert of a packet.
                The default value is false.
                "                       m"Whether to send the router-alert of a packet.
                The default value is true.
                "                       �"The version of the IGMP packets.
                The value ranges from 1 to 3.
                The default value is 2.
                "                       �"The forwarding mode:
                        1: IP
                        2: MAC
                The default value is 1.
                "                       �"Whether the prompt leave is enabled:
                        1: enabled
                        2: disabled
                The default value is 2.
                "                       �"Whether the prompt leave complies with the ACL rules. The ACL number can be set.
                The ACL number ranges from 2000 to 3999.
                The default value is 0, indicating that no ACL number is set.
                "                       �"Whether interface learning is enabled or not in a VLAN:
                        1: enabled
                        2: disabled
                The default value is 1.
                "                       �"Whether the suppression of the IGMP Report message (proxy) is enabled:
                        1: enabled
                        2: disabled
                The default value is 2.
                "                       �"Whether the querier is enabled:
                        1: enabled
                        2: disabled
                The default value is 2.
                "                       �"Whether Ssm-Mapping is enabled:
                        1: enabled
                        2: disabled
                The default value is 2.
                "                       �"That SSM complies with the ACL number.
                The ACL number ranges from 2000 to 2999.
                The default value is 0, indicating that no ACL number is set.
                "                       �"Whether protocol packets are allowed to pass a router port when proxy is enabled.
                The default value is false.
                "                       �"That restric study:
                1: asm-ssm
                2: asm-only
                3: ssm-only
                The default value is 1.
                "                       }"That source aging time:
                range from 60 to 1000
                The default value is 210.
                "                       �"That performance statistic is enabled:
                1: enabled
                2: disabled
                The default value is 2.
                "                       �"That querier election is enabled:
                1: enabled
                2: disabled
                The default value is 2.
                "                       �"The host explicity track is enabled:
                1: enabled
                2: disabled
                The default value is 2.
                "                       �"That IGMP query forward :
            1: Do not forward;
            2: Forward without replace source MAC address;
            3: Forward with replace source MAC address;
                The default value is 1.
                "                       �"That IGMP report forward :
            1: Do not forward;
            2: Forward without replace source MAC address;
            3: Forward with replace source MAC address;
                The default value is 1.
                "                       S"Whether supress IGMP query packet or time of suppress interval.
                "                       ;"Whether responed to link state for SEP.
                "                       �"Whether the IGMP ip policy complies with the ACL rules. The ACL number can be set.
                The ACL number ranges from 2000 to 3999.
                The default value is 0, indicating that no ACL number is set.
                "                       3"The policy name of SSM mapping.
                "                       "The row status."                           P"Table contains VLAN or VSI statistics information
         for IGMP Snooping."                       }"An entry is created for each active VLAN or VSI in the device 
         and deleted when the VLAN or VSI becomes inactive."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       C"The number of IGMPv1 Report messages received in a VLAN or a VSI."                       C"The number of IGMPv2 Report messages received in a VLAN or a VSI."                       C"The number of IGMPv3 Report messages received in a VLAN or a VSI."                       @"The number of IGMP Leave messages received in a VLAN or a VSI."                       B"The number of IGMPv1 Query messages received in a VLAN or a VSI."                       B"The number of IGMPv2 Query messages received in a VLAN or a VSI."                       B"The number of IGMPv3 Query messages received in a VLAN or a VSI."                       ?"The number of PIM Hello messages received in a VLAN or a VSI."                       Q"The number of IGMP Query messages (the source address is 0) in a VLAN or a VSI."                       U"The number of IGMP Query messages (the source address is not 0) in a VLAN or a VSI."                       D"The number of Query messages sent by the proxy in a VLAN or a VSI."                       Y"The number of Query messages sent by the proxy in a VLAN or a VSI to a specified group."                       `"The number of Query messages sent by the proxy in a VLAN or a VSI to a specified source group."                       {"Whether to clear the statistics of IGMP snooping. If the value is 1, it indicates that the statistics need to be cleared."                           N"Table contains l2 multicast forward information
         for IGMP Snooping."                       �"An entry is created for each active VLAN or VSI in the device create a forwarding table entry and delete when 
        a forwarding table entry deleted."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       -"The source IP address of a multicast group."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       �"The address type of an entry:
                1: IP
                2: MAC
                The default value is 1.
                "                       �"The mode to create an interface on the host:
                1: static
                2: dynamic
                3: static and dynamic
                4: invalid
                "                       �"Whether an interface on the host is created through SSM-mapping:
                1: non-mapping
                2: mapping
                "                       �"The type of an interface created on a router:
                1: Interface connected to the host
                2: Router interface that replicates multicast data flows
                "                       �"Indicates (S, G) table created :
                1: from port;
                2: from static;
                3: from both
                the default value is 1
                "                       G"Table contains l2 multicast forward information
		for IGMP Snooping."                       �"An entry is created for each active VLAN or VSI in the device create a forwarding table entry and delete when 
		a forwarding table entry deleted."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
		The value ranges from 1 to 4095.
		"                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       -"The source IP address of a multicast group."                       �"The interface type:
		1: Invalid
		2: PW interface
		3: L2 interface
		4: Encapsulation sub-interface
		5: Termination sub-interface
		6: Interface Board
		7: Vlanif Port
		11: Main-interface-bound-to-vsi
		"                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       }"The PE VID of an interface.
		The value ranges from 1 to 4095.
		The value 4095 indicates that the PE VID is invalid.
		"                       }"The CE VID of an interface.
		The value ranges from 1 to 4095.
		The value 4095 indicates that the CE VID is invalid.
		"                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       Q"The address type of an entry:
		1: IP
		2: MAC
		The default value is 1.
		"                       t"The mode to create an interface on the host:
		1: static
		2: dynamic
		3: static and dynamic
		4: invalid
		"                       f"Whether an interface on the host is created through SSM-mapping:
		1: non-mapping
		2: mapping
		"                       �"The type of an interface created on a router:
		1: Interface connected to the host
		2: Router interface that replicates multicast data flows
		"                       t"Indicates (S, G) table created :
		1: from port;
		2: from static;
		3: from both
		the default value is 1
		"                           L"Table contains l2 multicast group information
         for IGMP Snooping."                       �"An entry is created for each active VLAN or VSI in the device create a forwarding table entry and delete when 
        a forwarding table entry deleted."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       &"The IP address of a multicast group."                       -"The source IP address of a multicast group."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       ;"How long the source group exists in the forwarding entry."                       n"The timeout period of the source group in the forwarding entry, that is, the aging time of the source group."                       4"How long the group exists in the forwarding entry."                       ^"When the group expires in the forwarding entry, that is, the aging time of the source group."                       |"The filtering mode:
                1: include
                2: exclude
                3: invalid 
                "                       �"The mode to create an interface on the host:
                1: static
                2: dynamic
                3: static and dynamic
                4: invalid
                "                       �"Whether an interface on the host is created through SSM-mapping:
                1: non-mapping
                2: mapping
                "                       "The row status."                           S"Table contains l2 multicast static group information
         for IGMP Snooping."                       �"An entry is created for each active VLAN or VSI in the device create a static group entry and delete when 
        a static group entry deleted."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       -"The source IP address of a multicast group."                       "The row status."                           R"This table contains the configuration of the source address list of SSM-Mapping."                       ]"An entry is created for each active VLAN or VSI in the device add an entry for SSM-Mapping."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       '"The IP address of a multicast group. "                       '"The mask length of a multicast group."                       L"The source address of SSM-Mapping, which serves as an index of this table."                       "The row status."                           W"In this table, you can query or configure a group policy to filter entries on a port."                       Z"An entry is created for each active VLAN or VSI in the device when a group policy added."                      �"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                9: batch config qinq port ce VLAN ID
                10: batch config dot1q termination port ce VLAN ID
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       �"The number of a basic ACL.
                The ACL number ranges from 2000 to 3999.
                The default value is 0, indicating that the value is invalid.
                "                       �"The IGMP version.
                The value ranges from 1 to 4.
                The default is 4, indicating that no version is specified.
                "                       "The row status."                           7"This table describes the configurations of a channel."                       V"An entry of channel is created for each VLAN or VSI in the device create an channel."                      "The VLAN ID, which is the configuration index in a VLAN. 
        If a VSI is specified, the value is 4095. If both hwChnlCfgVlanIndex and hwChnlCfgVSIName are invalid, the configuration is global.
                The value ranges from 1 to 4095.
                "                       �"The name of a VSI. 
        If a VLAN is specified, the value is 32. If both hwChnlCfgVlanIndex and hwChnlCfgVSIName are invalid, the configuration is global."                       "The channel name."                       U"The channel type:
                1: SSM
                2: ASM
                "                       "The row status."                           R"This table describes the configurations of IGMP snooping CAC in a VLAN or a VSI."                       D"An entry is created for each IGMP snooping CAC in a VLAN or a VSI."                      "The VLAN ID, which is the configuration index in a VLAN. 
        If a VSI is specified, the value is 4095. If both hwVlanLimitVlanIndex and hwVlanLimitVSIName are invalid, the configuration is global.
                The value ranges from 1 to 4095.
                "                       �"The name of a VSI. If a VLAN is specified, the value is 32. 
        If both hwVlanLimitVlanIndex and hwVlanLimitVSIName are invalid, the configuration is global."                       "The channel name."                       ]"The maximum number of forwarding entries. The value 0 indicates that the number is invalid."                       +"The number of current forwarding entries."                       M"The maximum bandwidth. The value 0 indicates that the bandwidth is invalid."                       "The current bandwidth."                       �"The number of ACL for the multicast groups that do not need to be configured with CAC limit.
                The ACL number ranges from 2000 to 3999.
                The default value is 0, indicating that the number is invalid.
                "                       "The row status."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                           O"This table describes the configurations of IGMP snooping CAC on an interface."                       A"An entry is created for each IGMP snooping CAC on an interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                      ]"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                9: batch config qinq port ce VLAN ID
                10: batch config dot1q termination port ce VLAN ID
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       "The channel name."                       �"The number of ACL for the multicast groups that do not need to be configured with CAC limit.
                The ACL number ranges from 2000 to 3999.
                The default value is 0, indicating that the number is invalid.
                "                       ]"The maximum number of forwarding entries. The value 0 indicates that the number is invalid."                       +"The number of current forwarding entries."                       M"The maximum bandwidth. The value 0 indicates that the bandwidth is invalid."                       "The current bandwidth."                       "The row status."                           I"Table contains l2 multicast fast forward information for IGMP Snooping."                       :"An entry is created for each IGMP snooping fast channel."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       /"The mask length of a multicast group address."                       -"The source IP address of a multicast group."                       0"The mask length of a multicast source address."                       "The row status."                           H"Table contains l2 multicast router port information for IGMP Snooping."                       I"An entry is created for each IGMP snooping router port on an interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       4"How long the group exists in the forwarding entry."                       T"The timeout period of the router port, that is, the aging time of the router port."                       �"The mode to create an interface on the host:
                1: static
                2: dynamic
                3: static and dynamic
                "                           M"Table contains l2 multicast configuration of router port for IGMP Snooping."                       P"An entry is created for each IGMP snooping static router port on an interface."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       "The row status."                           ="This table describes the group configurations of a channel."                       V"An entry of channel is created for each VLAN or VSI in the device create an channel."                      "The VLAN ID, which is the configuration index in a VLAN. 
        If a VSI is specified, the value is 4095. If both hwChnlCfgVlanIndex and hwChnlCfgVSIName are invalid, the configuration is global.
                The value ranges from 1 to 4095.
                "                       �"The name of a VSI. 
        If a VLAN is specified, the value is 32. If both hwChnlCfgVlanIndex and hwChnlCfgVSIName are invalid, the configuration is global."                       "The channel name."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       '"The mask length of a multicast group."                       -"The source IP address of a multicast group."                       0"The mask length of a multicast source address."                       %"The bandwidth of a multicast group."                       "The row status."                           W"In this table, you can query or configure a group policy to filter entries on a port."                       Z"An entry is created for each active VLAN or VSI in the device when a group policy added."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       �"The number of a basic ACL.
                The ACL number ranges from 2000 to 3999.
                The default value is 0, indicating that the value is invalid.
                "                       �"The IGMP version.
                The value ranges from 1 to 4.
                The default is 4, indicating that no version is specified.
                "                       "The row status."                           g"This table describes the configurations of deny unspecified group for each VLAN or VSI, or in global."                       ["An entry of channel deny is created for each VLAN or VSI in the device create an channel."                      "The VLAN ID, which is the configuration index in a VLAN. 
        If a VSI is specified, the value is 4095. If both hwChnlCfgVlanIndex and hwChnlCfgVSIName are invalid, the configuration is global.
                The value ranges from 1 to 4095.
                "                       �"The name of a VSI. 
        If a VLAN is specified, the value is 32. If both hwChnlCfgVlanIndex and hwChnlCfgVSIName are invalid, the configuration is global."                       t"Whether discard unspecified channel:
                1: not discard
                2: discard
                "                       "The row status."                           K"This table describes the specific port statistic of QinQ table of protol."                       B"An entry of the specific port statistic of QinQ table of protol."                      "The VLAN ID, which is the configuration index in a VLAN. 
        If a VSI is specified, the value is 4095. If both hwChnlCfgVlanIndex and hwChnlCfgVSIName are invalid, the configuration is global.
                The value ranges from 1 to 4095.
                "                       �"The name of a VSI. 
        If a VLAN is specified, the value is 32. If both hwChnlCfgVlanIndex and hwChnlCfgVSIName are invalid, the configuration is global."                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       -"The source IP address of a multicast group."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       4"The number of QinQ Port entry live time in second."                       �"The port flag:
            1 static
            2 dynamic
            3 static and dynamic
            4 invalid
            "                           2"This table describes the host explicit tracking."                       )"An entry of the host explicit tracking."                       3"The slot index, which is interface board number. "                      "The VLAN ID, which is the configuration index in a VLAN. 
        If a VSI is specified, the value is 4095. If both hwETrackInfoVlanIndex and hwETrackInfoVsiName are invalid, the configuration is global.
                The value ranges from 1 to 4095.
                "                       �"The name of a VSI. 
        If a VLAN is specified, the value is 32. If both hwETrackInfoVlanIndex and hwETrackInfoVsiName are invalid, the configuration is global."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       -"The source IP address of a multicast group."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       "The interface board number."                       ""The source IP address of a user."                       S"The port filter mode:
            1 include
            2 exclude
            "                           \"Table contains VLAN or VSI performance statistics information
         for IGMP Snooping."                       }"An entry is created for each active VLAN or VSI in the device 
         and deleted when the VLAN or VSI becomes inactive."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       �"The group address of a multicast group. 
        In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       -"The source IP address of a multicast group."                       &"the packet statistic of (S,G) group."                           N"Table contains l2 multicast forward information
         for IGMP Snooping."                       �"An entry is created for each active VLAN or VSI in the device create a forwarding table entry and delete when 
        a forwarding table entry deleted."                       3"The slot index, which is interface board number. "                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       -"The source IP address of a multicast group."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       "The interface board number."                       �"The address type of an entry:
                1: IP
                2: MAC
                The default value is 1.
                "                       �"The mode to create an interface on the host:
                1: static
                2: dynamic
                3: static and dynamic
                4: invalid
                "                       �"Whether an interface on the host is created through SSM-mapping:
                1: non-mapping
                2: mapping
                "                       �"The type of an interface created on a router:
                1: Interface connected to the host
                2: Router interface that replicates multicast data flows
                "                       �"Indicates (S, G) table created :
                1: from port;
                2: from static;
                3: from both
                the default falue is 1
                "                           L"Table contains l2 multicast group information
         for IGMP Snooping."                       �"An entry is created for each active VLAN or VSI in the device create a forwarding table entry and delete when 
        a forwarding table entry deleted."                       3"The slot index, which is interface board number. "                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       &"The IP address of a multicast group."                       -"The source IP address of a multicast group."                       |"The filtering mode:
                1: include
                2: exclude
                3: invalid 
                "                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       "The interface board number."                       ;"How long the source group exists in the forwarding entry."                       n"The timeout period of the source group in the forwarding entry, that is, the aging time of the source group."                       4"How long the group exists in the forwarding entry."                       ^"When the group expires in the forwarding entry, that is, the aging time of the source group."                       �"The mode to create an interface on the host:
                1: static
                2: dynamic
                3: static and dynamic
                4: invalid
                "                       �"Whether an interface on the host is created through SSM-mapping:
                1: non-mapping
                2: mapping
                "                       "The row status."                           c"In this table, you can query or configure whether to disable receive multicast traffic on a port."                       q"An entry is created for each active VLAN or VSI in the device when disable receive multicast traffic on a port."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       "The row status."                           ^"In this table, you can query or configure whether to disable router port learning on a port."                       l"An entry is created for each active VLAN or VSI in the device when disable router port learning on a port."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       "The row status."                           A"In this table, you can query or configure a port to track VRRP."                       d"An entry is created for each active VLAN or VSI in the device when configure a port to track VRRP."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       "The VRRP VRID."                       "The row status."                           3"This table create or modified multicast Instance."                       :"An entry of multicast-instance is created in the device."                       "L2 multicast instance ID"                       "Multicast-VLAN ID"                       "Multicast-VSI name"                       ""L2 multicast protect instance ID"                       "The row status."                       F"Thist table configure multicast instance mulitcast group infomation."                       H"An entry of multicast-instance channel-group is created in the device."                       "L2 multicast instance ID"                       "Group address."                       "Group address."                       "The row status."                       *"User instance in the multicast instance."                       5"An entry of user-instance is created in the device."                       "L2 multicast instance ID"                       "User VLAN ID."                       "User End VLAN ID."                       "VSI name."                       "The row status."                           S"Table contains l2 multicast static group information
         for IGMP Snooping."                       �"An entry is created for each active VLAN or VSI in the device create a static group entry and delete when 
        a static group entry deleted."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The begin of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The end of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The begin of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 0 indicates that the PE VID is invalid.
                "                       �"The end of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 0 indicates that the PE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       ~"The group address of a multicast group. In the case of MAC forwarding, the group address is the smallest of 32 IP addresses."                       -"The source IP address of a multicast group."                       "The row status."                           W"In this table, you can query or configure a group policy to filter entries on a port."                       Z"An entry is created for each active VLAN or VSI in the device when a group policy added."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The begin of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The end of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The begin of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The end of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                       �"The number of a basic ACL.
                The ACL number ranges from 2000 to 3999.
                The default value is 0, indicating that the value is invalid.
                "                       �"The IGMP version.
                The value ranges from 0 to 3.
                The default is 0, indicating that no version is specified.
                "                       "The row status."                           O"This table describes the configurations of IGMP snooping CAC on an interface."                       A"An entry is created for each IGMP snooping CAC on an interface."                       �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095.
                "                       ="The name of a VSI. If a VLAN is specified, the value is 32."                      X"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                11: Main-interface-bound-to-vsi
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The begin of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The end of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The begin of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The end of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       "The channel name."                       �"The number of ACL for the multicast groups that do not need to be configured with CAC limit.
                The ACL number ranges from 2000 to 3999.
                The default value is 0, indicating that the number is invalid.
                "                       ]"The maximum number of forwarding entries. The value 0 indicates that the number is invalid."                       +"The number of current forwarding entries."                       M"The maximum bandwidth. The value 0 indicates that the bandwidth is invalid."                       "The current bandwidth."                       "The row status."                           ["This table describes the configurations of IGMP snooping group limit on a QinQ interface."                       M"An entry is created for each IGMP snooping group limit on a QinQ interface."                       q"The interface type:
                1: Invalid
                5: Termination sub-interface
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The begin of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The end of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The begin of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       �"The end of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       -"The group limit number of a QinQ interface."                       "The row status."                       \"This table describes the configurations of IGMP snooping source limit on a QinQ interface."                       N"An entry is created for each IGMP snooping source limit on a QinQ interface."                       q"The interface type:
                1: Invalid
                5: Termination sub-interface
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The begin of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The end of a PE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The begin of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       �"The end of a CE VID batch.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       ("The source number of a QinQ interface."                       "The row status."                           �"The VLAN ID, which is the configuration index in a VLAN. If a VSI is specified, the value is 4095.
                The value ranges from 1 to 4095."                       ="The name of a VSI. If a VLAN is specified, the value is 32."                      '"The interface type:
                1: Invalid
                2: PW interface
                3: L2 interface
                4: Encapsulation sub-interface
                5: Termination sub-interface
                6: Interface Board
                7: Vlanif Port
                "                       Q"The interface index. The value 0 indicates that the interface index is invalid."                       �"The PE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the PE VID is invalid.
                "                       �"The CE VID of an interface.
                The value ranges from 1 to 4095.
                The value 4095 indicates that the CE VID is invalid.
                "                       d"The peer IP address of a PW interface. The value 0.0.0.0 indicates that the IP address is invalid."                       )"The VC ID or SITE ID of a PW interface."                       "The name of the interface."                       �"The address type of the multicast group and source address. If this object is set to
            unknown(0) indicates that the multicast group and source address is invalid."                       "Limit value."                       �"Excess group address. The InetAddressType is given by the 
                  hwL2mcNotificationsAddressType object.
                  The value 0.0.0.0 indicates that the multicast entry is invalid."                       �"Excess source address.The InetAddressType is given by the 
                  hwL2mcNotificationsAddressType object.
                  The value 0.0.0.0 indicates that the multicast entry is (*, G)."                       W"User MAC address. The value 0000-0000-0000 indicates that the MAC address is invalid."                       "The name of the slot."                       ""The value of the current number."                       "The value of the threshold."                       �"The reason for trap sending:
             1:new leave is received;
             2:configuration is changed;
             100:Alarm Clear"                       �"The limit type:
             1:BD bridge domain;
             2:VLAN Virtual Local Area Network;
             3:VSI Virtual Switch Instance"                          #"A hwL2mcPortOtherQuerierTimeout notification signifies the timer of other querier of port is timeout. 
             This notification should be generated when the other querier timer expires, and the router
            has no other querier on the same interface with the same IP version."                 �"The hwL2mcReportListeningGrpExceed notification indicates that the number of multicast groups has exceeded the limit of a board. 
		This notification is generated when the number of multicast groups exceeds the limit."                 �"The hwL2mcReportListeningThresholdExceed notification indicates that the number of multicast groups has exceeded the threshold of a board.
		This notification is generated when the number of multicast groups exceeds the threshold."                 �"The hwL2mcReportListeningThresholdResume notification indicates that the number of multicast groups has fell blew the threshold of a board.
		This notification is generated when the number of multicast groups falls below the threshold."                 �"A hwL2mcGlobalEntryThresholdExceed notification signifies that the number of global multicast groups reached the upper limit threshold."                 �"A hwL2mcGlobalEntryThresholdResume notification signifies that the number of global multicast groups fell below the lower limit threshold."                 �"A hwL2mcUserPerEntryThresholdExceed notification signifies that the number of multicast users in one group reached the limit threshold."                 �"A hwL2mcUserPerEntryThresholdResume notification signifies that the number of multicast users in one group fell below the lower limit threshold."                 �"A hwL2mcGlobalEntryExceed notification signifies the number of multicast groups has exceeded the global limit. 
		This notification should be generated when the number of multicast groups has exceeded the limit."                 �"A hwL2mcUserPerEntryExceed notification signifies the number of multicast users in one group has exceeded the limit on the slot. 
		This notification should be generated when the number of multicast users in one group has exceeded the limit."                         M"The compliance statement for device supporting
             IGMP Snooping."                   "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                 "."                                