�-- =================================================================                                                  
-- Copyright (C) 2013 by HUAWEI TECHNOLOGIES. All rights reserved                                                   
-- Description:  The MIB is used for defining Huawei's GPON management common MIB objects for both                 
--               profile-mode and distributing-mode.                                                             
-- Reference:                                                                                                 
-- Version: V1.34
-- ================================================================                    
                                                             w"The MIB is used for defining Huawei's GPON management common MIB objects for both profile-mode and distributing-mode."�"Huawei Industrial Base                
                          Bantian, Longgang                     
                          Shenzhen 518129                       
                          People's Republic of China            
                          Website: http://www.huawei.com        
                          Email: support@huawei.com             
                         " "201307151200Z" "201305291200Z" "201305202300Z" "201305072300Z" "201304170900Z" "201301080900Z" "201212040900Z" "201210181600Z" "201209060900Z" "201209040900Z" "201207280900Z" "201207200000Z" "201206190900Z" "201204130900Z" "201203120900Z" "201203010900Z" "201109010900Z" "201107250900Z" "201107080900Z" "201106250900Z" "201105180900Z" "201102280900Z" "201012100900Z" "201011250900Z" "201011030900Z" "201009280900Z" "201008250900Z" "201008110900Z" "201007070900Z" "201006070900Z" "201004290900Z" "201004070900Z" "201003170900Z" "201003100900Z" "201001210900Z" "200912300900Z" �"V1.34, changes in this revision:
                          - Add the enumerate of the leaf hwXponOntInfoAppLoadState.
                         ""V1.33, changes in this revision:
                          - Add a leaf hwGponOntPriorityQueueMappingPolicySwitch in table hwGponDeviceCommonGlobalObjects.
                          - Add the table hwXponDeviceOntNoAuthConfigTable.
                         "�"V1.32, changes in this revision:
                          - Rename hwXponOntPppoeSimuEthPortID to hwXponOntPppoeSimuPortID, and modify the description.
                          - Rename hwGponOntifEthType to hwGponOntifType, and add the enumerate of the leaf hwGponOntifType. 
                          - Rename hwGponOntifEthPort to hwGponOntifPort, and modify the description.
                          - modify the description of hwGponOntPortMulticastVlanTranslationTable.
                          - modify the description of hwGponOntPortMulticastVlanTranslationEntry.
                          - modify the description of hwGponOntPortMulticastVlanIndex.
                          - modify the description of hwGponOntPortMulticastVlanCfgTranslatedVlan.
                          - modify the description of hwGponOntPortMulticastStripSwitch.
                          - Add leaf hwGponDeviceOntCapInfoVdslPortNum in table hwGponDeviceOntCapabilityInfoTable.
                          - Add a table of hwGponOntPortServiceCfgTable.
                          - modify the description of hwXponOntStatProbeConfigParameter to support VDSL port.
                          - Add a table of hwXponOntPortEthernetStatsTable.
                          - Add the enumerate of the leaf hwGponDeviceOntCapInfoDeviceType.
			  - Add the leaf node hwXponOntInfoUsedMutualAuth in table hwXponOntInfoTable.
                         " "V1.31, changes in this revision:
                          - Add a table of hwXponOltOpticsModuleExtInfoTable.
                          - Add a leaf hwGponDeviceTcontAutoCreateSwitch in table hwGponDeviceCommonGlobalObjects.
                         "�"V1.30, changes in this revision:
                          - Add the enumerate of the leaf hwXponOntBatchQueryInfo. 
                          - rename hwXponPortControlTable to hwGponPortControlTable.
                          - rename hwXponPortControlDbaAssignMode to hwGponPortControlDbaAssignMode.
                          - Add leaf hwGponPortControlPonIdSwitch in table hwGponPortControlTable.
                          - Add leaf hwGponPortControlPonIdInputMode in table hwGponPortControlTable.
                          - Add leaf hwGponPortControlPonIdIdentifier in table hwGponPortControlTable.
			  - Add leaf hwGponDeviceOntCapInfoEthOamSupport in table hwGponDeviceOntCapabilityInfoTable.
                          - Add a leaf hwGponDeviceOntObjectExtendFrameID in table hwXponOntInfoTable.  
                          - Modify the name of leaf hwXponOntFtpServerProfileName to hwXponOntFtpServerProfileNameIndex in table hwXponOntFtpServerProfileTable.
                          - Add the enumerate of the leaf hwXponOntInfoInteroperabilityStandard.
                          - Add the table hwGponOntTdmPortPerf15MinTable.
                          - Add leaf hwXponOntInfoInteroperabilityStandard in table hwXponOntInfoTable.
                          - Add the enumerate of the leaf hwGponInteroperModeSwitch.
                          - Add the enumerate of the leaf hwGponOntInteroperabilityMode.
                          - Add a table of hwGponOntMulticastGemPortStatisticTable.
                          - Add a leaf hwGponOntInteroperModeActiveMode in table hwGponDeviceCommonGlobalObjects.
                          - Add the enumerate of the leaf hwXponOntInfoAppLoadState.                         
                         "�"V1.29, changes in this revision:
                          - Modify the description of leaf hwXponOntInfoAppLoadState.
                          - Add the table hwXponOntStatProbeConfigTable.
                          - Add the table hwXponOntProbeStatTable.   
                          - Add leaf hwXponOntWanExtendInfoDetail in table hwXponOntWanInfoTable.
                          - Modify the description of leaf hwXponDeviceOtdrTestFilterPara.
                         "Q"V1.28, changes in this revision:
                          - Modify the description of leaf hwXponDeviceOtdrTestDownPowerUsage.
                          - Modify the description of leaf hwXponDeviceOtdrTestPulseWidth.
                          - Modify the description of leaf hwXponDeviceOtdrTestResult.
                         "!"V1.27, changes in this revision:
                          - Add leaf hwXponOntInfoXmlLoadErrorInfo in table hwXponOntInfoTable.
                          - Add table hwGponInteroperModeConfigTable to config ONT interoperability mode and multicust-auth mode.
                         " �"V1.26, changes in this revision:
                          - Add leaf hwXponDeviceOtdrTestFilterOrder in table hwXponDeviceOtdrTestTable.
                         " �"V1.25, changes in this revision:
                          - Modify the description of leaf hwXponOntBatchQueryItemMask and hwXponOntBatchQueryInfo.
                         ":"V1.24, changes in this revision:
                          - Modify the description of leaf hwXponDeviceOtdrTestOpticalFibreLength.
                          - Modify the description of leaf hwXponOpticalModuleType, hwXponOpticalModuleOltOntType and hwXponOpticalModuleBandwidthType.
                         " x"V1.23, changes in this revision:
                          - Delete unnecessary en dashes.
                         "�"V1.22, changes in this revision:
                          - Add leaf hwGponOnuTcontPriorityQueuePriorityReverse in table hwGponDeviceCommonGlobalObjects. 
                          - Add leaf hwXponDeviceAllowDifferentRangeSwitch in table hwXponDeviceCommonGlobalObjects.
                          - Add table hwXponOpticsParameterRangeTable for xpon optical module info.
                         "`"V1.21, changes in this revision:
                          - Add the table of hwXponDeviceOtdrTestTable 
                            and the trap of hwXponPortOtdrResultTrap for OTDR test.
                          - Modify the table name of hwXponPortStateTable from hwXponPortStateTable to hwXponPortInfoTable.
                          - Add the leaf nodes hwXponPortOtdrCapability in table hwXponPortInfoTable.                                 
                          - Delete table hwXponDeviceOntFtpCfgServerTable, the table has never been used.
                          - Delete table hwXponDeviceOntFtpCfgTable, the table has never been used.
                          - Add table hwXponOntVoipConfigTable to config the ONT's voip service.
                          - Add table hwXponOntFtpServerProfileTable to config the FTP server profile.
                          - Modify the name of the leaf node hwGponDeviceOntVoipCfgResult to hwGponDeviceOntVoipFtpCfgResult. 
                          - Add the table hwXponOpticsDdmInfoExTable.                               
                         "�"V1.20, changes in this revision:
                          - Modify MAX-ACCESS of leaf hwXponOntTr069ServerProfileName to not-accessible.
                          - Modify the string length of hwXponOntTr069ServerProfileUserName from 16 to 50.
                          - Modify the string length of hwXponOntTr069ServerProfilePassword from 16 to 25. 
                          - Delete leaf hwXponOntVlanIdForTr069Server from table hwXponOntConfigTable.
                          - Delete leaf hwXponOntPriorityForTr069Server from table hwXponOntConfigTable.  
                          - Delete leaf hwXponOntAdminStateForTr069Server from table hwXponOntConfigTable. 
                          - Add leaf hwXponOntAlarmPolicyAppendIpAddress, hwXponOntAlarmPolicyAppendMac, 
                            hwXponOntAlarmPolicyAppendSn, hwXponOntAlarmPolicyAppendLoid,
                            hwXponOntAlarmPolicyAppendPolicyName in table hwXponOntAlarmPolicyTable. 
                          - Add table hwXponOntAlarmPolicyAlarmTable to set the ONT alarm level.
                          - Modify the range of leaf hwXponOntIpConfigPppoeUserName and hwXponOntIpConfigPppoePassword.
                         "�"V1.19, changes in this revision:
                          - Add leaf hwXponOntUsedTr069ServerProfName in table hwXponOntConfigTable. 
                          - Add leaf hwXponOntVlanIdForTr069Server in table hwXponOntConfigTable.
                          - Add leaf hwXponOntPriorityForTr069Server in table hwXponOntConfigTable. 
                          - Add leaf hwXponOntAdminStateForTr069Server in table hwXponOntConfigTable. 
                          - Add the table of hwXponOntTr069ServerProfileTable for gpon ont server management. 
                          - Add leaf hwGponOntMutlicastAuthMode in hwXponDeviceCommonGlobalObjects for the ONT multicust-auth mode.    
                          - Add leaf hwXponOntControlGracefulReset in hwXponOntControlTable to reset the ONT gracefully.                          
                          - Add leaf hwXponOntControlGraceTime in hwXponOntControlTable to specify the maximum time to wait for the ONT to reset gracefully.                          
                          - Modify the chinese description of leaf hwXGponOltOpticsModuleXponTemperatureLevel into English. 
                          - Add the table hwXponDeviceOntPowerSheddingProfileTable to set the power shedding interval.                    
                          - Add the table hwXponOntPowerSheddingStatusQueryTable to query the power shedding status of the ONT. 
                          - Add leaf hwXponOntPowerSheddingProfName in table hwXponOntConfigTable.          
                          - Add leaf hwXponOntDeleteVasService in hwXponOntControlTable for omci/oam.
                          - Add the table of hwXponOntCapabilityInfoTable for omci/oam. 
                          - Modify the table name of hwXponOntIpConfigTable to hwXponOntIpMaintainTable.  
                          - Add the table of hwXponOntIpConfigTable for omci/oam.                    
                          - Add leaf hwXponPortMacChipState in hwXponPortStateTable.
                          - Add table hwGponOntPerfEverbeforeDataTable for XGPON everbefore statistics.
                          - Add leaf hwGponOntEverbeforeDownFrameFecCorrectedBytes in table hwGponOntPerfEverbeforeDataTable.
                          - Add leaf hwGponOntEverbeforeDownFrameFecCorrectedCodeWords in table hwGponOntPerfEverbeforeDataTable.
                          - Add leaf hwGponOntEverbeforeDownFrameFecUncorrectableCodeWords in table hwGponOntPerfEverbeforeDataTable. 
                          - Add leaf hwGponOntEverbeforeDownFrameTotalRecCodeWords in table hwGponOntPerfEverbeforeDataTable. 
                          - Add leaf hwGponOntEverbeforeDownFrameFecSeconds in table hwGponOntPerfEverbeforeDataTable. 
                          - Add leaf hwGponOntEverbeforeRangingTimeCount in table hwGponOntPerfEverbeforeDataTable. 
                          - Add leaf hwGponOntEverbeforeTransmittedGemFrames in table hwGponOntPerfEverbeforeDataTable. 
                          - Add leaf hwGponOntEverbeforeXgemKeyErrorCount in table hwGponOntPerfEverbeforeDataTable. 
                          - Add leaf hwGponOntEverbeforeXgemHecErrorCount in table hwGponOntPerfEverbeforeDataTable. 
                          - Modify hwGponOntPerfDataTable to hwGponOntPerfCurr15MinDataTable. 
                          - Modify the description of hwGponOntPerfCurr15MinDataTable. 
                          - Modify HwGponOntPerfDataEntry to HwGponOntPerfCurr15MinDataEntry. 
                          - Modify the description of HwGponOntPerfCurr15MinDataEntry.                          
                          - Modify hwGponOntPerfCurr15MinFECCorrectByte to hwGponOntPerfCurr15MinFecCorrectByte.
                          - Modify hwGponOntPerfCurr15MinFECCorrectCodeWords to hwGponOntPerfCurr15MinFecCorrectCodeWords.
                          - Modify hwGponOntPerfCurr15MinFECUncorrectCodeWords to hwGponOntPerfCurr15MinFecUncorrectCodeWords.
                          - Modify hwGponOntPerfCurr15MinFECTotalCodeWords to hwGponOntPerfCurr15MinFecTotalCodeWords.
                          - Modify hwGponOntPerfCurr15MinFECSeconds to hwGponOntPerfCurr15MinFecSeconds.
                          - Add leaf hwGponOntPerfCurr15MinRangingTimeCount in table hwGponOntPerfCurr15MinDataTable.
                          - Add leaf hwGponOntPerfCurr15MinTransmittedGemFrames in table hwGponOntPerfCurr15MinDataTable.
                          - Add leaf hwGponOntPerfCurr15MinXgemKeyErrorCount in table hwGponOntPerfCurr15MinDataTable.
                          - Add leaf hwGponOntPerfCurr15MinXgemHecErrorCount in table hwGponOntPerfCurr15MinDataTable.
                          - Modify hwGponOntPerfHis15MinFECCorrectByte to hwGponOntPerfHis15MinFecCorrectByte.
                          - Modify hwGponOntPerfHis15MinFECCorrectCodeWords to hwGponOntPerfHis15MinFecCorrectCodeWords.
                          - Modify hwGponOntPerfHis15MinFECUncorrectCodeWords to hwGponOntPerfHis15MinFecUncorrectCodeWords.
                          - Modify hwGponOntPerfHis15MinFECTotalCodeWords to hwGponOntPerfHis15MinFecTotalCodeWords.
                          - Modify hwGponOntPerfHis15MinFECSeconds to hwGponOntPerfHis15MinFecSeconds.
                          - Add leaf hwGponOntPerfHis15MinRangingTimeCount in table hwGponOntPerfHis15MinTable.
                          - Add leaf hwGponOntPerfHis15MinTransmittedGemFrames in table hwGponOntPerfHis15MinTable.
                          - Add leaf hwGponOntPerfHis15MinXgemKeyErrorCount in table hwGponOntPerfHis15MinTable.
                          - Add leaf hwGponOntPerfHis15MinXgemHecErrorCount in table hwGponOntPerfHis15MinTable.
                          - Modify the description of the object hwXponOntInfoAppLoadState.
                          - Modify the description of the object hwXponOntBatchQueryInfo.
                          - Add a table hwXGponOltOpticsModuleInformationTable.  
                          - Modify the description of leaf hwGponOntPerfHis15MinFecCorrectCodeWords. 
                          - Modify the description of leaf hwGponOntPerfHis15MinFecUncorrectCodeWords and hwGponOntPerfHis15MinFecTotalCodeWords.  
                          - Add leaf hwXponDeviceAlarmClearOnShutdown in hwXponDeviceCommonGlobalObjects for clear on shutdown switch.
                          - Add table hwGponCommonOntStatisticTable for the information about the priority queue alarm.
                          - Modify the name of every leaf in table hwXGponOltOpticsModuleInformationTable, modify XGPON  to 10GPON.
                          - Add the table hwGponDeviceOntCapabilityInfoTable to query the capability of the GPON ONT.        
                          - Add leaf hwXponOntInfoNoOnLineReason in hwXponOntInfoTable.              
                          - Modify the description option of hwXponPortSignalDetect.
                          - Change the name of hwXponOntActiveAlarmEntry to hwXponDeviceOntActiveAlarmEntry
                          - Add leaf hwXponDeviceSuppressInitialAlarmState in hwXponDeviceCommonGlobalObjects to suppress xpon initial alarm. 
                          - Add the enumerate of the leaf hw10GponOltOpticsModuleXponSubType.
                         " �"V1.18, changes in this revision:
                          - Add leaf hwXponDeviceModifyBoundProfileSwitch in hwXponDeviceCommonGlobalObjects for enable or disable modify bound profile control.                      
                         " �"V1.17, changes in this revision:
                          - Delete the node hwXponPortControlDbaCalculatePeriod from table hwXponPortControlTable.                          
                         " �"V1.16, changes in this revision:
                          - Add leaf hwXponDeviceAutofindConflictCheckSwitch in hwXponDeviceCommonGlobalObjects for the ONT autofind conflict-check switch.
                         "�"V1.15, changes in this revision:
                          - Add leaf hwGponOntInteroperabilityMode in hwGponDeviceCommonGlobalObjects for interoperability mode.
                          - Add leaf hwGponDeviceOntDefaultLineProfName in hwGponDeviceCommonGlobalObjects for default profile.
                          - Add leaf hwGponDeviceOntDefaultSrvProfName in hwGponDeviceCommonGlobalObjects for default profile.
                          - Add the table HwGponOntIphostStatsTable to querying and clearing the information about the IPHOST port.
                          - Add the table of hwXponPortControlTable.
                          - Add the table of hwXponDeviceOntActiveAlarmTable. 
                          - Add hwXponCommonOntCatvDefaultState to support the global settings for ONT CATV ports.
                          - Add leaf hwXponDeviceGroupPowerOffControlState in hwXponDeviceCommonGlobalObjects for group power off report switch.
                          - Add the leaf hwXponOntLastDistance in table hwXponOntInfoTable.
                          - Move all TRAP objects from HUAWEI-XPON-COMMON-MIB.mib to HUAWEI-XPON-TRAP-MIB.mib.
                         "p"V1.14, changes in this revision:
                          - Modify the description of leaf hwXponOntBatchQueryInfo. 
                          - Modify the description of leaf hwXponOntInfoXmlLoadState and hwXponOntInfoAppLoadState. 
                          - Add the object of hwXponDeviceCommonProfileObjects.
                          - Add the table of hwXponOntAlarmPolicyTable. 
                          - Add the table of hwXponOntConfigTable.  
                          - Modify the description of leaf hwXponOntBatchInfoTable to query the reason why the ONT last went offline.
                          - Add table hwXponOntWanInfoTable to query the information about WAN ports.
                          - Add trap hwGponOntFECUncorrectCodeWordsAlarmTrap,hwGponOntFECUncorrectCodeWordsRecoverAlarmTrap,
                            hwGponOntFECCorrectCodeWordsAlarmTrap and hwGponOntFECCorrectCodeWordsRecoverAlarmTrap.
                          - Add two leaves hwXponCommonOntFECUncorrectCodeWordsThreshold and hwXponCommonOntFECCorrectCodeWordsThreshold in hwXponCommonTrapsVbOids
                         "�"V1.14, changes in this revision:
                          - Add the table of hwGponDevicePerfDataTable.
                          - Add the table of hwGponOntPortMulticastVlanTranslationTable for the multicast vlan translation of GPON ONT ETH port. 
                          - Add a leaf hwGponDeviceOntVoipCfgResult in hwGponDeviceOntVoipCfgFileInfoTable.
                          - Add the table of hwXponDeviceOntFtpCfgServerTable.
                          - Add the table of hwXponDeviceOntFtpCfgTable.
                          - Add a leaf hwXponOntInfoSupportXmlVersion.  
                          - Add the table of hwGponOntPerfDataTable.
                          - Add the table of hwGponOntPerfHis15MinTable.
                          - Delete the table of hwGponDevicePerfDataTable.
                          - Add trap hwGponDeviceOntVersionTrap.
                          - Add trap hwGponProfOntVersionTrap.
                          - Add trap hwEponProfOntUpVersionTrap.
                          - Add a leaf hwXponRogueOntManualDetectState in hwXponCommonTrapsVbOids.
                          - Add a trap node hwXponCommonRogueOntManualDetectTrap for notifying the result of rogue ont manual detect.			  
                         ""V1.13, changes in this revision:
                          - Add the hwXponOntSurvivalAlarmTrap and hwXponOntSurvivalRecoverAlarmTrap
                            to support the work mode of ONT.
                          - Modify the table of hwXponOntBatchInfoTable to optimize thebatch query.
                          - Modify the nodes in the table of hwXponOntPppoeSimuTestInfoTable to support the priority of vlan.
                          - Modify the trap of hwXponCommonDeviceOntPppoeSimuTrap.
                         "�"V1.12, changes in this revision:
                          - Modify the description of the flowing leaves:
                            hwGponOltMinBandwidth
                            hwGponOltAutoUpdateOntFlag
                          - Add a leaf hwGponOltChangePasswordIntervalTime in hwXponCommonTrapsVbOids for the trap hwXponConfigPmConfigTrap
                          - Modify the member of the trap hwXponConfigPmConfigTrap
                          - Add the table hwXponDeviceCommonGlobalObjects for setting or obtaining device common global information of XPON.
                          - Add leaf hwXponDeviceLosAlarmControlState in hwXponDeviceCommonGlobalObjects for alarm los-control.
                         "�"V1.11, changes in this revision:
                          - Add the table of hwXponOntBatchInfoTable to query all of the ont information.
                          - Add the table of hwXponOntPppoeSimuTestInfoTable 
                            and the trap of hwXponCommonDeviceOntPppoeSimuTrap for PPPOE test.
                          - Modify the node of the hwXponCommonDeviceOntPingResult, 
                            add the node of hwXponCommonDeviceReceivedErrorCode for the test of remote ping
                          - Add the table of the hwXponOntControlTable for ONT configration.
                          - Add the node of the hwXponOntInfoCfgFileCrc
                          - Add the node of the hwXponOntInfoAppLoadState and hwXponOntInfoXmlLoadState 
                            for ONT load.
                          - Modify the description of the hwGponConfigOntPortNativeVlanTrap.
                         " �"V1.10, changes in this revision:
                          - Modify the description of the MIB file.
                         " �"V1.09, changes in this revision:
                          - Modify the value range of the leaf hwGponOntPortTDMCodeMode.
                         " �"V1.08, changes in this revision:
                          - Add leaf hwGponDeviceTcontAutoCombineSwitch in hwGponDeviceCommonGlobalObjects for T-CONT auto-combine."�"V1.07, changes in this revision:
                          Add the leaf nodes hwXponModeSwitchResult, hwXponConfigMode, hwGponOltMinBandwidth, hwGponOltNearestDistance,hwGponOltFarestDistance,
                          hwGponOltAutoFindOntFlag,hwGponOltAutoUpdateOntFlag,hwGponOltDownFecEnableFlag,hwGponOntPortTDMCodeMode,hwGponOntPortManagementStatus,
                          hwGponOntEthPortLoopback,hwGponOntE1PortLoopback,hwGponOntPortVlanDefault, hwGponOntPortVlanDefaultPriority in hwXponCommonTrapsVbOids
                          for standard traps.
                          Add the definition of the trap node: hwXponSwitchModeResultTrap,hwXponConfigModeTrap,hwXponConfigChangeSnmpProfileTrap,
                          hwXponConfigPmConfigTrap,hwXponConfigOltTypeBDparentDelTrap,hwGponConfigOltTypeBDparentTrap,hwGponConfigOltTypeBDparentCreateTrap,
                          hwGponConfigOltTypeBDparentCreateTrap,hwGponConfigOntPortNativeTrap,in hwXponCommonGeneralTraps for standard traps.
                          Modify the definition of the leaf node, include:hwXponCommonDeviceOntRemotePingTrap for trap optimization.
                          Modify the attribute value,include node:hwGponDeviceOntPotsPortPTPSrvState,hwGponDeviceOntPotsPortPTPAdminState,
                          hwGponDeviceOntPotsPortPTPHookState,hwGponDeviceOntPotsPortCTPSrvState,hwGponDeviceOntPotsPortCTPSrvType,hwGponDeviceOntPotsPortCTPSrvCode.
                         " �"V1.06, changes in this revision:
                          Modify the definition difference between MIB file and tree.c                          
                         "K"V1.05, changes in this revision:
                          Add the table hwGponDeviceCommonGlobalObjects for setting or obtaining device common global information of GPON.
                          Add the leaf nodes hwXponOntInfoMemoryOccupation,hwXponOntInfoCpuOccupation,hwXponOntInfoTemperature,hwXponOntInfoProductDescription
                          in table hwXponOntInfoTable for obtaining ONT information.
                          Add the leaf nodes hwXponDeviceOntControlPrimaryStatus ,hwXponDeviceOntControlSecondaryStatus
                          in table hwXponOntInfoTable for obtaining ONT status of the Board.
                          Add the table hwXponOntIpConfigTable to config the ONT.
                          Add the table hwXponCommonTrapsVbOids and hwXponCommonTraps for standard traps.
                          Add leaf nodes hwXponPortStateChangeTrap and hwXponOntCfgStateChangeTrap in hwXponCommonGeneralTraps for standard traps.
                          Add the table hwXponPortStateTable to query the port state information.
                         " �"V1.04, changes in this revision:
                          Add the table hwXponOntInfoTable to query the ont information.
                         "�"V1.03, changes in this revision:
                          Modify the attribute value,include node:hwGponDeviceOntPotsPortPTPSrvState,hwGponDeviceOntPotsPortPTPAdminState,
                          hwGponDeviceOntPotsPortPTPHookState,hwGponDeviceOntPotsPortCTPSrvState,hwGponDeviceOntPotsPortCTPSrvType,
                          hwGponDeviceOntPotsPortCTPSrvCode.
                         ""V1.02, changes in this revision:
                          Add the leaf node hwXponOntTransmittingFileLength in table hwXponOntFileTransmitionTable for setting or obtaining
                          the length of the file to be transmit.
                         " "V1.01, invariant." "V1.00, Initial version."                           �"The hwGponDeviceOntVoipCfgFileInfoTable is used to query the version information and validation status of the ONT voice configuration file.
                 The indexes of this table are ifIndex and hwGponDeviceOntObjIndex.
                "                       �"The hwGponDeviceOntVoipCfgFileInfoTable is used to query the version information and validation status of the ONT voice configuration file.
                 The indexes of this entry are ifIndex and hwGponDeviceOntObjIndex.
                "                       "ONT ID, range: 0-127."                      �"ONT VOIP configuration file state.
                 Options:
                 1. inactive(1)     - Configuration retrieval has not been attempted
                 2. active(2)       - Configuration was retrieved
                 3. initializing(3) - Configuration is now being retrieved
                 4. fault(4)        - Configuration retrieval process failed
                 5. invalid(-1)     - Indicates that the query fails or no information is detected
                "                       "ONT VOIP file version."                      :"Query the failed alarm information of config XML file.
                 Options:
                 1. success(0)            - The ONT configuration is successful
                 2. resolvefail(1)        - Failed to resolve the configuration server name
                 3. notreach(2)           - Cannot reach configuration server(The port cannot be reached, ICMP errors)
                 4. notconnect(3)         - Cannot connect to configuration server (due to bad credentials or other fault after the port responded)
                 5. notvalidate(4)        - Cannot validate configuration server
                 6. notauthenticate(5)    - Cannot authenticate configuration session (e.g. missing credentials)
                 7. responsetimeout(6)    - Timeout waiting for response from configuration server
                 8. responsefail(7)       - Failure response received from configuration server
                 9. configfileerror(8)    - Configuration file received has an error
                 10. invalid(-1)          - Other errors
                 "                       �"Query the state of ONT POTS port table.The table is used to query the
                 state of ONT POTS port.
                 The indexes of this table are ifIndex, hwGponDeviceOntObjIndex and hwGponDeviceOntPotsPortId.
                "                       �"Query the state of ONT POTS port table.The table is used to query the
                 state of ONT POTS port.
                 The indexes of this entry are ifIndex, hwGponDeviceOntObjIndex and hwGponDeviceOntPotsPortId.
                "                       "ONT POTS port ID."                      "ONT POTS port physics running state.
                 Options:
                 1. normal(1)        - Normal state
                 2. fail(2)          - Fail state
                 3. invalidState(-1) - Returned in case of query failure or error
                "                      �"ONT POTS port physics admin state.
                 Options:
                 1. lock(1)          - All user functions of this circuit pack are blocked, and alarm for this managed entity
                                       are no longer generated
                 2. unlock(2)        - Unlock state, all user functions of this circuit pack are normal
                 3. invalidState(-1) - This value is return when can't query or have some errors in query
                "                      C"ONT POTS port physics hook state.
                    Options:
                    1. onHook(1)        - ONT POTS port physics is onHook
                    2. offHook(2)       - ONT POTS port physics is offHook
                    3. invalidState(-1) - Returned in case of query failure or error
                   "                      l"ONT POTS port service running state.
                 Options:
                 1. noneOrinitial(1)      - None or initial state
                 2. registered(2)         - Registered state
                 3. inSession(3)          - In session
                 4. failedRegistration(4) - Failed in registration
                 5. failedInvite(5)       - Failed in invite
                 6. portNotconfigured(6)  - Port doesn't configure
                 7. configDone(7)         - Config has been done
                 8. invalidState(-1)      - Returned in case of query failure or error
                "                      �"ONT POTS port service type.
                 Options:
                 1. idleOrnone(1)       - Idle or none type
                 2. twoWay(2)           - Two way type
                 3. threeWay(3)         - Three way type
                 4. fax(4)              - Fax type
                 5. telem(5)            - Telem type
                 6. conference(6)       - Conference type
                 7. invalidType(-1)     - Invalid type
                "                      �"ONT POTS port code mode.
                 Options:
                 1.  pcmu(1)                - Audio data is encoded as eight bits per sample, after logarithmic scaling.
                                              PCMU denotes mu-law scaling
                 2.  reserved1(2)           - Reserved
                 3.  reserved2(3)           - Reserved
                 4.  gsm(4)                 - GSM denotes the European GSM 06.10 standard for full-rate
                                              speech transcoding, ETS 300 961, which is based on RPE/LTP (residual pulse
                                              excitation/long term prediction) coding at a rate of 13 kb/
                 5.  g723(5)                - Dual-rate speech coder for multimedia communications transmitting at 5.3 and 6.3
                                              kbit/s
                 6.  dvi4ClockRate8000(6)   - DVI4 uses an adaptive delta pulse code modulation (ADPCM) encoding scheme that was
                                              specified by the Interactive Multimedia Association (IMA) as the IMA ADPCM wave type,
                                              and the clock rate is 8000HZ
                 7.  dvi4ClockRate16000(7)  - DVI4 uses an adaptive delta pulse code modulation (ADPCM) encoding scheme that was
                                              specified by the Interactive Multimedia Association (IMA) as the IMA ADPCM wave type,
                                              and the clock rate is 16000HZ
                 8.  lpc(8)                 - LPC designates an experimental linear predictive encoding contributed by Ron Frederick,
                                              which is based on an implementation written by Ron Zuckerman posted to the Usenet group
                                              comp
                 9.  pcma(9)                - Audio data is encoded as eight bits per sample, after logarithmic scaling. PCMA denotes
                                              A-law scaling
                 10. g722(10)               - 7 kHz audio-coding within 64 kbit/s
                 11. l16TwoChannels(11)     - Two channel encoding
                 12. l16OneChannel(12)      - One channel encoding
                 13. qcelp(13)              - QCELP CODEC compresses each 20 milliseconds of 8,000 Hz
                 14. cn(14)                 - Comfort Noise
                 15. mpa(15)                - MPA denotes MPEG-1 or MPEG-2 audio encapsulated as elementary streams
                 16. g728(16)               - Coding of speech at 16 kbit/s using low-delay code excited linear prediction
                 17. dvi4ClockRate11025(17) - DVI4 uses an adaptive delta pulse code modulation (ADPCM) encoding scheme that was specified
                                              by the Interactive Multimedia Association (IMA) as the IMA ADPCM wave type, and the clock rate
                                              is 11025HZ.
                 18. dvi4ClockRate22050(18) - DVI4 uses an adaptive delta pulse code modulation (ADPCM) encoding  scheme that was specified
                                              by the Interactive Multimedia Association (IMA) as the IMA ADPCM wave type, and the clock rate
                                              is 11025HZ.
                 19. g729(19)               - Coding of speech at 8 kbit/s using conjugate structure-algebraic code excited linear prediction
                 20. t38(20)                - T.38 is used by the IFP peer to verify message alignment. It is identified by an ASN.1 Application tag
                 21. invalidCode(-1)        - Invalid code
                "                      "This is ONT file transmission table. This table is used to
                 transmit the config or diagnose files between BMS and ONU.
                 The indexes of this table are ifIndex, hwXponOntIndex and
                 hwXponOntTransmittingSerialNo.
                "                      "This is ONT file transmission table. This table is used to
                 transmit the config or diagnose files between BMS and ONU.
                 The indexes of this entry are ifIndex, hwXponOntIndex and
                 hwXponOntTransmittingSerialNo.
                "                       "ONT ID, range: 0-254."                       $"The serial number of transmission."                       "The file to be transmitted."                       +"The length of the file to be transmitted."                       �"The ont info table. This table is used to query the ont information.
                 The indexes of this table are ifIndex and hwXponOntIndex.
                "                       �"The ont info table. This table is used to query the ont information.
                 The indexes of this entry are ifIndex and hwXponOntIndex.
                "                       ["The one-time online duration of the ONT.
                 Unit: second
                "                       1"The Memory occupation of the ONT, range: 0-100."                       ."The CPU occupation of the ONT, range: 0-100."                       Y"The temperature of the ONT.
                 Unit: degree centigrade
                "                       %"The product description of the ONT."                      �"The primary status of the Board.This parameter indicates the current overall
                 service condition of an entity, i.e., whether it is in-service or out-of-service.
                 Options:
                 1. is-nr(1)     - Normal
                 2. is-anr(2)    - Abnormal
                 3. is-rst(3)    - Restricted
                 4. is-anrst(4)  - Abnormal & Restricted
                 5. oos-au(5)    - Autonomous
                 6. oos-ma(6)    - Management
                 7. oos-auma(7)  - Autonomous & Management
                 8. oos-aurst(8) - Autonomous & Restricted
                 9. oos-maanr(9) - Management & Abnormal
                "                      ^"This parameter indicates the secondary status of the board. The parameter provides additional
                 information pertaining to PST and PSTQ. For example, it may indicate the type and/or reason of
                 the external command, the event that occurred in the Network Element, etc. Multiple values may
                 apply to an entity at a given moment. The highest bit of SST value indicates the sst-ains(0)
                 status;
                 The second highest bit of SST value indicates the sst-faf(1) status, and the rest can be deduced
                 by analogy.
                 This BITS structure can report the following status:
                 1.  sst-ains(0)  - this bit position positively reports that the status of the board is automatic in-service
                 2.  sst-faf(1)   - Facility Failure
                 3.  sst-flt(2)   - Fault
                 4.  sst-lpbk(3)  - Loopback
                 5.  sst-mea(4)   - Mismatch of Equipment and Attributes
                 6.  sst-sgeo(5)  - Supporting Entity Outage
                 7.  sst-stbyh(6) - Standby-Hot
                 8.  sst-ts(7)    - Test
                 9.  sst-uas(8)   - Unassigned
                 10. sst-ueq(9)   - Unequipped
                 11. sst-wrk(10)  - Working
                 12. sst-pwr(11)  - Power
                 "                       "The CRC value of the ONT."                      �"The state of the app load for ONT.
                 0x01 initstate
                 0x02 process %0
                 0x03 ftp load fail
                 0x04 loaded to mainboard process %10
                 0x05 loaded to ponboard process %20
                 0x06 loaded to ponboard fail
                 0x07 process %80
                 0x08 fail:user stop
                 0x09 fail:ont offline 
                 0x0a fail:ont response fail
                 0x0b fail:ont response timeout
                 0x0c fail:pon inner error
                 0x0d process %100,ont restart
                 0x0e Process %100 the ont now is in survival mode
                 0x0f fail:system is busy because the ponboard's channel is occupied
                 0x10 fail:failed to verify the version information
                 0x11 fail:processing the loading task timed out
                 0x12 fail:ont file check failure
                 0x13 fail:code file validate failure
                 0x14 fail:system buffer is insufficient
                 0x15 fail:ont not support load
                 0x16 fail:ont storage space insufficient
                 0x17 fail:ont image file error
                 0x18 fail:ont image file existed
                 0x19 fail:ont activate image file fail
                 0x1a fail:ont commit image file fail
                 0x1b fail:ont image file crc error
                 0xff fail:unknown reason
                "                      "The state of the xml load for ONT.
                 0x01 initstate
                 0x02 process %0
                 0x03 ftp load fail
                 0x04 loaded to mainboard process %10
                 0x05 loaded to ponboard process %20
                 0x06 loaded to ponboard fail
                 0x07 process %80
                 0x08 process %100
                 0x09 fail:user stop
                 0x0a fail:ont not support xml
                 0x0b fail:ont offline 
                 0x0c fail:ont response unknown fail
                 0x0d fail:ont response timeout
                 0x0e fail:xml error ont will reconfigure fail
                 0x0f fail:xml format error 
                 0x10 fail:xml content error
                 0x11 fail:ont find xml transfer error
                 0x12 fail:unknown error from ont
                 0x13 fail:unknown error from ponboard
                 0x14 fail:system is busy because the ponboard's channel is occupied
                 0xff fail:unknown reason
		"                       A"The xml version that the ONT supports, it is a V.R.C.SP string."                       �"The last ranging value of the ONT.
                 Unit: m
                 Options: 
                 1. invalid (-1)            - Indicates that the query fails or no information is detected."                       �"This object indicates the reason why the ONT went offline.
                 The value (1) indicates that the reason is lacking third party ont license,
                 the value (-1) indicates that the reason is not lacking third party ont license."                       T"Indicates the error information when the ONT XML configuration fails to be loaded."                      "The interoperability mode of the ONT.
                 Options:
                 1. itu-t(1)    - Indicates that the interoperability standard of the ONT is itu-t
                 2. ctc(2)      - Indicates that the interoperability standard of the ONT ctc
                 3. eric-v1(3)     - Indicates that the interoperability standard of the ONT is eric-v1
		 4. eric-v2(4) - Indicates that the interoperability standard of the ONT is eric-v2
                 5. itu-t-g984(5) - Indicates that the interoperability standard of the ONT is itu-t-g984
                 6. itu-t-g988(6) - Indicates that the interoperability standard of the ONT is itu-t-g988      
                 7. invalid(-1) - Indicates that the query fails or no information is detected
                "                       x"Extend Frame ID. The issued value (-1) of Extend Frame ID indicates that the ONT is not specified to any Extend Frame."                      b"Indicates whether the ONT uses mutual authentication.
                  Options:
                  1. yes (1)           -Indicates the ONT uses mutual authentication.
                  2. no (2)            -Indicates the ONT does not use mutual authentication.
                  3. invalid (-1)      -Indicates the invalid value.
                 "                       �"The ONT IP maintain table. This table is used to config the ONT.
                     The indexes of this table are ifIndex hwXponOntIndex and hwXponOntIpMaintainIndex.
                    "                       �"The ONT IP maintain table. This table is used to config the ONT.
                     The indexes of this entry are ifIndex hwXponOntIndex and hwXponOntIpMaintainIndex.
                    "                       ""The IP index of the ont IP host."                       -"The destination IP address of the ONT ping."                       �"XPON port Info table. This table is used to query the port information.
                 The index of this table is ifIndex.
                "                       �"XPON port Info table. This table is used to query the port information.
                 The index of this entry is ifIndex.
                "                      *"Query the signal detect info of the port.
                 Options:
                 1. normal(1)      - Optical signals are detected
                 2. fault(2)       - Optical signals are not detected
                 3. unsupport(255) - Signal detection is not supported
                "                       �"Query the mac chipset state info of the port.
                 Options:
                 1. normal(1)      - The XPON MAC chipset is normal
                 2. fail(2)       - The XPON MAC chipset is fault
                "                      �"This object indicates whether the optical module supports the OTDR test.
                 Options:
                 1. support(1)                  - Indicates that the optical module supports the OTDR test.
                 2. notSupport(2)               - Indicates that the optical module does not support the EOTDR test.
                 3. invalid(-1)                 - Indicates that the query fails or no information is detected.
                "                      �"This table is used to query the ont run state, config state, admin state, load state, 
                 equipment ID, software version, system status, CRC value and offline reason. The length of query result can not exceed 7000 BYTEs.
                 This table can not support the operation of get next.
                 The index of this table is hwXponOntBatchQueryIndex.
                "                      �"This table is used to query the ont run state, config state, admin state, load state, 
                 equipment ID, software version, system status, CRC value and offline reason. The length of query result can not exceed 7000 BYTEs.
                 This table can not support the operation of get next.
                 The index of this entry is hwXponOntBatchQueryIndex.
                "                       F"The object indicates the index of the table hwXponOntBatchInfoTable."                      "The items of ont status need query, include ont run state, config state, 
                 admin state, app load state, xml load state, equipment ID, software version, system status, 
                 CRC value, offline reason and hardware version.
                "                       �"The object indicates the ONT list, and each ONT takes 4 bytes, include 
                 frame(4bit), slot(6bit), port(6bit) and ontid(16bits) and the most number of ONT is 1024.
                "                      �"The value of ont status:
                 run state(1byte)         : 1-online,2-offline,255-invalid
                 config state(1byte)      : 1-init,2-normal,3-fail,4-noresume,5-config,255-invalid
                 admin state(1byte)       : 1-activated,2-deactivated,255-invalid
                 app load state(1byte)    : 1-init,2-start,3-ftpfail,4-loadtoscu,5-loadtopon,6-loadtoponfail,
                                            7-loadtoont,8-userstop,9-ontoffline,10-ontackfail,11-ontresponsetimeout,
                                            12-errpon,13-ontreset,14-survival,15-channeloccupied,
                                            16-errversion,17-tasktimeout,18-ontfilecheckerr,19-ontfilevalidatefail,
                                            20-bufferinsufficient,255-invalid
                 xml load state(1byte)    : 1-init,2-start,3-ftpfail,4-loadtoscu,5-loadtopon,6-loadtoponfail,7-loadtoont,
                                            8-crcreport,9-userstop,10-notsupport,11-ontoffline,12-ontackfail,
                                            13-ontresponsetimeout,14-cfgfail,15-errformat,16-errcontent,17-errtransfer,
                                            18-errontinner,19-errponboardinner,20-channeloccupied,255-invalid
                 equipment ID(20bytes)    : the equipment ID of the ONT
                 software version(16bytes): the software version of the ONT
                 system status(1byte)     : 1-normal,2-survival
                 CRC value(4bytes)        : the CRC value report from the ONT
                 offline reason(1byte)    : 1-LOS(Loss of signal),2-LOSi(Loss of signal for ONUi),
                                            3-LOFi(Loss of frame of ONUi),4-SFi(Signal fail of ONUi),
                                            5-LOAi(Loss of acknowledge with ONUi),6-LOAMi(Loss of PLOAM for ONUi),
                                            7-deactive ONT fails,8-deactive ONT success,9-reset ONT,10-re-register ONT,
                                            11-pop up fail,12-authentication fail,13-dying-gasp,255-invalid
                 hardware version(16bytes): the hardware version of the ONT
                "                       �"This table is used for the PPPoE testing.
                 The index of this table is a combination of ifIndex and hwXponOntIndex.
                "                       �"This table is used for the PPPoE testing.
                 The index of this entry is a combination of ifIndex and hwXponOntIndex.
                "                       p"The object indicates the type and ID of the ONT port.
                 port type(2 bytes) + port ID(2 bytes)."                       n"The object indicts the vlan ID, GPON : 0 - 4095; EPON : 1 - 4094; the value -1 indicts that the query fails."                       "The priority of vlan."                       "The user name of PPPoE test."                       "The password of PPPoE test."                      N"The protocol type of PPPoE test.
                 Options: 
                 1. chap (1)                - The protocol type of PPPoE test is chap.
                 2. pap (2)                 - The protocol type of PPPoE test is pap.
                 3. invalid (-1)            - Indicates that the query fails.
                "                      >"The object is used to start or stop the PPPoE test.
                 Options: 
                 1. start (1)                - Start the PPPoE test.
                 2. stop (2)                 - Stop the PPPoE test.
                 3. invalid (-1)             - Indicates that the query fails.
                "                       �"The hwXponOntControlTable is used to config the ONT.
                 The indexes of this table are ifIndex and hwXponOntIndex.
                "                       �"The hwXponOntControlTable is used to config the ONT.
                 The indexes of this entry are ifIndex and hwXponOntIndex.
                "                      
