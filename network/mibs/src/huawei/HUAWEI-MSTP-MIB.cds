d-- ==================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI MSTP MIB
-- Reference:
-- Version:     V2.19
-- History:     2008-06-14  MSTP Process
-- History:     2008-10-08  MSTP Process- v3     
-- History:     2009-3-01  MSTP Process- v4
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types be imported
--
-- ==================================================================
   '"A simple status value for the object."                                                     �"This module include the information about MSTP protocol in the bridge.
                                The information can be read and some of them can be set."d"Huawei Industrial Base
                                  Bantian, Longgang
                                   Shenzhen 518129
                                   People's Republic of China
                                   Website: http://www.huawei.com
                                   Email: support@huawei.com
                                 " "202208041000Z" "202206271000Z" "202007301000Z" "202007251000Z" "201904091000Z" "201808061000Z" "201804081000Z" "201710241000Z" "201708171000Z" "201706300000Z" "201703041000Z" "201511261000Z" "201505291000Z" "201408140000Z" "201405280000Z" "201402130000Z" "201401270000Z" "201309070000Z" "201303191000Z" s"Add for : hwMstpProLoopDetectedRising
                                               hwMstpProLoopDetectedResume" "modified description" "modified description" "modified description" �"Add for : hwMstpProTcFlap
                                                                  hwMstpProTcFlapResume
                                                                  hwMstpProRcvTcFlap" {"Add for : hwMstpProRootShake 
                                                                  hwMstpProRootShakeResume" �"modified for:hwMstpProTcNotifyProcess
                                                                       hwMstpProLinkShareGuard." u"Add for : hwMstpProRootLost 
                                                                  hwMstpProRootResume" "modified description" �"Modify description : 
                                     hwMstpiRowStatus, hwMstpPortVlanListLow,
                                     hwMstpPortVlanListHigh, hwMstpProNewPortType."  "modified for:hwMstpiPortIndex."�"modified for:hwMstpDiameter 
                                                                            hwMstpProDiameter 
                                                                            hwMstpiStpTransLimit
                                                                            hwMstpTransmitLimitDefault
                                                                            hwMstpProNewPortStpTransLimit." $"Add for: hwMstpProFlushCapability."�"Add table node for port count trap. 
	                                Add for : hwMstpPortCountUpperThreshold
                                                                   hwMstpPortCountLowerThreshold
                                                                   hwMstpPortCountExceedThreshold
                                                                   hwMstpPortCountExceedThresholdResume" �"Add table node for tc-snooping notify trill. 
                                                    Add for : hwMstpPortTcSnoopingTable" �"Add leaf node for pw name. 
	                                Add for : hwMstpiEdgePortChanged
			       hwMstpProNewEdgePortChanged"�"Add leaf node for pw name. 
	                                Add for : hwMstpiPortStateForwarding
			        hwMstpiPortStateDiscarding
			        hwMstpiPortRootGuarded
			        hwMstpiPortLoopGuarded
			        hwMstpProNewPortStateForwarding
			        hwMstpProNewPortStateDiscarding
			        hwMstpProNewPortRootGuarded
			        hwMstpProNewPortLoopGuarded
			        hwMstpProLoopbackDetected" #"Fix the errors checked by a tool." '"Modify bpdu encapsulation enum value."                  "Whether the Bridge MSTP is enabled.
                                Enable indicate that MSTP enable in the bridge;
                                Disabled indicate that MSTP disable in the bridge.
                                By default, the Bridge MSTP is disabled."                       �" The value of this object identifies the protocol mode of the STP. 
                                 0: STP
                                 2: RSTP
                                 3: MSTP
                                 Default value: MSTP (3)."                      a"The value of this object identifies the network diameter of the STP.
								It affects the time that include hello time, forward delay time and maxage. 
								Every bridge can set the diameter of Bridge, and it is effective when the bridge is the root bridge. 
								Effective in the CIST. The value ranges from 2 to 7. The default value is 7."                      n"The value of this object identifies the maximum hops of a spanning tree in an MST region. 
								The maximum hops of a spanning tree in an MST region can limit the network scale of the spanning tree. 
								The object takes effect when the bridge is the root bridge. 
								If the TTL of the BPDU received by the device is 0, the device discards the BPDU."                       �"The Bridge Identifier of the current Master Bridge.
                                It is the root Bridge Identifier of the instance 0 in the region."                       �"The CIST path cost from the transmitting Bridge to the Master Bridge.
                                By default, the value is 0."                       �"The value of this object identifies whether the BPDU protection is enabled on the bridge.
                                 1: enable
                                 2: disable
                                 Default value: disabled."                      "The administrative Configuration Identifier Format Selector in use 
                                by the Bridge. This has a value of 0 indicate the format specified 
                                in the Standard of IEEE 802.1s. By default, the value is 0"                      "This object indicates the MST administrative region name. 
								It changes to hwMstpOperRegionName when user uses the activing command to active the configuration of the region. 
								By default, the MST region name is the first hexadecimal MAC address of a switching device."                      �"The value of this object identifies the administrative revision level of the MST region. 
								It changes to hwMstpOperRevisionLevel when users use the activing command to active the configuration of the region. 
								The revision level and region name of MSTP, and the VLAN mapping table determine the MST region that the switch belongs to.
								The value ranges from 0 to 65535. The default value is 0."                      "The operative Configuration Identifier Format Selector in use by the 
                                Bridge. This has a value of 0 indicate the format specified in the 
                                Standard of IEEE 802.1s. By default, the value is 0."                      0"This MSTP operative region name.
                                It can be used to determine whether
                                the region is the same region with
                                the mapping between VLAN and instance
                                and hwMstpOperRevisionLevel."                      "The value of this object identifies the effective revision level of the MST region. 
								Two routers belong to the same MST region only if they have the same MST region name,
								Mapping between VLANs and MSTIs, and the MST region revision level."                      H"Active the region configuration.
                                Generally, the value of the hwMstpRegionConfActive is disable,
                                but the value will be set as enable if Net Manager want to 
                                active the configure of the region in the bridge. And then 
                                all manager configuration will change to operable configuration.
                                The value of hwMstpRegionConfActive is only disable when it is read.
                                It is only enable when it is set. "                      �"This object identifies the default mapping relationship between the VLANs and the MSTIs in the MST region.
                                 1: enable When you set this object, the value can be enable only.
                                 65535: unused When you access the value of this object, it is unused.
                                 In addition to the VLANs added to the MSTIs, the rest are added to the default MSTI 0."                      b"The object indicates the MSTP path cost.
                                 1: indicates dot1d-1998, which is the IEEE 802.1d standard proposed in 1998.2.
                                 2: indicates dot1t, which is the IEEE 802.1t standard.
                                 3: indicates legacy, which is the calculation standard developed by Huawei."                      B"The value of this object identifies the path cost standard.
                                 1: 1: dot1d-1988 is the IEEE 802.1d standard method in 1998.
                                 2: dot1t is the standard method of the IEEE 802.1t.
                                 3: legacy is the private algorithm of Huawei."                       W"The table includes the information of the VLAN with relation to the instance of MSTP."                       �"The table includes the information of the VLAN with relation to the instance of MSTP.
                                The index of the table is vlanid. Default, the VLAN is in the CIST."                       "VLAN Identifier."                       q"The value of this object identifies which MSTI the VLAN belongs to. By default, all the VLANs belong to CIST 0."                       R"The value of this object identifies the MSTI that the effective VLAN belongs to."                       z"This table describes the attribute value, description, and operation restriction of configurable attributes of the MSTI."                       �"The table includes the information of  the instance.
                                The index of the table is Multiple spanning-tree instance Identifier."                       �"Multiple spanning-tree instance Identifier.
                                 The scope of instance identifier is different, 
                                 some versions are 0 to 48."                       m"The Bridge Identifier for the spanning tree instance 
                                identified by MSTID."                       �"This object indicates the bridge priority of the MSTI. 
							   The step is 4096. For example, the values can be set to be 0, 4096, 8192... The default value is 32768."                       �"The Bridge Identifier of the Root Bridge for the spanning 
                                tree instance identified by MSTID."                       �"The path cost from the transmitting Bridge to the Root Bridge 
                                for the spanning tree instance identified by MSTID."                       G"The root port for the spanning tree instance identified by the MSTID."                      "The value of this object identifies the type of the root bridge of the MSTI:
                                0: normal
                                1: secondary
                                2: primary
                               Default value: normal (0)."                       G"The remaining hops of the spanning tree instance identified by MSTID."                       �" The lower part of administrative VLAN list mapped to the spanning 
                                tree instance identified by MSTID."                       �" The higher part of administrative VLAN list mapped to the spanning 
                                tree instance identified by MSTID."                       �" The lower part of operative VLAN list mapped to the spanning 
                                tree instance identified by MSTID."                       �" The higher part of operative VLAN list mapped to the spanning 
                                tree instance identified by MSTID."                      L"This object indicates the row status of the MSTI table.
                               The value can be: 
                               1: active
                               3: not ready
                               4: createAndGo
                               5: createAndGo
                               6: destroy"                       w"This table describes the attribute value, description, and operation restriction conditions of the port in each MSTI."                      %"The table includes the information of the port 
                                of the multiple spanning tree instance. The index
                                of the table is the aggregation of multiple spanning
                                tree instance identifier and port index. "                       "The index of the bridge port."                       Z"The current state of the port. It must be disabled, discarding, learning or forwarding. "                      �"The value of the priority field which is contained in the 
                                first (in network byte order) four bits of the (2 octet long) Port ID.  
                                The other octet of the Port ID is given by the value of mstiPortIndex. 
                                And step of 16. It is the priority of the port in the multiple spanning tree instance,
                                and it can be used to determine the role of the port in the multiple spanning tree."                       @"The value of this object identifies the path cost of the port."                       �"The Bridge Identifier of the Root Bridge for the port of the Spanning
                                Tree instance identified by the MSTID"                       K"The value of this object identifies the path cost of the designated port."                       �"The Bridge Identifier of the bridge which this port considers to 
                                be the Designated Bridge for this port's segment."                       u"The port Identifier of the port on the Designated Bridge 
                                for this port's segment."                       "This object indicates whether the port is an edge port. 
							   By default, a port is a non-edge port. The value can be changed through configuration. 
							   disable: indicates an edge port in the disabled state. 
							   enable: indicates an edge port in the enabled state."                      "The value of this object identifies whether the port is a Point-to-Point port.
                                 1: forceTrue
                                 2: forceFalse
                                 3: auto
                                 The default value is auto."                      "The value of this object identifies the operation of MCHECK on the port.
                                1: enable When you set this object, the value can be enable only.
                                2: unused When you access the value of this object, it is unused."                       V"The value of this object identifies the transmission times of the BPDUs on the port."                       8"The number of received Config BPDU. Effective in CIST."                       ;"The number of transmitted Config BPDU. Effective in CIST."                       5"The number of received TCN BPDU. Effective in CIST."                       8"The number of transmitted TCN BPDU. Effective in CIST."                       5"The number of received RST BPDU. Effective in CIST."                       8"The number of transmitted RST BPDU. Effective in CIST."                       5"The number of received MST BPDU. Effective in CIST."                       8"The number of transmitted MST BPDU. Effective in CIST."                      F"The value of this object identifies the status of clearing statistics on the port.
                               1: clear When you perform SET operation to this object, the value can be clear only.
                               2: unused When you perform GET operation to this object, the value of this object is unused."                      �"The value of this object identifies the default cost of the port.
                                1: reset When you perform SET operation to this object, the value can be reset only.
                                2: unused When you perform GET operation to this object, the value of this object is unused.
                                By default, the path cost value of the port on each MSTI is the path cost corresponding to the port rate."                       �"The value of this object identifies the spanning tree status on the port.
                                1: enable
                                2: disable
                                The default value is enable."                       �"The value of this object identifies whether the root protection is enabled on the port.
                                1: enable
                                2: disable
                                By default, the root protection is disabled."                      "The value of this object identifies whether the loopback protection is enabled on the port.
                                1: enable
                                2: disable
                               By default, the loopback protection is disabled."                      "The value of this object identifies the protocol format of the MSTP packet sent and received on the port. 
                                The protocol format can be one of the following:
                                1: auto (the self-adaptive protocol format) 
                                2: dotls (the standard IEEE 802.1s format)
                                3: legacy (the proprietary protocol format)
                                By default, the protocol format of the MSTP packet is self-adaptive, that is, auto(1)."                      )"This object indicates whether the digest snooping function is enabled on the port:
                                1: enabled
                                2: disabled
                                By default, the function is not enabled. In other words, the default value is disabled(2)."                      �"Whether enhance agreement is enabled. 
                                When Huawei datacomm devices are internetworking 
                                with non-Huawei devices, you need to enable this on Huawei devices 
                                to configure the mode of the fast transition mechanism the same as 
                                that on non-Huawei devices."                       �"The main interface notifies its sub-interfaces to update 
                                MAC entries and ARP entries after receiving a TC message. 
                                This prevents services from being interrupted."                      U"This object indicates whether the port is enabled to send or receive BPDUs.
                             disable(1): indicates that the function of sending or receiving BPDUs is in the disabled state on the port.
                             enable(2): indicates that the function of sending or receiving BPDUs is in the enabled state on the port.
                             undo(3): indicates that the port is not configured with the function of sending or receiving BPDUs.
                             By default, a port is not configured with the function of sending or receiving BPDUs."                       3"Indicates the port role on a particular instance."                       �"when the device's interface receive TCN, the servers is normal in device where MSTP is disable.
                                By default, the value is disabled."                       *"The table of MSTP Accessory Information."                       0"The table entry of MSTP Accessory Information."                       ."The index of the Accessory Commands of MSTP."                      O"When the port of device, which played the backup or alternate role, receives the BPDU message with 
                                high priority, and the proposal flag of this message was set.
                                The BPDU message can be send from this port immediately, the agreement flag was set of this BPDU message."                       O"when the port is root, calculating allsyned without check syned flag of root."                       p"This table describes the attribute value, attribute description, and access restrictions of each MSTP process."                       ."Entry of the MSTP process information table."                       "MSTP process identifier."                      T"This object indicates whether the spanning tree function is enabled for this MSTP process.
                                 The value can be:
                                 1: enabled
                                 2: disabled
                                 By default, the spanning tree function of an MSTP process is disabled."                      f"The priority for the MSTP process spanning tree, step of 4096.
                                For example, we can set the Priority of the bridge such as 0, 4096, 8192 etc.
                                It can be used to determined whether the process is the root of
                                the whole spanning tree. The default value is 32768."                      k"The value of this object identifies the type of the root bridge taken by the MSTP process.
                              The value can be:
                              0: normal
                              1: secondary
                              2: primary
                             By default, an MSTP process does not function as a root bridge. "                      O"The value of this object identifies the STP type of the MSTP process.
                                 The value can be:
                                 0: stp
                                 1: rstp
                                 2: mstp
                                 By default, the protocol of an MSTP process is RSTP."                      <"The value of this object identifies whether the BPDU guard function is enabled for the MSTP process.
                                  The value can be: 1: enabled
                                  2: disabled
                                  By default, the BPDU guard function of an MSTP process is disabled."                       �"The value of this object identifies the network diameter of the MSTP process. 
								The network diameter determines timer parameters such as parameters of the Forwarding timer.
								By default, the network diameter of an MSTP process is 7."                      5"The value of this object identifies the convergence mode of the MSTP process.
                                 The value can be:
                                1: fast
                                2: normal
                                By default, the convergence mode of an MSTP process is fast."                       5"Maxhops of a MSTP process, the default value is 20."                      7"The value of this object identifies whether the MCheck mark is used.
                                  The value can be:
                                  1: enabled
                                  65535: unused
                                  By default, the MCheck mark of an MSTP process is unused."                      "The value of this object identifies the path calculation standard of the MSTP process.
                               The value can be:
                              1: indicates dot1d-1998, which is the IEEE 802.1d standard proposed in 1998
                              2: indicates dot1t, which is the IEEE 802.1t standard
                              3: indicates legacy, which is the calculation standard developed by Huawei
                              By default, the path calculation standard of an MSTP process is dot1t."                       �"The value of this object identifies the Hello time of the MSTP process. 
								The step is 100 centiseconds. By default, the Hello time of an MSTP process is 200 centiseconds."                       �"The value of this object identifies the Hello time of the MSTP process.
								The step is 100 centiseconds. 
								By default, the Hello time of an MSTP process is 1500 centiseconds."                       �"The value of this object identifies the maxage of the MSTP process.
								The step is 100. By default, the maxage of an MSTP process is 2000."                       I"Timer factor, which is used in loop protection, the default value is 3."                      "The current MSTP process notifies the specified STP instance 
                                in MSTP process 0 to update MAC entries and ARP entries after 
                                receiving a TC message. This prevents services from being interrupted."                       �"The port list participates in the status calculation of 
                                a specified MSTP process witch no-link-share method."                       �"The port list participates in the status calculation of 
                                a specified MSTP process witch link-share method."                      O"This object indicates whether the TC guard function is enabled for the MSTP process. 
                                 After the TC guard function is enabled for the MSTP process and the number of TC BPDUs received by an MSTI in a unit time exceeds the threshold,
                                 the subsequent TC BPDUs are not processed until the TC guard time expires.
                                 The value can be:
                                  1: enabled
                                  2: disabled
                               By default, this function is disabled."                       �"The value of this object identifies the maximum number of TC messages that can be processed within the TC guard time. The default value is 3."                       �"Whether the current MSTP process notifies MSTP process 0 to update 
                                MAC entries and ARP entries after receiving a TC message. The value of this object can be set for the processes except process 0."                      J"Active the region configuration.
                                Generally, the value of the hwMstpProRegionConfActive is disable,
                                but the value will be set as enable if Net Manager want to 
                                active the configure of the region in the bridge. And then 
                                all manager configuration will change to operable configuration.
                                The value of hwMstpRegionConfActive is only disable when it is read.
                                It is only enable when it is set."                      "Whether the Link-share Guard function is enabled on the MSTP process. 
                                                If the function is enabled, the root Guard function will also 
                                                work on port in all instance besides instance 0, when the link 
                                                between the ports either of which is in Link_share mode broken down.
                                                The value of this object can be set for the processes except process 0."                       �"This MSTP region-configuration digest.
                                It can be used to determine whether
                                the region is the same region with
                                another one."                      "Suggesting that whether all the process will share the same Region-config with process 0.
                                If the function is enable, all the existing process will share the same Region-config with process 0.
                                "                      �"The value of this object identifies the row status of hwMstpProTable.
                                 The value can be:
                                  1: active
                                  2: notInService
                                  3: notReady
                                  4: createAndGo
                                  5: createAndWait
                                  6: destroy"                       �"The value of this object indicates time the MSTP takes to handle a given number of TC packets and immediately refresh forwarding entries."                       ?"Whether FLUSH capability is enabled or not on a MSTP process."                       "The port bind table."                       "The port bind entry."                       L"The value of this object identifies the port ID field 1 allocated by MSTP."                       L"The value of this object identifies the port ID field 2 allocated by MSTP."                       L"The value of this object identifies the port ID field 3 allocated by MSTP."                       L"The value of this object identifies the port ID field 4 allocated by MSTP."                       H"The value of this object identifies the port ID tag allocated by MSTP."                       w"This object indicates 2048 least significant bits (0-2047) of the VLAN to which the port joining the process belongs."                       y"This object indicates 2048 most significant bits (2048-4095) of the VLAN to which the port joining the process belongs."                      ["The value of this object identifies the mode in which the port joins the MSTP process:
                                   The value can be:
                                   1: normal
                                   2: nolinkshare
                                   3: linkshare
                                   4: nolinksharewithvlan"                      �"The value of this object identifies the BPDU-VLAN-based communication with non-Huawei devices.
								On non-Huawei devices, protocol packets are in the format of VBSTand a VLAN is a spanning tree.
								Therefore, to communicate with non-Huawei devices, the format of BPDU packets on Huawei devices need to be set to VBST, 
								and Huawei devices need to belong to the same VLAN with non-Huawei devices."                       $"MSTP port binding table rowstatus."                       h"The table includes the information of the port 
                                of the MSTP process. "                       8"The entry of the MSTP process port information table. "                       �"The current state of the port in MSTP process. 
                                It must be disabled, discarding, learning or forwarding. "                      �"The value of the priority field which is contained in the 
                                first (in network byte order) four bits of the (2 octet long) Port ID.  
                                The other octet of the Port ID is given by the value of hwMstpiPortIndex. 
                                And step of 16. It is the priority of the port in the MSTP process,
                                and it can be used to determine the role of the port in the MSTP process Spanning Tree. "                      -"The path cost of paths with which the package passes the port.
                                The range of path cost is 1..65535 for 802.1d standard,
                                is 1..200000000 for 802.1t standard, and is 1..200000  
                                for the legacy standard. "                       |"The Bridge Identifier of the Root Bridge for the port of the 
                                MSTP process Spanning Tree."                       �"The path cost of the designated port of the segment connected to 
                                this port. This value is compared to the Root Path Cost field 
                                in received bridge BPDUs."                       �"The Bridge Identifier of the bridge which this port considers to 
                                be the Designated Bridge for this port's segment."                       u"The Port Identifier of the port on the Designated Bridge 
                                for this port's segment."                       �" Whether the port fast is enabled in the MSTP process. When the 
                                port is the edge port, it can change to forwarding state immediately. "                      �" Whether the port connects the point to point link.
                                If user set the port as a point to point port,
                                the port is a point to point port in the MSTP process.
                                If user set the port as a point to point port but the port isn't,
                                the mstp may import temporary loop. So user can use the default. "                      n" When root interface is changed from STP mode to RSTP or MSTP mode, the 
                                appointed interface can not switch to RSTP or MSTP mode automatically. 
                                At the time, you need switch back with hand by set Mcheck value to enable(1). 
                                The value unused(65535) when it is read. "                       ~"The value used by the port transmit state machine to limit 
                                the maximum transmission rate. "                       '"The number of received Config BPDUs. "                       *"The number of transmitted Config BPDUs. "                       $"The number of received TCN BPDUs. "                       '"The number of transmitted TCN BPDUs. "                       $"The number of received RST BPDUs. "                       '"The number of transmitted RST BPDUs. "                       $"The number of received MST BPDUs. "                       '"The number of transmitted MST BPDUs. "                       �"Clear the Spanning Tree statistics in specified MSTP process.
                                The value is unused(65535) when it is read.
                                The value must be clear(1) when it is set."                       "Set default port path cost. "                       >"Whether the Spanning Tree Protocol is enabled on this port. "                       �"Whether the root guard is enabled. The function is to prevent 
                                the port from receiving the BPDUs, the priority of which is 
                                above the priority of the port."                       *"Whether the loop protection is enabled. "                      "The value of this object identifies the protocol format of the MSTP packet sent and received on the port. 
                                The protocol format can be one of the following:
                                1: auto (the self-adaptive protocol format) 
                                2: dotls (the standard IEEE 802.1s format)
                                3: legacy (the proprietary protocol format)
                                By default, the protocol format of the MSTP packet is self-adaptive, that is, auto(1)."                      )"This object indicates whether the digest snooping function is enabled on the port:
                                1: enabled
                                2: disabled
                                By default, the function is not enabled. In other words, the default value is disabled(2)."                      �"Whether enhance agreement is enabled. 
                                When Huawei datacomm devices are internetworking 
                                with non-Huawei devices, you need to enable this on Huawei devices 
                                to configure the mode of the fast transition mechanism the same as 
                                that on non-Huawei devices."                       �"The main interface notifies its sub-interfaces to update 
                                MAC entries and ARP entries after receiving a TC message. 
                                This prevents services from being interrupted."                       �" An interface to participate in the status calculation of 
                                link-share or no-link-share Spanning Tree processes."                      L"Whether the Bridge TC Guard function is enabled. 
                                If the function is enabled, the TC message in each instance exceeded 
                                threshold will be deferred to deal with at the end of TC protection time.
                                By default, the function is disabled."                       �"The value of this object identifies the maximum number of TC BPDUs that can be processed by an MSTI within the TC guard time. The default value is 3."                       {"This table describes the attribute value, attribute description, and access restrictions of each MSTI in an MSTP process."                       ;"The entry of the MSTP process instance information table."                       m"The Bridge Identifier for the spanning tree instance 
                                identified by MSTID."                       �"The value of this object identifies the bridge priority of the MSTI. 
								The step is 4096. For example, the values can be set to be 0, 4096, 8192... The default value is 32768."                       �"The Bridge Identifier of the Root Bridge for the spanning 
                                tree instance identified by MSTID."                       �"The path cost from the transmitting Bridge to the Root Bridge 
                                for the spanning tree instance identified by MSTID."                       G"The root port for the spanning tree instance identified by the MSTID."                      B"The value of this object identifies the type of the root bridge of the MSTI:
                                The value can be:
                                0: normal
                                1: secondary
                                2: primary
                                Default value: normal (0)."                       G"The remaining hops of the spanning tree instance identified by MSTID."                       �" The lower part of administrative VLAN list mapped to the spanning 
                                tree instance identified by MSTID."                       �" The higher part of administrative VLAN list mapped to the spanning 
                                tree instance identified by MSTID."                       �" The lower part of operative VLAN list mapped to the spanning 
                                tree instance identified by MSTID."                       �" The higher part of operative VLAN list mapped to the spanning 
                                tree instance identified by MSTID."                       V"This object indicates the row status of creating or deleting hwMstpProInstanceTable."                       �"This table describes the attribute value, attribute description, and access restrictions of ports in each MSTI in an MSTP process."                       8"The entry of the MSTP process port information table. "                       h"The value of this object identifies the spanning tree status on the port where the MSTI is configured."                       \"The value of this object identifies the priority of the port where the MSTI is configured."                       ^"The value of this object identifies the path cost of the port where the MSTI is configured. "                       |"The Bridge Identifier of the Root Bridge for the port of the 
                                MSTP process Spanning Tree."                       b"The value of this object identifies the specified cost of the port where the MSTI is configured."                       �"The Bridge Identifier of the bridge which this port considers to 
                                be the Designated Bridge for this port's segment."                       u"The port identifier of the port on the Designated Bridge 
                                for this port's segment."                       �" Whether the port fast is enabled in the MSTP process. By default, there is no configuration on the port. When the 
                                port is the edge port, it can change to forwarding state immediately. "                      `"The value of this object identifies whether the port where the MSTI is configured is a P2P port.
                                  The value can be:
                                  1: forceTrue
                                  2: forceFalse
                                  3: auto
                                 The default value is auto."                      n" When root interface is changed from STP mode to RSTP or MSTP mode, the 
                                appointed interface can not switch to RSTP or MSTP mode automatically. 
                                At the time, you need switch back with hand by set Mcheck value to enable(1). 
                                The value unused(65535) when it is read. "                       �"The value is used to set BPDU maximum transmission rate of the port. 
                                 If value is set 0, the transmit limit of the port is equal to the wMstpTransmitLimitDefault value "                       '"The number of received Config BPDUs. "                       *"The number of transmitted Config BPDUs. "                       $"The number of received TCN BPDUs. "                       '"The number of transmitted TCN BPDUs. "                       $"The number of received RST BPDUs. "                       '"The number of transmitted RST BPDUs. "                       $"The number of received MST BPDUs. "                       '"The number of transmitted MST BPDUs. "                       �"Clear the Spanning Tree statistics in specified MSTP process.
                                The value is unused(65535) when it is read.
                                The value must be clear(1) when it is set."                      "The value of this object identifies the default path cost of the port where the MSTI is configured:
                            The value can be:
                              1: reset When you perform SET operation to this object, the value can be reset only.
                              65535: unused When you perform GET operation to this object, the value of this object is unused.
                              By default, the path cost value of the port on each MSTI is calculated on the basis of the port speed."                       >"Whether the Spanning Tree Protocol is enabled on this port. "                      S"The value of this object identifies whether the root guard function is enabled on the port where the MSTI is configured.
                                The value can be: 1: enabled
                                2: disabled
                               By default, the root protection is disabled. The default value is disable(2)."                      \"The value of this object identifies whether the loop guard function is enabled on the port where the MSTI is configured.
                                  The value can be: 1: enabled
                                 2: disabled
                                 By default, the loop guard function is disabled. The default value is disable(2)."                      "The value of this object identifies the protocol format of the MSTP packet sent and received on the port. 
                                The protocol format can be one of the following:
                                1: auto (the self-adaptive protocol format) 
                                2: dotls (the standard IEEE 802.1s format)
                                3: legacy (the proprietary protocol format)
                                By default, the protocol format of the MSTP packet is self-adaptive, that is, auto(1)."                      )"This object indicates whether the digest snooping function is enabled on the port:
                                1: enabled
                                2: disabled
                                By default, the function is not enabled. In other words, the default value is disabled(2)."                      "The value of this object identifies whether the fast convergence detection is enabled on the interface belonging to the MSTP process. 
							  In the scenarios where Huawei devices are interconnected with non-Huawei devices, if the fast convergence detection is enabled,
							  the Agree mark is checked during the fast convergence.
                              The value can be:
                              1: enabled
                              2: disabled
                             By default, this function is enabled."                       �"The main interface notifies its sub-interfaces to update 
                                MAC entries and ARP entries after receiving a TC message. 
                                This prevents services from being interrupted."                      y"The value of this object identifies the protocol format of the BPDU sent on the port. 
                                The protocol format can be one of the following:
                                1: vbst (the VBST format)
                                2: stp (the STP format)
                                By default, the BPDU format of the MSTP packet is stp(2)."                      a"This object indicates whether the port is enabled to send or receive BPDUs.
                                disable(1): indicates that the function of sending or receiving BPDUs is in the disabled state on the port.
                                enable(2): indicates that the function of sending or receiving BPDUs is in the enabled state on the port.
                                undo(3): indicates that the port is not configured with the function of sending or receiving BPDUs.
                                By default, a port is not configured with the function of sending or receiving BPDUs."                       /"The number of TC BPDUs received by the port. "                       +"The number of TC BPDUs sent by the port. "                       3"Indicates the port role on a particular instance."                       C"This object is used to configure a port as the default edge port."                       B"This object is used to configure a port as the bpdu-filter port."                       T"The value is used to set BPDU maximum transmission rate of all port in the device."                       	"Pw name"                       n"This table describes whether ports are enabled to transparently transmit STP packets over the TRILL network."                       <"The entry of the MSTP TC snooping port information table. "                       "The ifIndex of the port."                       u"This object indicates whether an interface is enabled to transparently transmit STP packets over the TRILL network."                       f"The value of this object identifies the upper threshold for the number of Up STP-capable interfaces."                       f"The value of this object identifies the lower threshold for the number of Up STP-capable interfaces."                       "source macaddress"                       *"Definition point for Mstp notifications."              "When an interface enters the forwarding state, an alarm is triggered. 
							   Reason: Changes occur on the link state and a new link joins the topology.
							   Advice: Pay attention to the reason of change on the network topology and check if a fault occurs on the backup link."                "When a port enters the congestion state, it generates alarms. 
							   Reason: Changes occur on the link state and the link quits the topology. 
							   Advice: Pay attention to the reason of change on the network topology and check if a fault occurs on the link."                �"When a switch loses the role of the root bridge, an alarm message is generated. 
								Reason: The status of root bridge cannot be kept because a switch with a higher priority on the network becomes the root bridge. 
								Advice: Reduce the priority of the newly joined switch on the specified MSTI.
								If you want the new switch to serve as the root bridge, remove the root setting of the specified MSTI on the original root bridge."                �"When the port of root bridge protection receives packets with higher priority, it triggers alarm.
								Reason: A switch with higher priority and out of the root bridge protection circle attempts to preempt the status of the root bridge.
								Advice: Reduce in the specified MSTI the priority of switches that are directly or indirectly connected to the port.
								Re-configure the root bridge protection of the port."                d"When the BPDU guard port receives the BPDU packets, it generates alarms.
							   Reason: An edge port enabled with the BPDU guard function receives BPDUs. 
							   Advice: The port receives BPDU packets that are likely to be hostile attack ones.
							   The port is shut down at this time and needs to be manually restored by NMS administrators."                 t"The SNMP trap that is generated when an Alternate-Port 
                                or Root-Port is aged out."                 �"When the edged-port receives a BPDU packet, the edged-port attribute will be disabled.
                                Then the SNMP trap is generated. "                 �"The SNMP trap that is generated when a port turns into 
                                forwarding state from other state in the MSTP process."                 �"The SNMP trap that is generated when a port turns into 
                                discarding state from forwarding state in the MSTP process."                 �"The SNMP trap that is generated when the bridge is no longer 
                                the root bridge of the MSTP process Spanning Tree. Another 
                                switch with higher priority has already been the root bridge."                 �"The SNMP trap that is generated when a root-guard port 
                                receives a superior message in the MSTP process."                 �"The SNMP trap that is generated when an edged port of 
                                the BPDU-guard MSTP process receives BPDU packets."                 �"The SNMP trap that is generated when an Alternate-Port 
                                or Root-Port is aged out in the MSTP process."                 �"When the edged-port receives a BPDU packet, the edged-port attribute will be disabled.
                                Then the SNMP trap is generated. "                 �"The SNMP trap that is generated when an MSTP instance receive TC BPDUs' number 
                                exceeds the threshold."                 �"The SNMP trap that is generated when an MSTP process receive TC BPDUs' number 
                                exceeds the threshold."                /"When the root bridge status of a MSTI in a specified MSTP process changes, an alarm message is generated. 
								The changes include:
								1 indicates the the local bridge becomes a root bridge.
                                2 indicates the local bridge stops functioning as the root bridge."                L"When a port belonging to the MSTP process enters the forwarding state, an alarm message is generated.
							  Reason: The link status of an MSTP process changes and a new link is added to the network.
							  Advice: Pay attention to the reason of change on the network topology and check if a fault occurs on the backup link."                5"When a port belonging to the MSTP process enters the block state, an alarm message is generated. 
								Reason: Changes occur on the link state and a link is removed from the network. 
								Advice: Pay attention to the reason of change on the network topology and check if a fault occurs on the link."                5"When the MSTP process stop functioning as a root bridge, an alarm message is generated. 
								Cause: The MSTP process can no longer play the role of the root bridge because another MSTP process with a higher priority becomes the root bridge. 
								Solution: Reduce the priority of the new root bridge on the specified MSTI if you do not want another MSTP process to function as the root bridge. 
								On the contrary, delete the setting of the original root bridge on the specified MSTI if you want the new MSTP process to function as the root bridge."                �"When a port enabled with the root guard function on the root bridge receives a packet of a higher priority, an alarm message is generated. 
							   Cause: An MSTP process attempts to compete for the role of the root bridge. 
							   Solution: Reduce the priorities on the specified MSTI of all MSTP processes on the device.
							   Alternatively, reconfigure the root guard function for the port."                /"When a port enabled with the BPDU guard function of the MSTP process receives BPDUs, an alarm message is generated. 
								Cause: An edge port enabled with the BPDU guard function receives BPDUs. 
								Solution: Manually restart the port because the port is shut down under the attack of BPDUs."                 "Specify that the root port has not received any BPDU packets for a long time when loop protection is enabled in MSTP process."                 K"Specify that the edge port is invalid because of receiving a BPDU packet."                 ="When port detected loopback, block the port and arise trap."                 h"This notification indicates that the number of Up STP-capable interfaces exceeded the upper threshold."                 j"This notification indicates that the number of Up STP-capable interfaces fell below the lower threshold."                 K"This notification indicates that the bridge is no longer the root bridge."                 A"This notification indicates that the bridge is the root bridge."                 @"This notification indicates that the root bridge role flapped."                 P"This notification indicates that the flapping of the root bridge role resumed."                 g"This notification indicates that the local device proactively detected its STP topology was flapping."                 Y"This notification indicates that the STP topology of the local device stopped flapping."                 Y"This notification indicates that the local device received many TC BPDUs from neighbors"                 X"This notification indicates that loopback of protocol packets is detected on the port."                 l"This notification indicates that loopback of protocol packets is not detected on the port for a long time."                         �"A collection of objects indicating the necessary
                                capabilites of the bridge device which is running the multi spanning tree protocol."                !"A collection of objects describes 
                                the attribute of the VLAN in the multi spanning tree protocol.
                                They are necessary to find the relation 
                                between VLAN and instance by the VLAN identifier."                 �"A collection of objects describes 
                                the attribute of the instance in the multi spanning tree protocol."                 �"A collection of objects is necessary to show the 
                                information of the port in the bridge in the multi 
                                spanning tree protocol."                 "MSTP accessory group."                 "Notification."                     "MSTP process group."                 �"A collection of objects is necessary to show the 
                                information of the port in the bridge in the multi 
                                spanning tree protocol."                 "MSTP process notification."                     "MSTP process instance group."                 "MSTP TC snooping group"                     �"The compliance statement for device support of Priority
                                and Multicast Filtering extended bridging services."                          