"This parameter is used to restore the ONT to factory configuration.
                 Options:
                 1. restore (1)       - Restore 
                 2. invalid (-1)      - Indicates that the query fails or no information is detected
                "                       �"This parameter is used to reset the ONT gracefully. 
                 Options:
                 1. gracefullyreset (1) - Indicates that the ONT resets gracefully
                 2. invalid (-1)        - Indicates the invalid value
                "                       �"This parameter is used to specify the maximum time to wait for the ONT to reset gracefully. 
                 The default maximum time for wait is 14400 seconds.
                 The invalid value is -1.
                "                       �"Delete the vas service of the ONT.
                 Options:
                 1. delete(1)                    - Delete the vas service of the ONT
                 2. invalid(-1)                  - invalid value
                 "                      "The hwGponOntPortMulticastVlanTranslationTable is used to config the multicast vlan translation of GPON ONT port.
                 The indexes of this table are ifindex, hwGponDeviceOntObjectIndex, hwGponOntifType, hwGponOntifPort, hwGponOntPortMulticastVlanIndex.
                "                      "The hwGponOntPortMulticastVlanTranslationTable is used to config the multicast vlan translation of GPON ONT port.
                 The indexes of this entry are ifindex, hwGponDeviceOntObjectIndex, hwGponOntifType, hwGponOntifPort, hwGponOntPortMulticastVlanIndex.
                "                       �"The ONT port type.
                 Options:
                 1. vdsl(37) -The ONT port type is vdsl
                 2. eth(47) -The ONT port type is eth
                "                       "The ONT port ID."                       a"The multicast vlan index of ONT port.
                Ranging from 1 to 4095.
               "                       g"The translation vlan of ONT port, when the GPON ONT port multicast vlan transmit mode is translation."                      F"This object indicates the multicast vlan transmit mode of GPON ONT port.
                  Options:
                  1. untag(1)          - Indicates that the GPON ONT port multicast vlan transmit mode is untag          
                  2. tag(2)            - Indicates that the GPON ONT port multicast vlan transmit mode is tag     
                  3. translation(3)    - Indicates that the GPON ONT port multicast vlan transmit mode is translation
                  4. invalid(-1)       - Indicates that the query fails or no information is detected
                 "                       �"Row status. This object is used to differentiate the
                 creation, modification and deletion operations for an object.
                "                       �"The hwXponOntVoipConfigTable is used to config the FTP Server and config the configuration files name.
                 The indexes of this table are ifindex and hwXponOntIndex.
                "                       �"The hwXponOntVoipConfigTable is used to config the FTP Server and config the configuration files name.
                 The indexes of this entry are ifindex and hwXponOntIndex.
                "                       "The server of used."                       "The configuration file name."                       e"This leaf set 1 when config the FTP Server and config the configuration file name.
               "                      �"Config tht ONT's voip service.
                 Options:
                 1. default(1)        - do not configure, ont default           
                 2. omci(2)           - OMCI
                 3. ftp(3)            - configuration file retrieval
                 4. tr069(4)          - tr069
                 The default value is default(1).                
                 "                       �"The hwXponOntConfigTable is used to config the ONT.
                 The indexes of this table are ifIndex and hwXponOntIndex.
                "                       �"The hwXponOntConfigTable is used to config the ONT.
                 The indexes of this entry are ifIndex and hwXponOntIndex.
                "                       9"The name of alarm policy profile which used by the ONT."                       B"The name of the power shedding profile that is bound to the ONT."                       W"This object indicates the name of the tr069 service profile that is bound to the ONT."                       �"The hwXponOntWanInfoTable is used to query the information about WAN ports.
                 The indexes of this table are ifIndex and hwXponOntIndex.
                "                       �"The hwXponOntWanInfoTable is used to query the information about WAN ports.
                 The indexes of this entry are ifIndex and hwXponOntIndex.
                "                       8"This object indicates the information about WAN ports."                      
@"This object indicates the information about WAN ports including IPv6 WAN.
                 This object consists of length, version, the number of WAN ports (n)
                 and n * WAN ports information. 
                 Principles to extend this object:
                 1. to add parameters, version should be upgraded, and the new parameters should 
                 be appended to the tail of each WAN information.
                 2. if the the version of OLT device or NMS is old, the OLT device or NMS
                 only have to parse the content they can recognize.   
                 The format of this object is as follows:
                 --------------------------------------------------------------------------------------
                 |field          |field length |                  field description                   |
                 --------------------------------------------------------------------------------------
                 |Total_Length   |2            |Length from Version to WAN_port_N_info.               |  
                 --------------------------------------------------------------------------------------
                 |Version        |1            |Version indicates the format of WAN port info, which  |                                               
                 |               |             |will be described detailly in SOI document.           |    
                 --------------------------------------------------------------------------------------
                 |WAN_port_num   |1            |Total number of WAN ports.                            | 
                 --------------------------------------------------------------------------------------
                 |WAN_port_1_info|x            | x = (Total_Length - 2)/WAN_port_num                  |  
                 --------------------------------------------------------------------------------------  
                 |WAN_port_2_info|x            |                                                      |  
                 --------------------------------------------------------------------------------------
                 |......         |x            |                                                      |  
                 --------------------------------------------------------------------------------------
                 |WAN_port_N_info|x            |                                                      |  
                 --------------------------------------------------------------------------------------
                "                       �"The hwGponPortControlTable is used to config the information about ports.
                 The index of this table is ifIndex.
                "                       �"The hwGponPortControlTable is used to config the information about ports.
                 The index of this entry is ifIndex.
                "                      "This object is used to configure the DBA bandwidth assignment mode.
             Options:
             1. maxbandwidthusage(1) - max bandwidth usage mode 
             2. minloopdelay(2)      - min loop delay mode
             3. manual(3)            - manual mode, this value is read-only             
             4. default(4)           - default mode, the same with global DBA assignment mode
             5. invalid(-1)          - Indicates that the query fails or no information is detected
            "                      Y"This object is used to configure the PON-ID switch.
             Options:
             1. enable(1)       - Indicates that the PON-ID switch is enabled
             2. disable(2)      - Indicates that the PON-ID switch is disabled
             3. invalid(-1)     - Indicates that the query fails or no information is detected
            "                      �"This object is used to configure the input mode of PON-ID identifier.
             Options:
             1. text(1)         - Indicates that the input mode of PON-ID identifier is text
             2. hex(2)          - Indicates that the input mode of PON-ID identifier is hex
             3. invalid(-1)     - Indicates that the query fails or no information is detected
            "                       G"This object is used to configure the PON-ID identifier.
            "                       �"The hwXponDeviceOntActiveAlarmTable is used to query the active alarm about ONT.
                 The indexes of this table are ifIndex and hwXponOntIndex.
                "                       �"The hwXponDeviceOntActiveAlarmTable is used to query the active alarm about ONT.
                 The indexes of this entry are ifIndex and hwXponOntIndex.
                "                       :"This object indicates the active alarm number about ONT."                       8"This object indicates the active alarm list about ONT."                       <"This object indicates active alarm number about ONT ports."                       >"This object indicates the active alarm list about ONT ports."                       "The ONT IP config table. This table is used to configure and query
 	             the IP configuration mode and IP address of an ONT.
                     The indexes of this table are ifIndex, hwXponOntIndex and hwXponOntIpIndex.
                    "                       "The ONT IP config table. This table is used to configure and query
 	             the IP configuration mode and IP address of an ONT.
                     The indexes of this entry are ifIndex, hwXponOntIndex and hwXponOntIpIndex.
                    "                       y"The IP index of the ont IP host.
                 range(GPON): 0-1
                 range(EPON): 0
                 "                      �"IP configuration mode.
                     Options:
                     1. dhcp(1)                 - Indicates the dynamic allocation mode
                     2. static(2)               - Indicates the static allocation mode
                     3. nonOLTconfiguration(3)  - Indicates the nonOLTconfiguration mode(IP configuration mode is not set in the OLT)
                     4. pppoe(4)                - Indicates the pppoe allocation mode
                     "                       >"The VLAN of ONT IP host.
                     range: 0-4095"                       >"The priority of ONT IP host. range: 0-7, 0xfe: dscp-mapping."                       O"The default priority for dscp-mapping policy.
                    range: 0-7"                       B"The dscp profile index of the ONT ip host, and the range is 1~50"                       "ONT ip address."                       "Subnet mask."                       "The default network gateway."                       "The active DNS address."                       "The slave DNS address."                      l"The input method of pppoe user account.
                    Options:
                    1. oltcfg(1)              - Indicates the user account is input on the ont
                    2. ontcfg(2)              - Indicates the user account is input on the olt
                    3. invalid(-1)            - Indicates that the query fails
                   "                       ,"The username of the pppoe allocation mode."                       ,"The password of the pppoe allocation mode."                       �"This object is used for resetting the ip host in the DHCP mode.
                  Options:
                   1. reset(1)            - DHCP reset in the DHCP mode
                   2. invalid(-1)         - invalid 
                   "                       �"The hwXponOntIpconfigRowStatus is used to create a new row
                   or to modify or delete an existing row in this table.
                  "                       �"The ont info table. This table is used to query capability of the ont.
                 The indexes of this table are ifIndex and hwXponOntIndex.
                "                       �"The ont info table. This table is used to query capability of the ont.
                 The indexes of this entry are ifIndex and hwXponOntIndex.
                "                      d"This parameter indicates the voip configuration mode that the ONT supports.
                 This BITS structure can report the following status:
                 1.  omcioam(0)                  - This bit position positively reports that the ONT supports omci/oam configuration mode
                 2.  configurationFile(ftp)(1)   - This bit position positively reports that the ONT supports configurationFile(ftp) configuration mode
                 3.  tr069(2)                    - This bit position positively reports that the ONT supports tr069 configuration mode                 
                 "                      �"This parameter indicates the voip signal protocol that the ONT supports.
                 This BITS structure can report the following status:
                 1.  sip(0)          - This bit position positively reports that the ONT supports SIP Protocol
                 2.  h248(1)         - This bit position positively reports that the ONT supports H.248 Protocol
                 3.  mgcp(2)         - This bit position positively reports that the ONT supports MGCP Protocol
                 "                       �"The hwXponOntPowerSheddingStatusQueryTable is used to query the power shedding status of the ONT.
                 The indexes of this table are ifIndex and hwXponOntIndex.
                "                       �"The hwXponOntPowerSheddingStatusQueryTable is used to query the power shedding status of the ONT.
                 The indexes of this entry are ifIndex and hwXponOntIndex.
                "                      q"Binary indication of power shedding status for each shedding class.
                 The ONU sets each bit to 1 when power shedding is active, and clears it to 0 when the service is restored.
                 bit0:      Data class
		         bit1:      Voice class
		         bit2:      Video overlay class
		         bit3:      Video return class
		         bit4:      DSL class
		         bit5:      ATM class
		         bit6:      CES class
		         bit7:      Frame class
		         bit8:      Sdh-sonet class
		         bit[15,9]: Reserved and set to 0
		         others:    Unconcern  
                "                       �"The ont capability table. This table is used to query capability of the gpon ont.
                 The indexes of this table are ifIndex and hwGponDeviceOntObjIndex.
                "                       �"The ont capability table. This table is used to query capability of the gpon ont.
                 The indexes of this entry are ifIndex and hwGponDeviceOntObjIndex.
                "                       "The ONT equipment ID."                       h"This object indicates the number of uplink PON ports.
                -1 indicates the invalid value."                       b"This object indicates the number of POTS ports.
                -1 indicates the invalid value."                       a"This object indicates the number of ETH ports.
                -1 indicates the invalid value."                       a"This object indicates the number of TDM ports.
                -1 indicates the invalid value."                       b"This object indicates the number of MOCA ports.
                -1 indicates the invalid value."                       f"This object indicates the number of CATV ANI ports.
                -1 indicates the invalid value."                       f"This object indicates the number of CATV UNI ports.
                -1 indicates the invalid value."                       a"This object indicates the number of GEM ports.
                -1 indicates the invalid value."                      x"The mode of IP configuration.
                 Options:
                 1. notsupport(1)          - Not support
                 2. support(2)             - Support
                 3. dhcp(3)                - DHCP mode
                 4. static(4)              - Static mode
                 5. invalid(-1)            - Indicates the invalid value
                "                       <"This object indicates the number of the traffic scheduler."                       _"This object indicates the number of T-CONTs.
                -1 indicates the invalid value."                      �"The type of the ONT flow control.
                 Options:
                 1. pq(1)                - PQ 
                 2. gemportcar(2)        - GEMPORT CAR
                 3. flowcar(3)           - FLOW CAR
                 4. gemportcarandpq(4)   - GEMPORT CAR and PQ
                 5. gemportcarorpq(5)    - GEMPORT CAR or PQ
                 6. invalid(-1)          - Indicates the invalid value
                "                      S"This object indicates the ONT type.
                 Options:
                 1. sfu(1)            - The ONT type is SFU 
                 2. hgu(2)            - The ONT type is HGU
                 3. sbu(3)            - The ONT type is SBU
                 4. cbu(4)            - The ONT type is CBU
                 5. mdu(5)            - The ONT type is MDU
                 6. mtu(6)            - The ONT type is MTU    
                 7. sfu-1fe-1pots(7)  - The ONT type is SFU(1FE+1POTS) 
                 8. invalid(-1)       - Indicates the invalid value
                "                      D"This object indicates if the ONT supports the power control.
                 Options:
                 1. notsupport(1)            - The ONT doesn't support the power control 
                 2. support(2)               - The ONT supports the power control
                 3. txrxcoupling(3)          - The ONT supports the power control.The TX and RX are coupling
                 4. txrxindependent(4)       - The ONT supports the power control.The TX and RX are independent
                 5. invalid(-1)              - Indicates the invalid value
                "                      �"This object indicates if the ONT supports Extended OMCI message format.
                 Options:
                 1. notsupport(1)                         - The ONT doesn't support the Extended OMCI message format 
                 2. support(2)                            - The ONT supports the Extended OMCI message format
                 3. invalid(-1)                           - Indicates the invalid value
                "                       4"This object indicates the number of PQs in T-CONT."                       �"This object indicates if the ONT supports the type of ETHOAM by each bit.
                 The ONT sets each bit to 1 when the ONT supports the type of ETHOAM.
                 bit0:      Y.1731
		 bit[31,1]: Reserved and set to 0
		"                       b"This object indicates the number of VDSL ports.
                -1 indicates the invalid value."                       r"This table is used for the OTDR testing.
                 The index of this table is ifIndex.
                "                       r"This table is used for the OTDR testing.
                 The index of this entry is ifIndex.
                "                      �"OTDR test operation of a port.
                 Options: 
                 1. start(1)                - Indicates that the OTDR test is started on the port.
                 2. stop(2)                 - Indicates that the OTDR test is stopped on the port.
                 3. invalid(-1)             - Indicates that the query fails or no information is detected.
                "                      �"The state of OTDR test.
                 Options: 
                 1. untested (1)                - Indicates that the OTDR test is not performed for the port.
                 2. testing (2)                 - Indicates that the OTDR test is being performed for the port.
                 3. testFinish (3)              - Indicates that the OTDR test is complete.
                "                      "This object indicates the result of OTDR test.
                 Options:
                 1. Success(1)                               - Indicates that the OTDR test successfully.
                 2. FtpFail(2)                               - Indicates that the result file of OTDR test upload failed.
                 3. BoardFail(3)                             - Indicates that the board is faulty during the test.
                 4. OpticalModuleFail(4)                     - Indicates that the optical module is faulty during the test.
                 5. PortShutdown(5)                          - Indicates that the port is shutdown during the test.
                 6. SystemSwitchOver(6)                      - Indicates that the system switchover occurs during the test.
                 7. unknow(240)                              - Indicates that an unknown error occurs during the test.
                 8. invalid(-1)                              - Indicates that the query fails or no information is detected.
                "                      �"Test wave for the OTDR test.
                 Options:
                 1.upWave(1)                   - Indicates that the upstream wavelength is selected for the OTDR test.
                 2.downWave(2)                 - Indicates that the downstream wavelength is selected for the OTDR test.
                 3.all(3)                      - Indicates that both the upstream and downstream wavelengths are selected for the OTDR test.
                 4.invalid(-1)                 - Indicates that the query fails or no information is detected.
                 Currently, only the downstream wavelength can be selected for the OTDR test.
                 Default:downWave(2).
                "                       �"Pulse width of test signals.
                 Unit: 0.01ns
                 The value of this node can be -1 indicates that query fails or no information is detected.
                 Default:2500.
                "                      T"Clock rate of the OTDR test.
                 Options:
                 1.fortyMHz(1)                      - Indicates that the clock rate of the OTDR test is 40 MHz, at which, the system works in the low power consumption mode.
                 2.eightyMHz(2)                     - Indicates that the clock rate of the OTDR test is 80 MHz, at which, the system works in the high resolution mode.
                 3.invalid(-1)                      - Indicates that the query fails or no information is detected.
                 The clock rate is determined by hardware.
                "                      �"Type of sent OTDR test signals.
                 Options: 
                 1.singlePulse(1)                       - Indicates single pulse
                 2.singlePnSequence(2)                  - Indicates single PN sequence.
                 3.singleGrayCodeSequence(3)            - Indicates single gray code sequence.
                 4.consecutivePnSequence(4)             - Indicates consecutive PN sequence.
                 5.consecutiveGrayCodeSequence(5)       - Indicates consecutive gray code sequence.
                 6.invalid(-1)                          - Indicates that the query fails or no information is detected.
                 Default: consecutiveGrayCodeSequence(5).
                "                      f"Sampling frequency of the OTDR test; Fclk indicates the clock frequency.
                 Options: 
                 1.doubleFclk(1)                   - Indicates that the sampling frequency of OTDR test is 2 x Fclk.
                 2.fclk(2)                         - Indicates that the sampling frequency of OTDR test is Fclk.
                 3.halfFclk(3)                     - Indicates that the sampling frequency of OTDR test is 1/2 x Fclk.
                 4.quarterFclk(4)                  - Indicates that the sampling frequency of OTDR test is 1/4 x Fclk.
                 5.eighthFclk(5)                   - Indicates that the sampling frequency of OTDR test is 1/8 x Fclk.
                 6.invalid(-1)                     - Indicates that the query fails or no information is detected.
                 Default:quarterFclk(4).
                "                      �"Enable status of the OTDR FIR filter.
                 Options: 
                 1.enable(1)                   - Indicates that the OTDR FIR filter is enabled.
                 2.disable(2)                  - Indicates that the OTDR FIR filter is disabled.
                 3.invalid(-1)                 - Indicates that the query fails or no information is detected.
                 Default:enable(1).
                "                      "Parameter configuration principle of the FIR filter.
                 Options: 
                 1.systemDefault(1)                   - Indicates that the system default parameters are used for the FIR filter.
                 2.issuedParameters(2)                - Indicates that the issued parameters are used for the FIR filter.
                 3.invalid(-1)                        - Indicates that the query fails or no information is detected.
                 Default:systemDefault(1).
                "                      �"Parameters of the FIR filter.
                 If the parameter of hwXponDeviceOtdrTestFilterMode is set to the issued parameter,
                 this parameter is forwarded to the OTDR chip.
                 The first character of this node represents the number of parameters. 
                 Starting from the second character, these characters represent parameters.
                 Every four characters (32 bits) from left to right represent a parameter.
                 If a parameter is set with invalid value FFFFFFFF, its default value will be issued. Default values of parameters are as follows: 
                 0x00C5AC58,0x0208F564,0x049C37F2,0x090BF767,0x0F72A0E4,0x17065730,0x1E03A4E2,0x224243C2.
                "                      �"Average sampling times for OTDR test.
                 Options: 
                 1.thirtySeconds(1)                 - Indicates that the OTDR test is executed every 30 seconds.               
                 2.oneMinute(2)                     - Indicates that the OTDR test is executed every 1 minute.
                 3.twoMinutes(3)                    - Indicates that the OTDR test is executed every 2 minutes.
                 4.threeeMinutes(4)                 - Indicates that the OTDR test is executed every 3 minutes.
                 5.sixMinutes(5)                    - Indicates that the OTDR test is executed every 6 minutes.
                 6.thirtyMinutes(6)                 - Indicates that the OTDR test is executed every 30 minutes.
                 7.invalid(-1)                      - Indicates that the query fails or no information is detected.
                 Only test time is issued for this node, and the test times are calculated by the board. 
                 The board queries the test status of the optical module after the test time elapses.
                 If the test is complete, the board reads the data. 
                 Otherwise, the board will retry to query the test status of the optical module for three times.
                 If the test is always not complete, the test will be canceled, and a failure message will be returned.
                 Default:thirtySeconds(1).
                "                      r"Length of the optical fiber to be tested.
                 Options: 
                 1.(1)                  - Indicates that the length of the optical fiber to be tested is 5 km.
                 2.(2)                  - Indicates that the length of the optical fiber to be tested is 10 km.
                 3.(3)                  - Indicates that the length of the optical fiber to be tested is 20 km.
                 4.(4)                  - Indicates that the length of the optical fiber to be tested is 30 km.
                 5.(5)                  - Indicates that the length of the optical fiber to be tested is 40 km.
                 6.(6)                  - Indicates that the length of the optical fiber to be tested is 80 km.
                 7.(-1)                 - Indicates that the query fails or no information is detected.
                 The length of the optical fiber to be tested is displayed as the value selected by the user. 
                 However, the actual length equals the value selected by the user plus 10 km in background processing.
                 Default:4(30km).
                "                      |"Modulation depth of downstream test signals
                 Currently, this value can be set to 10, 20, 30, 40, 50 and 100.
                 which indicates that the modulation depth is 10%, 20%, 30%, 40%, 50% and 100%.
                 The vlaue of this node can be -1 indicates that query fails or no information is detected.
                 Default:10
                "                      z"Upstream test mode.
                 Options: 
                 1.onlineTest(1)                   - Indicates that the upstream test mode is online test.
                 2.quickTest(2)                    - Indicates that the upstream test mode is quick test.
                 3.invalid(-1)                     - Indicates that the query fails or no information is detected.
                 Based on the selected test mode, the OLT can determine, 
                 work out the regularity of sending Trig signals and configure the optical module.
                 Currently, this node cannot be configured.
                "                       �"The destination IP address of the OTDR.
                 The vlaue of this node can be FFFFFFFF indicates that query fails or no information is detected.
                "                      "Transfer protocol of test result.
                 Options: 
                 1.ftp(1)                   - Indicates that the test result file transfer mode is ftp.
                 2.tftp(2)                  - Indicates that the test result file transfer mode is tftp.
                 3.sftp(3)                  - Indicates that the test result file transfer mode is sftp.
                 4.invalid(-1)              - Indicates that the query fails or no information is detected.
                 Default:ftp(1).
                "                       /"The user name of OTDR test.
                "                       ."The password of OTDR test.
                "                       /"The file path of OTDR test.
                "                      �"Value of the FIR filter order.
                 Options: 
                 1.fifteenOrder(1)                   - Indicates that the FIR filter order is fifteen.
                 2.sixteenOrder(2)                   - Indicates that the FIR filter order is sixteen.
                 3.invalid(-1)                       - Indicates that the query fails or no information is detected.
                 Default:fifteenOrder(1).
                "                       �"This table supports the query of the information about the optical transceiver.
 	         The index of this table is ifIndex.
 	        "                       �"This table supports the query of the information about the optical transceiver.
 	         The index of this entry is ifIndex.
                "                       �"Upper alarm threshold of the temperature. 
                 Unit: 0.000001 C(centigrade)
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Lower alarm threshold of the temperature. 
                 Unit: 0.000001 C(centigrade) 
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Upper warning threshold of the temperature. 
                 Unit: 0.000001 C(centigrade) 
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Lower warning threshold of the temperature. 
                 Unit: 0.000001 C(centigrade)
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Upper alarm threshold of the voltage. 
                 Unit: 0.000001V
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Lower alarm threshold of the voltage. 
                 Unit: 0.000001V
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Upper warning threshold of the voltage.
                 Unit: 0.000001V
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Lower warning threshold of the voltage. 
                 Unit: 0.000001V
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Upper alarm threshold of the bias current. 
                 Unit: 0.000001A 
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       �"Lower alarm threshold of the bias current. 
                 Unit: 0.000001A
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       �"Upper warning threshold of the bias current. 
                 Unit: 0.000001A
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       �"Lower warning threshold of the bias current. 
                 Unit: 0.000001A 
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       �"Upper alarm threshold of the Tx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Lower alarm threshold of the Tx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Upper warning threshold of the Tx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Lower warning threshold of the Tx power.
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Upper alarm threshold of the Rx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected                 
                "                       �"Lower alarm threshold of the Rx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected                 
                "                       �"Upper warning threshold of the Rx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected                 
                "                       �"Lower warning threshold of the Rx power. 
                 Unit: 0.000001dBm   
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected                 
                "                       �"Current of the 10G EPON optical transceiver. 
                 Unit: 0.000001A
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       �"Upper alarm threshold of the 10G EPON optical transceiver bias current. 
                 Unit: 0.000001A 
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       �"Lower alarm threshold of the 10G EPON optical transceiver bias current. 
                 Unit: 0.000001A
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       "Upper warning threshold of the 10G EPON optical transceiver bias current. 
                 Unit: 0.000001A
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                      "Lower warning threshold of the 10G EPON optical transceiver bias current. 
                 Unit: 0.000001A 
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       �"Tx optical power of the 10G EPON optical transceiver. 
                 Unit: 0.01dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                      "Upper alarm threshold of the 10G EPON optical transceiver Tx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                      "Lower alarm threshold of the 10G EPON optical transceiver Tx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                      "Upper warning threshold of the 10G EPON optical transceiver Tx power. 
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                      "Lower warning threshold of the 10G EPON optical transceiver Tx power.
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Upper AlarmThreshold threshold of the CATV Rx power.
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                       �"Lower AlarmThreshold threshold of the CATV Rx power.
                 Unit: 0.000001dBm
                 Options:
                 1. invalid(0x7FFFFFFF)      - Indicates that the query fails or no information is detected
                "                      �"Options:
             1. gpon(1)          - GPON
             2. epon(2)          - EPON
             3. epon10g(3)       - 10G EPON
             4. gpon10g(4)       - 10G GPON
             5. wdmpon(5)        - WDM PON
             6. hybridpon(6)     - hybrid PON
             7. gponepon(7)      - GPON/EPON 
             8. unknown(8)       - Unknown
             9. invalid(-1)      - Indicates that the query fails or no information is detected
            "                      �"Options:
             1.  classbplus(1)              - CLASS B+
             2.  classcplus(2)              - CLASS C+
             3.  classb(3)                  - CLASS B
             4.  n2a(33)                    - N2a  
             5.  n2b(34)                    - N2b
             6.  n1(35)                     - N1
             7.  px20(65)                   - PX20
             8.  px20plus(66)               - PX20+
             9.  pr30(97)                   - PR30
             10. pr20(98)                   - PR20
             11. prx30(99)                  - PRX30
             12. prx20(100)                 - PRX20
             13. classbPlusAndPx20Plus(129) - GPON CLASS B+/EPON PX20+
             14. classbAndPx20(130)         - GPON CLASS B/EPON PX20
             15. unknown(145)               - Unknown
             16. invalid(-1)                - Indicates that the query fails or no information is detected
            "                       �"This object indicates the precision of optical power. 
                 Unit: 0.1dBm
                 Options:
                 1. invalid(-1)      - Indicates that the query fails or no information is detected
                "                      �"Options:
             1. sff2x5(1)               - SFF 2x5
             2. sff2x10(2)              - SFF 2x10
             3. sfp(3)                  - SFP
             4. xfp(4)                  - XFP
             5. lxfp(5)                 - LXFP
             6. bosaonboard(6)          - BOSA ON BOARD  
             7. unknown(7)              - Unknown
             8. invalid(-1)             - Indicates that the query fails or no information is detected
            "                       ("This object indicates the part number."                      �"This object indicates the application scenario of the optical transceiver.
                 Options:
                 1. olt(1)                 - OLT
                 2. onu(3)                 - ONU
                 3. catvtriplex(4)         - CATV TriPlex
                 4. unknown(5)             - Unknown
                 5. invalid(-1)            - Indicates that the query fails or no information is detected
                "                      "The xpon optics parameter range table. This table is used to query range of the optics parameter.
                 The indexes of this table are hwXponOpticalModuleType, hwXponOpticalModuleSubType, hwXponOpticalModuleOltOntType, and hwXponOpticalModuleBandwidthType.
                "                      "The xpon optics parameter range table. This table is used to query range of the optics parameter.
                 The indexes of this entry are hwXponOpticalModuleType, hwXponOpticalModuleSubType, hwXponOpticalModuleOltOntType, and hwXponOpticalModuleBandwidthType.
                "                      "This object indicates the xpon optical module type.
                 Options:
                 1. gpon(2)                - gpon type.
                 2. epon(3)                - epon type.
                 3. tengepon(4)            - 10gepon type.
                 4. xgpon(5)               - xgpon type.
                 5. wdmpon(6)              - wdmpon type.
                 6. mixpon(7)              - mixpon type.
                 7. gponepondoublemode(8)  - gponepondoublemode type.
                "                      �"The xpon optical module sub type.
                GPON:0x2 - CLASS B+,
                     0x3 - CLASS C+,
                     0x4 - CLASS B,
                EPON:0x2 - PX20,
                     0x3 - PX20+,
                10GEPON:0x2 - PR30,
                        0x3 - PR20,
                        0x4 - PRX30,
                        0x5 - PRX20,
                XG-PON:0x2 to 0x5 - reserved,
                       0x6        - N2a,
                       0x7        - N2b,
                       0x8        - N1,
                Gpon and Epon double mode: 0x2 - double mode, compatible with GPON CLASS B+ and EPON PX20+."                       �"This object indicates the xpon optical module olt ont type.
                 Options:
                 1. olt(2)                 - olt type.
                 2. onu(4)                 - onu type.
                "                       �"This object indicates the xpon optical module bandwidth type.
                 Options:
                 1. bw1g(1)               - bw1g type.
                 2. bw10g(2)              - bw10g type.
                "                       J"The xpon optical module Rx power maximum valid value, units of 0.01 dBm."                       J"The xpon optical module Rx power minimum valid value, units of 0.01 dBm."                      "This table is used to configure the interoperability mode of the ONT.
                 The indexes of this table are hwGponInteroperModeOntVenderIDInfoIndex, hwGponInteroperModeOntEquipmentIDInfoIndex and hwGponInteroperModeOntSoftwareVersionInfoIndex.
                "                      "This table is used to configure the interoperability mode of the ONT.
                 The indexes of this entry are hwGponInteroperModeOntVenderIDInfoIndex, hwGponInteroperModeOntEquipmentIDInfoIndex and hwGponInteroperModeOntSoftwareVersionInfoIndex.
                "                       C"This object indicates the vender ID of the ONT.
                "                       �"This object indicates the equipment ID of the ONT.
                 0 indicates that the equipment ID of the ONT is not specified.
                "                       �"This object indicates the software version of the ONT.
                 0 indicates that the software version of the ONT is not specified.
                "                      �"The switch mode of gpon ONT interoperability.
                 Options:
                 1. itu-t(1)      - The switch mode of gpon ONT interoperability is itu-t
                 2. ctc(2)        - The switch mode of gpon ONT interoperability is ctc
                 3. eric-v1(3)       - The switch mode of gpon ONT interoperability is eric-v1
                 4. eric-v2(4)   - The switch mode of gpon ONT interoperability is eric-v2
                 5. itu-t-g984(5)- The switch mode of gpon ONT interoperability is itu-t-g984
                 6. itu-t-g988(6)- The switch mode of gpon ONT interoperability is itu-t-g988
                "                      :"The switch mode of gpon ONT multicast authentication.
                 Options:
                 1. ont-control(1)  - The switch mode of gpon ONT multicast authentication is ont-control
                 2. olt-control(2)  - The switch mode of gpon ONT multicast authentication is olt-control
                "                      }"The active mode of gpon ONT interoperability mode.
                 Options:
                 1. immediate(1)     - Indicates that the ONT takes effect immediately
                 2. next-startup(2)  - Indicates that the ONT takes effect after next startup
                 3. invalid(-1)      - Indicates that the query fails or no information is detected
                "                       �"The hwGponInteroperModeConfigRowStatus is used to create a new row
                 or delete an existing row in this table.
                "                       �"This table is used to query the information about the optical transceiver.
                 The index of this table is ifIndex.
                "                       �"This table is used to query the information about the optical transceiver.
                 The index of this entry is ifIndex.
                "                      A"This object indicates the type of rate select functionality.
                 Options:
                 1. unspecified (1)                    - Unspecified
                 2. rateId4g2g1gRateSelectAs0As1(2)    - 4/2/1G Rate_Select & AS0/AS1
                 3. rateId8g4g2gRxRateSelect (3)       - 8/4/2G Rx Rate_Select only
                 4. rateId8g4g2gTxRateSelect (4)       - 8/4/2G Tx Rate_Select only
                 5. rateId8g4g2gRxTxRateSelect (5)     - 8/4/2G Independent Rx & Tx Rate_select
                 6. rateId16g8g4gRxRateSelect (6)      - 16/8/4G Rx Rate_select only
                 7. rateId16g8g4gRxTxRateSelect (7)    - 16/8/4G Independent Rx, Tx Rate_select
                 8. invalid (-1)                       - Indicates that the query fails or no information is detected
                "                       U"This object indicates the link length supported for 50 um OM3 fiber, units of 10 m."                      9"This object indicates the CC_BASE match state.
                 Options:
                 1. correct (1)             - Correct
                 2. incorrect(2)            - Incorrect
                 3. invalid (-1)            - Indicates that the query fails or no information is detected
                "                      8"This object indicates the CC_EXT match state.
                 Options:
                 1. correct (1)             - Correct
                 2. incorrect(2)            - Incorrect
                 3. invalid (-1)            - Indicates that the query fails or no information is detected
                "                       �"This table is used to configure the service parameter of the ONT port.
                 The indexes of this table are ifIndex, hwXponOntIndex, hwGponOntifType and hwGponOntifPort.
                "                       �"This table is used to configure the service parameter of the ONT port.
                 The indexes of this entry are ifIndex, hwXponOntIndex, hwGponOntifType and hwGponOntifPort.
                "                       F"This object indicates the native VLAN of the port.
                "                       O"This object indicates the native VLAN priority of the port.
                "                      �"The object is used to enable or disable the switch of ONT port IGMP forward mode.
                Options:
                1. disable(1)     - Disable the switch of ONT port IGMP forward mode
                2. enable(2)      - Enable the switch of ONT port IGMP forward mode
                3. invalid(-1)    - Indicates that the query fails or no information is detected
                "                       �"The hwXponDeviceOntNoAuthConfigTable is used to configure the type of ONT to be no authentication.
                 The indexs of this table are hwXponDeviceOntAccessType and hwXponDeviceOntModel.
                "                       �"The hwXponDeviceOntNoAuthConfigTable is used to configure the type of ONT to be no authentication.
                 The indexs of this table are hwXponDeviceOntAccessType and hwXponDeviceOntModel.
                "                       �"This object indicates the ONT access type.
                 Options:
                 1. gpon(1) - The ONT access type is GPON
                 2. epon(2) - The ONT access type is EPON
                "                       &"This object indicates the ONT model."                       _"This object is used to create a new row or to modify or delete an existing row in this table."                           �"VOIP perform monitor statistic table. This table is used to query Pots
                 port statistic.
                 The indexes of this table are ifIndex, hwGponDeviceOntObjIndex and
                 hwGponDeviceOntPhyIndex.
                "                       �"VOIP perform monitor statistic table. This table is used to query Pots
                 port statistic.
                 The indexes of this entry are ifIndex, hwGponDeviceOntObjIndex and
                 hwGponDeviceOntPhyIndex.
                "                       "Port index of the ONT."                       %"The statistic of RTP packet errors."                       0"The statistic of the fraction of packets lost."                       ="The maximum jitter identified during the measured interval."                       ("The maximum time between RTCP packets."                       :"The statistic of times the reassembly buffer underflows."                       9"The statistic of times the reassembly buffer overflows."                       '"The statistic of call setup failures."                       L"The longest duration of a single call setup detected during this interval."                       9"The statistic of calls that were terminated with cause."                       B"The statistic of analog port releases without dialling detected."                       F"The longest period of a single off-hook detected on the analog port."                       �"Ont performance monitor statistic table. This table is used to query ont
                 statistic in the current 15 minutes. The indexes of this table are 
                 ifIndex and hwXponOntIndex.
                "                       �"Ont performance monitor statistic table. This table is used to query ont 
                 statistic in the current 15 minutes. The indexes of this entry are 
                 ifIndex and hwXponOntIndex.
                "                       e"Count of bytes that were corrected by 
                the FEC function in the current 15 minutes."                       j"Count of code words that were corrected by the FEC 
                function in the current 15 minutes."                       n"Count of code words that were not corrected by the FEC function 
                in the current 15 minutes."                       ?"Count of total received code words in the current 15 minutes."                       r"Count of seconds in the current 15 minutes, when there 
                was a forward error correction anomaly."                       1"Count of rangingtime in the current 15 minutes."                       ="Count of transmitted XGEM frames in the current 15 minutes."                       5"Count of XGEM key errors in the current 15 minutes."                       4"Count of XGEM hec error in the current 15 minutes."                       �"Ont performance monitor statistic table. This table is used to query ont
                 statistic. The indexes of this table are ifIndex, hwXponOntIndex and 
                 hwGponOntPerfHis15MinNumber.
                "                       �"Ont performance monitor statistic table. This table is used to query ont 
                 statistic. The indexes of this entry are ifIndex,hwXponOntIndex and 
                 hwGponOntPerfHis15MinNumber.
                "                       o"Performance data interval number 1 is the most recent previous 
                15 minutes interval. Rang:1."                       \"Count of bytes that were corrected by 
                the FEC function in this interval."                       �"Count of code words that were corrected by the FEC 
                 function in this interval.
                 -1 indicates the invalid value.
                "                       �"Count of code words that were not corrected by the FEC 
                function in this interval.
                -1 indicates the invalid value.
                "                       z"Count of total received code words in this interval.
                 -1 indicates the invalid value.
                "                       m"Count of seconds during this interval, when there 
                was a forward error correction anomaly."                       ("Count of rangingtime in this interval."                       4"Count of transmitted XGEM frames in this interval."                       ,"Count of XGEM key errors in this interval."                       +"Count of XGEM hec error in this interval."                       �"The ONT IPHOST port statistics table.
                 The index of this table is a combination of ifIndex,
                 hwGponDeviceOntObjIndex.
                "                       �"The ONT IPHOST port statistics table.
                 The index of this entry is a combination of ifIndex,
                 hwGponDeviceOntObjIndex.
                "                       +"This object indicates the received bytes."                       ,"This object indicates the received frames."                       6"This object indicates the received multicast frames."                       6"This object indicates the received broadcast frames."                       4"This object indicates the received 64-octet frames"                       8"This object indicates the received 65~127-octet frames"                       9"This object indicates the received 128~255-octet frames"                       :"This object indicates the received 256~511-octet frames."                       ;"This object indicates the received 512~1023-octet frames."                       <"This object indicates the received 1024~1518-octet frames."                       5"This object indicates the received oversize frames."                       6"This object indicates the received undersize frames."                       6"This object indicates the received FCS error frames."                       1"This object indicates the received drop events."                       '"This object indicates the sent bytes."                       ("This object indicates the sent frames."                       2"This object indicates the sent multicast frames."                       2"This object indicates the sent broadcast frames."                       0"This object indicates the sent 64-octet frames"                       4"This object indicates the sent 65~127-octet frames"                       5"This object indicates the sent 128~255-octet frames"                       6"This object indicates the sent 256~511-octet frames."                       7"This object indicates the sent 512~1023-octet frames."                       8"This object indicates the sent 1024~1518-octet frames."                       1"This object indicates the sent oversize frames."                       -"This object indicates the sent drop events."                      "This object is used to clear the statistics.
                 Options:
                 1. clear(1)                     - Indicates that clear the statistics
                 2. invalid(-1)                 - Indicates that the query fails or no information is detected
		"                       �"Ont performance monitor statistic table. This table is used to query ont 
                 ever before statistic. 
                 The indexes of this table are a combination of ifIndex and hwXponOntIndex.
                "                       �"Ont performance monitor statistic table. This table is used to query ont 
                 ever before statistic. 
                 The indexes of this entry are a combination of ifIndex and hwXponOntIndex.
                "                       R"Count of bytes that were corrected by 
            the FEC function ever before"                       \"Count of code words that were corrected by the FEC 
                function ever before."                       `"Count of code words that were not corrected by the FEC 
                function ever before."                       1"Count of total received code words ever before."                       d"Count of seconds ever before, when there 
                was a forward error correction anomaly."                       #"Count of rangingtime ever before."                       /"Count of transmitted XGEM frames ever before."                       '"Count of XGEM key errors ever before."                       &"Count of XGEM hec error ever before."                       |"This table is used to query the information about the optical transceiver.
 	         The index of this table is ifIndex."                       �"This table is used to query the information about the optical transceiver.
 	         The index of this entry is ifIndex.
                "                      "This object indicates the type of serial transceiver.
               Options:
               1. unknown(0)                      - Unknown or unspecified
               2. gbic(1)                         - GBIC
               3. solderedToMotherBoard(2)        - Module soldered to motherboard
               4. sfp(3)                          - SFP
               5. pin300XBI(4)                    - PIN300XBI
               6. xenpak(5)                       - XENPAK
               7. xfp(6)                          - XFP
               8. xff(7)                          - XFF
               9. xfep(8)                         - XFEP
               10. xpak(9)                        - XPAK
               11. x2(10)                         - X2
               12. invalid(-1)                    - Indicates that the query fails or no information is detected
               "                      o"This object indicates the extclei code.
                 Options:
                 1. nonExtCLEICode(0)                - No CLEI code present in Table 02h
                 2. extCLEICode(1)                   - CLEI code present in Table 02h 
                 3. invalid(-1)                      - Indicates that the query fails or no information is detected
		"                      f"This object indicates the txref clock.
             Options:
             1. nonExtTXRefClock(0)              - TX Ref Clock Input Not Required
             2. extTXRefClock(1)                 - TX Ref Clock Input Required 
             3. invalid(-1)                      - Indicates that the query fails or no information is detected		
             "                      T"This object indicates the CDR function.
             Options:
             1. nonExtCDRFunc(0)               - Non-CDR version of XFP
             2. extCDRFunc(1)                  - Module with CDR function 
             3. invalid(-1)                    - Indicates that the query fails or no information is detected		
            "                      L"This object indicates the power level.
             Options:
             1. extPowerLevel1(0)               - Power Level 1 Module (1.5 W max. power dissipation.)
             2. extPowerLevel2(1)               - Power Level 2 Module (2.5W Max) 
             3. extPowerLevel3(2)               - Power Level 3 Module (3.5W max. power dissipation.)
             4. extPowerLevel4(3)               - Power Level 4 Module (>3.5W max. power dissipation.) 
             5. invalid(-1)                     - Indicates that the query fails or no information is detected		
             "                      9"
               This object indicates the code for connector type.
               Options:
               1.  unknown(1)                - Unknown
               2.  sc(2)                     - SC
               3.  style1Connector(3)        - Fibre Channel Style 1 copper connector
               4.  style2Connector(4)        - Fibre Channel Style 2 copper connector
               5.  bnctnc(5)                 - BNC/TNC
               6.  channelCoaxial(6)         - Fibre Channel coaxial headers
               7.  fiberJack(7)              - FiberJack
               8.  lc(8)                     - LC
               9.  mtrj(9)                   - MT-RJ
               10. mu(10)                    - MU
               11. sg(11)                    - SG
               12. opticalPigtail(12)        - Optical pigtail
               13. hssdc(13)                 - HSSDC II
               14. copperPigtail(14)         - Copper Pigtail
               15. invalid(-1)               - Indicates that the query fails or no information is detected
            "                      J"This object indicates the EncodingRZ.
             Options:
             1. nonEncodingRZ(0)             - Encoding Don't Support RZ
             2. encodingRZ(1)                - Encoding Support RZ 
             3. invalid(-1)                  - Indicates that the query fails or no information is detected		
            "                      >"This object indicates the EncodingNRZ.
             Options:
             1. nonEncodingNRZ(0)       - Encoding Don't Support NRZ
             2. encodingNRZ(1)          - Encoding Support NRZ 
             3. invalid(-1)             - Indicates that the query fails or no information is detected		
            "                      R"This object indicates the Encoding8B10B.
             Options:
             1. nonEncoding8B10B(0)          - Encoding Don't Support 8B10B
             2. encoding8B10B(1)             - Encoding Support 8B10B
             3. invalid(-1)                  - Indicates that the query fails or no information is detected		
            "                      O"This object indicates the Encoding64B.
             Options:
             1. nonEncoding64B(0)          - Encoding Don't Support 64B/66B
             2. encoding64B(1)             - Encoding Support 64B/66B 
             3. invalid(-1)                - Indicates that the query fails or no information is detected		
            "                       H"
                Minimum bit rate, units of 100 MBits/s
            "                       H"
                Maximum bit rate, units of 100 MBits/s
            "                       L"
                Link length supported for SMF fiber in km 
            "                       h"
                Link length supported for EBW 50/125 ï¿½ï¿½m fiber, units of 2 m
            "                       e"
                Link length supported for 50/125 ï¿½ï¿½m fiber, units of 1 m 
            "                       f"
                Link length supported for 62.5/125 ï¿½ï¿½m fiber, units of 1 m
            "                       O"
                Link length supported for copper, units of 1m
            "                      I"This object indicates the transmitter support.
                 Options:
                 1. nonTunable(0)      - Transmitter Not Support Tunable
                 2. tunable(1)         - Transmitter Support Tunable 
                 3. invalid(-1)        - Indicates that the query fails or no information is detected		
		"                      "This object indicates the transmitter support.
                 Options:
                 1. pin(0)              - PIN
                 2. apd(1)              - APD 
                 3. invalid(-1)         - Indicates that the query fails or no information is detected		
		"                      H"This object indicates the wavelength control.
                 Options:
                 1. nonSupport(0)       - Wavelength control NonSupport
                 2. support(1)          - Wavelength control Support 
                 3. invalid(-1)         - Indicates that the query fails or no information is detected		
		"                      q"This object indicates the cooled transmitter device.
                 Options:
                 1. nonSupport(0)         - Cooled transmitter device NonSupport
                 2. support(1)            - Cooled transmitter device Support 
                 3. invalid(-1)           - Indicates that the query fails or no information is detected		
                "                      �"This object indicates the transmitter technology support.
                 Options:
                 1. vCSEL850(0)          - vCSEL850
                 2. vCSEL1310(1)         - vCSEL1310 
                 3. vCSEL1550(2)         - vCSEL1550
                 4. fP1310(3)            - fP1310
                 5. dFB1310(4)           - dFB1310
                 6. dFB1550(5)           - dFB1550 
                 7. eML1310(6)           - eML1310
                 8. eML1550(7)           - eML1550 	
                 9. cOPPER(8)            - cOPPER 	
                 10. invalid(-1)         - Indicates that the query fails or no information is detected		
                "                       4"This object indicates the SFP vendor name (ASCII)."                      `"This object indicates the XFI mode.
                 Options:
                 1. nonSupportXFIMode(0)      - Don't Support XFI Loopback Mode
                 2. supportXFIMode(1)         - XFI Loopback Mode Supported
                 3. invalid(-1)               - Indicates that the query fails or no information is detected		
                "                      w"This object indicates the XFI mode.
                 Options:
                 1. nonSupportLinesideMode(0)     - Don't Support Lineside Loopback Mode
                 2. supportLinesideMode(1)        - Lineside Loopback Mode Supported 
                 3. invalid(-1)                   - Indicates that the query fails or no information is detected		
                "                      �"This object indicates the max bit rate by CDR.
                 Options:
                 1. cdrNosupport(0)                       - CDR not support
                 2. maxBitRateSupportedByCDR11p1(1)       - CDR support for 11.1 Gb/s 
                 3. maxBitRateSupportedByCDR10p7(3)       - CDR support for 10.7 Gb/s
                 4. maxBitRateSupportedByCDR10p5(7)       - CDR support for 10.5 Gb/s 
                 5. maxBitRateSupportedByCDR10p3(15)      - CDR support for 10.3 Gb/s		
                 6. maxBitRateSupportedByCDR9p95(31)      - CDR support for 9.95 Gb/s	
                 7. invalid(-1)                           - Indicates that the query fails or no information is detected		
		"                       '"This object indicates the Vendor OUI."                       &"This object indicates the Vendor PN."                       '"This object indicates the Vendor rev."                       '"This object indicates the Wavelength."                       '"This object indicates the Wavelength."                       B"This object indicates the Maximum Case Temperature in Degrees C."                       $"This object indicates the Cc_base."                       6"This object indicates the Maximum Power Dissipation."                       O"This object indicates the Maximum Total Power Dissipation in Power Down Mode."                       C"This object indicates the Maximum current required by +5V Supply."                       E"This object indicates the Maximum current required by +3.3V Supply."                       E"This object indicates the Maximum current required by +1.8V Supply."                       E"This object indicates the Maximum current required by -5.2V Supply."                       &"This object indicates the Vendor SN."                       &"This object indicates the Date code."                      O"This object indicates the Received power measurement type.
                Options:
                1. supportOMA(0)               - OMA
                2. supportAveragePower(1)      - Average Power 
                3. invalid(-1)                 - Indicates that the query fails or no information is detected		
               "                      I"This object indicates the Module Respond to FEC BER.
                Options:
                1. nonSupportBER(0)         - No BER Support
                2. supportBER(1)            - BER Support 
                3. invalid(-1)              - Indicates that the query fails or no information is detected		
               "                      >"Indicates which optional enhanced features are implemented.
                 bit                Description of Enhanced Options
                  7                  -Module Supports Optional VPS
                  6                  -Optional Soft TX_DISABLE implemented
                  5                  -Optional Soft P_down implemented
                  4                  -Supports VPS LV regulator mode
                  3                  -Supports VPS bypassed regulator Mode
                  2                  -Active FEC control functions implemented
                  1                  -Wavelength tunability implemented
                  0                  -Optional CMU Support Mode 
                  invalid(-1)        -Indicates that the query fails or no information is detected		
               "                      �"This object indicates the optics Aux Input One.
                 Options:
                 1. auxInputType1(0)          - Auxiliary monitoring not implemented
                 2. auxInputType2(1)          - APD Bias Voltage 
                 3. auxInputType3(2)          - 1G Tx Bias Current		
                 4. auxInputType4(3)          - TEC Current (mA)
                 5. auxInputType5(4)          - Laser Temperature 
                 6. auxInputType6(5)          - Laser Wavelength		
                 7. auxInputType7(6)          - +5V Supply Voltage
                 8. auxInputType8(7)          - 1G Tx Power 
                 9. auxInputType9(8)          - +1.8V Supply Voltage		
                 10. auxInputType10(9)        - -5.2V Supply Voltage 
                 11. auxInputType11(10)       - +5V Supply Current		
                 12. auxInputType14(13)       - +3.3V Supply Current
                 13. auxInputType15(14)       - +1.8V Supply Current 
                 14. auxInputType16(15)       - -5.2V Supply Current		
                 15. invalid(-1)              - Indicates that the query fails or no information is detected		
		"                      �"This object indicates the optics Aux Input One.
                 Options:
                 1. auxInputType1(0)          - Auxiliary monitoring not implemented
                 2. auxInputType2(1)          - APD Bias Voltage 
                 3. auxInputType3(2)          - 1G Tx Bias Current		
                 4. auxInputType4(3)          - TEC Current (mA)
                 5. auxInputType5(4)          - Laser Temperature 
                 6. auxInputType6(5)          - Laser Wavelength		
                 7. auxInputType7(6)          - +5V Supply Voltage
                 8. auxInputType8(7)          - 1G Tx Power 
                 9. auxInputType9(8)          - +1.8V Supply Voltage		
                 10. auxInputType10(9)        - -5.2V Supply Voltage 
                 11. auxInputType11(10)       - +5V Supply Current		
                 12. auxInputType14(13)       - +3.3V Supply Current
                 13. auxInputType15(14)       - +1.8V Supply Current 
                 14. auxInputType16(15)       - -5.2V Supply Current		
                 15. invalid(-1)              - Indicates that the query fails or no information is detected		
		"                       $"This object indicates the CC_EXT ."                       0"This object indicates the Wavelength for 2.5G."                       1"This object indicates the Wavelength for 1.25G."                       ,"This object indicates the Vendor specific."                      n"This object indicates the module type.
                 Options:
                 1. unknown(1)            - Unknown
                 2. gpon(2)               - GPON 
                 3. epon(3)               - EPON		
                 4. epon10g(4)            - 10G EPON
                 5. xgpon(5)              - XG-PON 
                 6. wdmpon(6)             - WDM PON		
                 7. hybridpon(7)          - Hybrid PON
                 8. gponOrEpon(8)         - GPON/EPON 
                 9. invalid(-1)           - Indicates that the query fails or no information is detected		
               "                      j"This object indicates the sub module type.
                 Options:
                 1. unknown(1)            - Unknown
                 2. classbplus(101)       - CLASS B+ 
                 3. classcplus(102)       - CLASS C+		
                 4. classb(103)           - CLASS B
                 5. px20(201)             - PX20 
                 6. px20plus(202)         - PX20+		
                 7. pr30(301)             - PR30
                 8. pr20(302)             - PR20 
                 9. prx30(303)            - PRX30
                 10. prx20(304)           - PRX20
                 11. n2a(405)             - N2a 
                 12. n2b(406)             - N2b
                 13. n1(407)              - N1 				 
                 14. invalid(-1)          - Indicates that the query fails or no information is detected		
                "                      �"This object indicates the application scenario of the optical transceiver.
                 Options:
                 1. unknown(1)        - Unknown
                 2. olt(2)            - OLT
                 3. ont(3)            - ONT
                 4. onu(4)            - ONU
                 5. invalid(-1)       - Indicates that the query fails or no information is detected
                "                      :"This object indicates the encapsulation information about the optical transceiver.
                 Options:
                 1. unknown(1)        - Unknown
                 2. sff2x5(2)         - SFF 2x5
                 3. sff2x10(3)        - SFF 2x10
                 4. sfp(4)            - SFP
                 5. xfp(5)            - XFP
                 6. lxfp(6)           - LXFP
                 7. bosaonboard(7)    - BOSA ON BOARD
                 8. invalid(-1)       - Indicates that the query fails or no information is detected
                "                      �"This object indicates the application scenario of the optical transceiver.
                 Options:
                 1. unknown(1)              - Unknown
                 2. commercial(2)           - commercial
                 3. industry(3)             - industry
                 4. expandTemperature(4)    - expand temperature
                 5. invalid(-1)             - Indicates that the query fails or no information is detected
                "                      H"This object indicates the OPM precision.
                 Options:
                 1. unknown(1)        - Unknown
                 2. db3(2)            - 3db
                 3. db1(3)            - 1db
                 4. invalid(-1)       - Indicates that the query fails or no information is detected
                "                       �"This table is used to query the information about the priority queue alarm.
 	         The indexes of this table are ifIndex and hwXponOntIndex."                       �"This table is used to query the information about the priority queue alarm.
 	         The indexes of this entry are ifIndex and hwXponOntIndex."                       �"This object indicates the number of the upstream priority queue alarm due to buffer overflow.
                 One record uses 6 bytes : T-CONT index(1byte)+PQ number(1byte)+alarm number(4bytes)."                       �"This object indicates the number of the downstream priority queue alarm due to buffer overflow.
                 One record uses 8 bytes : port type(1byte)+port index(1byte)+reserve(1byte)+PQ number(1byte)+alarm number(4byte)."                      "This object is used to clear the statistics.
                 Options:
                 1. clear(1)                    - Indicates that clear the statistics
                 2. invalid(-1)                 - Indicates that the query fails or no information is detected
		"                       �"This table is used to configure statistical probe.
 	          The indexes of this table are ifIndex, hwXponOntIndex and hwXponOntStatProbeConfigIndex."                       �"This table is used to configure statistical probe.
 	          The indexes of this entry are ifIndex, hwXponOntIndex and hwXponOntStatProbeConfigIndex."                       �"Index of the statistical probe. Range: 1-2147483647, and -1. 
                 Value -1 must be issued when this index is configured. Then, the device allocates actual index to the NMS."                      �"This object Indicates the type of statistic probe.
                 Options:
                 1. vlanBased(1)                    - Indicates that the statistics are collected by ONT ETH port, VLAN and VLAN priority.
                 2. gemPortBased(2)                 - Indicates that the statistics are collected by GEM port.
                 3. invalid(-1)                     - Indicates that the query fails or no information is detected.
                "                      �"This node indicates the detailed configurations of the statistical probe.
                 If the type of the probe is vlanBased, the format of this node is 'AABBCCCCDD'.
                 AA: Indicates the hexadecimal value of the ONT port type, VDSL(37) and ETH(47) is valid.
                 BB: Indicates the hexadecimal value of an ONT port.
                 CCCC: Indicates the hexadecimal value of a VLAN.
                 DD: Indicates the hexadecimal value of the VLAN priority. 'FF' identifies all VLAN priorities, indicating that the VLAN priority is not configured. 
                 If the type of the probe is gemPortBased, the format of this node is 'AAAA'.
                 AAAA: Indicates the hexadecimal value of GEM port ID for distributing-mode or GEM index for profile-mode.
                 For example, to configure probe with ONT ETH port 1, VLAN 1000, all VLAN priorities, issue '2F0103E8FF'."                       s"this object is used to create a new row or to modify or delete an existing row in this table.
                  "                       �"This table is used to query probe statistics.
 	          The indexes of this table are ifIndex, hwXponOntIndex and hwXponOntStatProbeConfigIndex."                       �"This table is used to query probe statistics.
 	          The indexes of this entry are ifIndex, hwXponOntIndex and hwXponOntStatProbeConfigIndex."                       �"This node identifies the result of queried probe statistics.
                 Value 0 indicates that probe statistics are queried successfully.
                "                       9"This object indicates the received bytes.
            "                       :"This object indicates the received frames.
            "                       5"This object indicates the sent bytes.
            "                       6"This object indicates the sent frames.
            "                      &"This node is used to clear probe statistics.
                 Options:
                 1. clear(1)                    - Indicates that clear probe statistics.
                 2. invalid(-1)                 - Indicates that the query fails or no information is detected.
                "                       �"The ONT Multicast GEM Port statistics table.
                 The index of this table is a combination of ifIndex and
                 hwXponOntIndex.
                "                       �"The ONT Multicast GEM Port statistics table.
                 The index of this entry is a combination of ifIndex and
                 hwXponOntIndex.
                "                       +"This object indicates the loss of frames."                       /"This object indicates the misinserted frames."                       ,"This object indicates the received frames."                       ,"This object indicates the received blocks."                       ("This object indicates the sent blocks."                       D"This object indicates the number of received impaired data blocks."                       ="This object indicates the number of transmitted GEM frames."                      "This object is used to clear the statistics.
                 Options:
                 1. clear(1)                    - Indicates that clear the statistics
                 2. invalid(-1)                 - Indicates that the query fails or no information is detected
		"                       �"This table is used to query ONT TDM port statistics in history 15 minutes.
 	          The indexes of this table are ifIndex, hwXponOntIndex, hwGponDeviceOntPhyIndex and hwGponOntTdmPortPerf15minIntervalNum."                       �"This table is used to query ONT TDM port statistics in history 15 minutes.
 	          The indexes of this entry are ifIndex, hwXponOntIndex, hwGponDeviceOntPhyIndex and hwGponOntTdmPortPerf15minIntervalNum."                       �"This object indicates the history 15 minutes interval number. 
                 value 0 indicates current 15 minutes interval.
                "                       y"This object indicates the statistic of the errored seconds.
             -1 indicates the invalid value.
            "                       z"This object indicates the statistic of the serverly erroeds.
             -1 indicates the invalid value.
            "                       }"This object indicates the statistic of the unavailable seconds.
             -1 indicates the invalid value.
            "                       |"This object indicates the statistic of the error free seconds.
             -1 indicates the invalid value.
            "                       �"The ONT port statistics table.
 	          The indexes of this table are ifIndex, hwXponOntIndex, hwGponOntifType and hwGponOntifPort."                       �"The ONT port statistics table.
 	          The indexes of this entry are ifIndex, hwXponOntIndex, hwGponOntifType and hwGponOntifPort."                       +"This object indicates the received bytes."                       ,"This object indicates the received frames."                       6"This object indicates the received broadcast frames."                       6"This object indicates the received multicast frames."                       4"This object indicates the received 64-octet frames"                       8"This object indicates the received 65~127-octet frames"                       9"This object indicates the received 128~255-octet frames"                       :"This object indicates the received 256~511-octet frames."                       ;"This object indicates the received 512~1023-octet frames."                       <"This object indicates the received 1024~1518-octet frames."                       5"This object indicates the received oversize frames."                       6"This object indicates the received undersize frames."                       6"This object indicates the received FCS error frames."                       1"This object indicates the received drop events."                       ,"This object indicates the send drop bytes."                       ("This object indicates the send frames."                       2"This object indicates the sent broadcast frames."                       2"This object indicates the sent multicast frames."                       1"This object indicates the sent 64-octet frames."                       5"This object indicates the sent 65~127-octet frames."                       6"This object indicates the sent 128~255-octet frames."                       6"This object indicates the sent 256~511-octet frames."                       7"This object indicates the sent 512~1023-octet frames."                       8"This object indicates the sent 1024~1518-octet frames."                       1"This object indicates the sent oversize frames."                       -"This object indicates the sent drop events."                      "This object is used to clear the statistics.
                 Options:
                 1. clear(1)       - Indicates that clear the statistics
                 2. invalid(-1)    - Indicates that the query fails or no information is detected
                "                           �"The interval time of ONT's password renew, 0 means no update, 65535 means no
                 configration data.
                 Unit: minutes
                "                       "The switch value of T-CONT auto-combine.
                 Options:
                 1. enable(1)  - The switch value of T-CONT auto-combine is enable
                 2. disable(2) - The switch value of T-CONT auto-combine is disable
                "                      �"The switch mode of gpon ont interoperability.
                 Options:
                 1. itu-t(1)      - The switch mode of gpon ont interoperability is itu-t
                 2. ctc(2)        - The switch mode of gpon ont interoperability is ctc
                 3. eric-v1(3)       - The switch mode of gpon ont interoperability is eric-v1
                 4. eric-v2(4)   - The switch mode of gpon ont interoperability is eric-v2
                 5. itu-t-g984(5) - The switch mode of gpon ont interoperability is itu-t-g984
                 6. itu-t-g988(6) - The switch mode of gpon ont interoperability is itu-t-g988
                "                       V"This object indicates the name of the default line profile that is bound to the ONT."                       Y"This object indicates the name of the default service profile that is bound to the ONT."                      "The mode of gpon ont multicast authentication.
                 Options:
                 1. ont-control(1)  - The mode of gpon multicast authentication is ont-control
                 2. olt-control(2)  - The mode of gpon multicast authentication is olt-control
                "                       �"The priority reverse switch of gpon ont priority queue.
                 Options:
                 1. enable(1)  - The priority reverse switch is enable
                 2. disable(2)   - The priority reverse switch is disable
                "                      p"The active mode of gpon ONT interoperability mode.
                 Options:
                 1. immediate(1)     - Indicates that the ONT takes effect immediately
                 2. next-startup(2)  - Indicates that the ONT takes effect after next startup
                 3. invalid(-1)      - Indicates that the query fails or no information is detected
		 "                      /"The switch value of T-CONT auto-create.
                 Options:
                 1. enable(1)  - The switch value of T-CONT auto-create is enable
                 2. disable(2) - The switch value of T-CONT auto-create is disable
                 The default value is disable(2)
                "                      F"The switch value of GPON ONT priority queue mapping policy.
                 Options:
                 1. gem-map(1)  - GPON ONT priority queue mapping policy is gem-map
                 2. cos-map(2)  - GPON ONT priority queue mapping policy is cos-map
                 The default value is gem-map(1)
                "                          S"The object is used to open or close the switch of the advanced los alarm.
                   Options:
                   1.enable(1)     - Open the switch of the advanced los alarm
                   2.disable(2)    - Close the switch of the advanced los alarm
                   The default value is disable(2).
                   "                      `"This object is used to set the default status of ONT CATV ports.
                 Options:
                 1. on(1)             - The default status of ONT CATV ports is on
                 2. off(2)            - The default status of ONT CATV ports is off
                 3. invalid(-1)       - Indicates that the query fails
                "                      E"This object is used to open or close the group power off report switch.
                 Options:
                 1.enable(1)     - Open the group power off report switch      
                 2.disable(2)    - Close the group power off report switch
                 The default value is disable(2)
                "                      \"This object is used to open or close the ONT autofind conflict-check switch.
                 Options:
                 1.enable(1)     - Open the switch of the ONT autofind conflict-check
                 2.disable(2)    - Close the switch of the ONT autofind conflict-check
                 The default value is disable(2)
                "                      �"This object is used to enable or disable the bound profile modification switch.
                   Options:
                   1.enable(1)     - Enable to modify bound profile
                   2.disable(2)    - Disable to modify bound profile
                   3.invalid(-1)   - Indicates that the query fails
                   The default value is enable(1).
                   "                      u"The object is used to set whether clear active alarm on shutdown object.
                   Options:
                   1.enable(1)     - Open the switch, clear active alarm on shutdown object
                   2.disable(2)    - Close the switch, does not clear active alarm on shutdown object
                   The default value is disable(2).
                   "                      S"The object is used to set whether suppress initial alarm.
                   Options:
                   1.enable(1)     - Open the switch, suppress initial alarm state
                   2.disable(2)    - Close the switch, does not suppress initial alarm state
                   The default value is enable(1).
                   "                      �"This object is used to enable or disable the switch of allowing protect group member ports have different distances.
                   Options:
                   1.enable(1)     - Enable the switch of allowing protect group member ports have different distances
                   2.disable(2)    - Disable the switch of allowing protect group member ports have different distances
                   The default value is disable(2).
                   "                           �"The hwXponOntAlarmPolicyTable is used to config the ONT alarm policy profile.
                 The index of this table is hwXponOntAlarmPolicyNameIndex.
                "                       �"The hwXponOntAlarmPolicyTable is used to config the ONT alarm policy profile.
                 The index of this entry is hwXponOntAlarmPolicyNameIndex.
                "                       @"This object indicates the ONT alarm policy profile name index."                       J"This object indicates the number of ONT bound with alarm policy profile."                       Q"This object indicates the number of filtered alarm of the alarm policy profile."                       l"This object indicates the filtered alarm list of the alarm policy profile,and each alarm ID takes 4 bytes."                       S"This object indicates the number of unfiltered alarm of the alarm policy profile."                       n"This object indicates the unfiltered alarm list of the alarm policy profile,and each alarm ID takes 4 bytes."                       �"The hwXponOntAlarmPolicyRowStatus is used to create a new row
                 or to modify or delete an existing row in this table.
                "                      {"This object indicates if the ONT alarm appends ONT alarm policy profile name.
                    Options:
                    1.enable(1)     - The ONT alarm appends  ONT alarm policy profile name..
                    2.disable(2)    - The ONT alarm does not append  ONT alarm policy profile name..
                    The default value is enable(1).
                   "                      ?"This object indicates if the ONT alarm appends IP address.
                    Options:
                    1.enable(1)     - The ONT alarm appends IP address.
                    2.disable(2)    - The ONT alarm does not append IP address.
                    The default value is disable(2).
                   "                      *"This object indicates if the ONT alarm appends MAC.
                    Options:
                    1.enable(1)     - The ONT alarm appends MAC.
                    2.disable(2)    - The ONT alarm does not append MAC.
                    The default value is disable(2).
                   "                      '"This object indicates if the ONT alarm appends SN.
                    Options:
                    1.enable(1)     - The ONT alarm appends SN.
                    2.disable(2)    - The ONT alarm does not append SN.
                    The default value is disable(2).
                   "                      -"This object indicates if the ONT alarm appends LOID.
                    Options:
                    1.enable(1)     - The ONT alarm appends LOID.
                    2.disable(2)    - The ONT alarm does not append LOID.
                    The default value is disable(2).
                   "                       �"The hwXponDeviceOntPowerSheddingProfileTable is used to config the ONT power shedding profile.
                 The index of this table is hwXponDeviceOntPowerSheddingProfileNameIndex.
                "                       �"The hwXponDeviceOntPowerSheddingProfileTable is used to config the ONT power shedding profile.
                 The index of this entry is hwXponDeviceOntPowerSheddingProfileNameIndex.
                "                       B"This object indicates the ONT power shedding profile name index."                       L"This object indicates the number of ONT bound with power shedding profile."                      �"This object indicates the power shedding interval of data class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                      �"This object indicates the power shedding interval of voice class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                      �"This object indicates the power shedding interval of video overlay class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                      �"This object indicates the power shedding interval of video return class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                      �"This object indicates the power shedding interval of DSL class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                      �"This object indicates the power shedding interval of ATM class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                      �"This object indicates the power shedding interval of CES class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                      �"This object indicates the power shedding interval of frame class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                      �"This object indicates the power shedding interval of sdh-sonet class service.
                 Options:
                 1: disables power shedding(0) 
                 2: enables immediate power shed(1)
                 3. 2-65535       - Indicates the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power.                
                "                       |"This object indicates the time delay, in seconds, before resetting the power-shedding timers after full power restoration."                       �"The hwXponDeviceOntPowerSheddingProfileRowStatus is used to create a new row or to modify or delete an existing row in this table."                       �"This table is used to create, delete or modify the tr069 server profile.
 	         The index of this table is hwXponOntTr069ServerProfileName.          
                "                       �"This table is used to create, delete or modify the tr069 server profile.
 	         The index of this entry is hwXponOntTr069ServerProfileName.          
                "                       6"This object indicates the tr069-server-profile name."                       J"This object indicates the number of ONT bound with tr069-server-profile."                       "This object indicates the server URL.
                 For example: you can set the value of the leaf like 'www.huawei.com'."                       &"This object indicates the user name."                       *"This object indicates the user password."                       )"This object indicates the server realm."                       �"TRow status. This object is used to differentiate the creation, modification and deletion operations for an object.
                "                       �"This table is used to set the ONT alarm level.
 	         The index of this table is hwXponOntAlarmPolicyCfgNameIndex and hwXponOntAlarmPolicyAlarmId.
                "                       �"This table is used to set the ONT alarm level.
 	         The index of this entry is hwXponOntAlarmPolicyCfgNameIndex and hwXponOntAlarmPolicyAlarmId.
                "                       @"This object indicates the ONT alarm policy profile name index."                       )"This object indicates the ONT alarm ID."                      >"This object indicates the ONT alarm level.
                 Options:
                 1. critical(1)             - The ONT alarm level is critical.
                 2. major(2)                - The ONT alarm level is major.
                 3. minor(3)                - The ONT alarm level is minor.
                 4. warning(4)              - The ONT alarm level is warning.
                 5. unconcern(-1)           - The ONT alarm severity is unconcerned in the ONT alarm policy profile.
                 The default value is unconcern(-1).
                "                       �"This table is used to create, delete or modify the FTP server profile.
 	         The index of this table is hwXponOntFtpServerProfileNameIndex.          
                "                       �"This table is used to create, delete or modify the FTP server profile.
 	         The index of this entry is hwXponOntFtpServerProfileNameIndex.          
                "                       7"This object indicates the name of FTP server profile."                       �"This object indicates the address of FTP server profile.
                the format of string should be like ftp://127.0.0.1 or ftps://127.0.0.1
                "                       d"This object indicates the port of FTP server profile.
                   The default value is 21."                       4"This object indicates the user name of FTP server."                       3"This object indicates the password of FTP server."                       �"The hwXponOntFtpServerProfileRowStatus is used to create a new row
                 or to modify or to delete an existing row in this table.
                "                      