�-- ============================================================================
-- Copyright (C) 2021 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- Description: This MIB object is used to describe the interfaces of sending 
--              the host notifications (including the alarm and event),
--              and configurations of the log, syslog and trap.  
-- Reference:  
-- Version: V1.68
-- ============================================================================ 
  ;"
            In ITU-T X.733:                                         
            - communications alarm type: An alarm of this type is 
            principally associated with the procedures and/or             
            processes required to convey information from one point to another;                                                 
            - quality of service alarm type: An alarm of this type is
            principally associated with a degradation in the quality of a service;                             
            - processing error alarm type: An alarm of this type is principally 
            associated with a software or processing fault;                                            
            - equipment alarm type: An alarm of this type is principally 
            associated with an equipment fault;                    
            - environmental alarm type: An alarm of this type is principally 
            associated with a condition relating to an         
            enclosure in which the equipment resides.         
            "              �"
            In ITU-T X.733:                                         
            - critical: The Critical severity level indicates that a service 
            affecting condition has occurred and an immediate corrective action is required.
             Such a severity can be reported, for example, when a managed               
            object becomes totally out of service and its capability must be restored.                                          
            - major: The Major severity level indicates that a service affecting 
            condition has developed and an urgent corrective action is required. 
            Such a severity can be reported, for example, when there is a severe                 
            degradation in the capability of the managed object and its full 
            capability must be restored.                       
            - minor: The Minor severity level indicates the existence of a non-service 
            affecting fault condition and thatcorrective action should be taken in 
            order to prevent a more serious (for example, service affecting) fault.        
            Such a severity can be reported, for example, when the detected alarm 
            condition is not currently degrading the capacity of the managed object.     
            - warning: The Warning severity level indicates the detection of a 
            potential or impending service affecting fault, before any significant 
            effects have been felt. Action should be taken to further diagnose (if                
            necessary) and correct the problem in order to prevent it from becoming 
            a more serious service affecting fault.                                            
            - cleared: The Cleared severity level indicates the clearing of one or 
            more previously reported alarms. This        
            alarm clears all alarms for this managed object that have the same Alarm 
            type, Probable cause and  Specific problems (if given). 
            Multiple associated notifications may be cleared by using the Correlated              
            notifications parameter (defined below).          
            This Recommendation | International Standard does not require that the 
            clearing of previously reported alarms be reported. Therefore, 
            a managing system cannot assume that the absence of an alarm with the                
            Cleared severity level means that the condition that caused the generation 
            of previous alarms is still present. Managed object definers shall state if, 
            and under which conditions, the Cleared severity level is used.                                             
            - indeterminate: The Indeterminate severity level indicates that the severity 
            level cannot be determined. 
            - informational: The informational severity level indicates that the message is an informational message.
            - reliable: The reliable severity level indicates that the trap is a reliable trap, which requires the NMS
              to reply with an acknowledgement after receiving the trap.
            - notalarmed: The notalarmed severity level indicates that the condition is not alarm.                         
            - notreported: The notreported severity level indicates that the alarm doesnot need be reported.
            "                                                                0"                                                 
                This MIB object is used to describe the interfaces of sending 
                the host notifications (including the alarm and event), 
                and configurations of the log, syslog and trap.                
                "�"Huawei Industrial Base                
                          Bantian, Longgang                                
                          Shenzhen 518129                                   
                          People's Republic of China                        
                          Website: http://www.huawei.com                    
                          Email: support@huawei.com                         
                         " "202110110000Z" "202105190000Z" "202101290000Z" "202010220000Z" "202010120000Z" "202010090000Z" "202008170000Z" "201910250000Z" "201905060000Z" "201905060000Z" "201812190000Z" "201805160000Z" "201703090000Z" "201702240000Z" "201611110000Z" "201503230000Z" "201501130000Z" "201501080000Z" "201412250000Z" "201411120000Z" "201406300000Z" "201405090000Z" "201312250000Z" "201311190000Z" "201304230000Z" "201302260000Z" "201301280000Z" "201211270000Z" "201211020000Z" "201209200000Z" "201207230000Z" "201206140000Z" "201202280000Z" "201202100000Z" "201201180000Z" "201108040000Z" "201106220000Z" "201104060000Z" "201102090000Z" "201011100000Z" "201011090000Z" "201009070000Z" "201008250000Z" "201006160000Z" "201005060000Z" "201004180000Z" "201003030000Z" "201002030000Z" "201001290000Z" "201001260000Z" "201001070000Z" "200911230000Z" "200801090000Z" "200712250000Z" "200705110000Z" "200704280000Z" "200703230000Z" "200701220000Z" "200611240000Z" "200607310000Z" "200601040000Z" "200501280000Z" "200306280000Z" %"V1.63, hwSyslogLogType add ssa type" k"V1.67, Add the following nodes:
                          hwSyslogFormatVersion, hwSyslogTimeStampFormat""V1.66, 
                          1. add MIB tables relevant to the features provided for 
                          log retention, including hwLogRetention.
                          2. add the following nodes: hwLogRetentionSwitch, hwLogRetentionPeriod." ="V1.65, modify the information of hwSyslogHostSslPolicyName." n"V1.64, Add the following nodes:
                          hwSyslogHostTransType, hwSyslogHostSslPolicyName." *"V1.63, hwSyslogLogType add security type" U"V1.62, Add the following nodes:
                          delete index description" �"V1.61, Add the following nodes:
                          hwSSLCertName, hwSSLCertType, hwSSLCertBeginTime, hwSSLCertEndTime
                          hwSslCertExpireTraps" 4"V1.60,  modify the description of hwAlarmCtrlTable" :"V1.58,  modify the description of hwNotifyFilterExtTable" ;"V1.58,  modify the description of hwTrapReliabilityTrapID" +"V1.57,  Add the node hwSyslogHostSeverity" 8"V1.56,  Add a space in the hwSyslogLogType description" ["V1.55,  Add the following enum of the hwSyslogLogType:
                          voip(4)" �"V1.54, Added the following nodes:
	                      hwCertUsage
	                      hwCertIndex
                          hwCertExpireDate
                          hwCertExpireTrap. " K"V1.53, 
                          1. modify the wrong word of EventType." L"V1.52, 
                          1. modify the description of hwTrapNum." �"V1.51, 
                          1. modify the description of hwNotifyFilterCondition.  
                          2. modify the description of hwNotifyFilterExtTable" I"V1.50, 
                          1. Add table hwNotifyFilterExtTable." a"V1.49, 
                          1. modifie the description of hwTrapReliablityTrapSnConfirm." �"V1.48, 
                          1. modified 'MAX-ACCESS not-accessible' to 'MAX-ACCESS accessible-for-notify' of hwTrapSynType.
                          2. removed all hyphens (-) from enumerated values of hwSyslogLogType." _"V1.47, 1. Modified the description of hwTrapLevel, hwNotifyFilterCondition and SeverityLevel." 4"V1.46, 1. Modified the description of hwTrapLevel." 4"V1.45, 1. Modified the description of hwTrapLevel."�"V1.44, 1. Change the status of hwNotifySubTable from current to obsolete.
                          2. Change the status of hwNotifySubEntry from current to obsolete.
                          3. Change the status of hwNotifySubHostAddress from current to obsolete.
                          4. Change the status of hwNotifySubAdminStatus from current to obsolete.
                          5. Change the status of hwNotifySubContentList from current to obsolete."m"V1.43, 1. Change the status of hwLogHostTable from obsolete to deprecated.
                          2. Change the status of hwLogHostEntry from obsolete to deprecated.
                          3. Change the status of hwLogHostIP from obsolete to deprecated.
                          4. Change the status of hwLogHostConfigStatus from obsolete to deprecated." `"V1.42, 1. Change the object of hwShakeMessageTrap from hwSyslogHostInetAddress to hwSysIpAddr." `"V1.41, 1. Change the object of hwShakeMessageTrap from hwLogHostIP to hwSyslogHostInetAddress." 5"V1.40, 1. Modified the hwNotification to hwSyntrap." �"V1.39, 1. Add hwSyslogHostTable and hwSysloglogFacilityTable.
                          2. Changed the state of hwLogHostTable from current to obsolete.
                          3. Modified the description of hwSyslogFacility and hwSyslogSeverity." 4"V1.38, Modified the illegal comment symbol for FT." z"V1.37, 1. Modified the description of hwSpecificTrapType. 
                         2.Add the trap node hwTrapOperType." A"V1.36, 1. Modified the hwProtocalVersion to hwProtocolVersion. " j"V1.35, 1. Modified the description of hwTrapSynBeginSn, hwTrapSynEndSn, hwLogSynBeginSn, hwLogSynEndSn. " 8"V1.34, Modified the description of hwProtocalVersion. "5"V1.33, 1. Add object hwTrapReliability to hwNotification for reliable trap. 
                          2. Add hwTrapReliabilityConfTable to hwTrapReliability for setting reliable trap.
                          3. Add hwTrapReliablityTrapSnConfirm to hwTrapReliability for responding of the reliable trap."�"V1.32, 1. Add hwTrapSynActiveAlarmList to hwTrapSynTable for synchronizing active alarm. 
                          2. Add hwAlarmRecordClearOperate to hwAlarmRecordClear for clearing active alarm.
                          3. Add hwAlarmClearedReportTrap to hwSnmpNotiCommonTraps for clearing active alarm.
                          4. Add hwAlarmClearedNum and hwAlarmClearedSnList to hwTrapVbOids for clearing active alarm." �"V1.31, the object-type of hwAlarmRecordAdminStatus and the description of 
                          hwAlarmRecordAdminStatus are modified." V"V1.30, the description of hwNotifyFilterCondition is modified according to the tool.""V1.29, 1.Add hwSyslogFacility for configuration and querying of syslog class,
                          2.Add hwSyslogSeverity for configuration and querying of syslog level.
                          3.The description of this MIB is modified according to the tool." 7"V1.28, deleted hwSyslogFacility and hwSyslogSeverity." �"V1.27, 1.Add hwSyslogFacility for configuration and querying of syslog class,
                          2.Add hwSyslogSeverity for configuration and querying of syslog level." `"V1.26, modified the contact-info and the revision history. Modified the description of leaves."."V1.25, 1. The object description was modified and supplemented. The objects hwSynAlarm, hwAlarmStatSave,
                           and all the objects in hwMaintainSendTable and hwAlarmStatInfoTable were abandoned.
                           2. Added object hwNotificationTime for DT requirements." "V1.24, TL1 alarm was changed." b"V1.23, DT requirements were implemented and the syntax and semantics of SIMPLETEST were changed." b"V1.22, DT requirements were implemented and the syntax and semantics of SIMPLETEST were changed." �"V1.21, DT requirements were implemented. 
                          Certain added or modified MIB nodes supported the status-enumerated value of the GET operation." �"V1.20, the system supported the definitions of standard trap nodes 
                          and associated trap parameter nodes." �"V1.19, used SimpleTest clean warning and error. 
                          Used MIB browser clean warning and error. Added MIB description." �"V1.18, added MIB tables relevant to the features provided for 
                          Deutsche Telekom, including hwCause, hwTrapConfig and hwTrapVbOids." �"V1.17, added MIB tables relevant to the features provided for 
                          Turk Telekom, including hwLogSynTable and hwLogHostTable." "V1.09, added hwNotifySub table and the enumerated values of 
                          hwTrapSynType leaf in hwTrapSynTable." �"V1.08, added MIB tables relevant to the DB15 feature, 
                          including hwAlarmExpSignal and hwAlarmExpCtrlTable." /"V1.07, modified MIB interface specifications." 3"V1.00, baseLined IASV100R003C01 SMP SRS baseline."�"V1.06, modification:
                         hwEventCtrlTable: Added the count of events during the current and 
                         last statistical periods and event management states.
                         Addition:
                         hwAlarmCtrlTable for managing alarms, hwAlarmRecordClearTable for
                         managing the uncleared alarms, hwNotifyFilterTablefor for setting and 
                         querying alarm filter, hwAlarmWobbleFilter for setting jitter 
                         prevention function and time. hwTrapFlowCtrl was Trap flow table, 
                         and hwTrapSynTable was Trap synchronization table." v"V1.05, added alarm level filter hwAlarm and alarm statistics 
                          table hwAlarmStatInfoTable." {"V1.04, optimized and collated the MIB interface for the 
                          alarm log feature to form a baseline." H"V1.03, added syslog output level control, namely, hwSyslogOutputTable." �"V1.02, added the NMS functions for suppresing the RTU trap, 
                          including hwRtuTrapRestrainSwitch, hwRtuResetAllConfigID, 
                          and hwRtuConfigIDTable." �"V1.01, added table hwAlarmSendTable that is used to control 
                          whether a trap message is sent when the ADSL/VDSL/SHDSL 
                          port goes online or offline." #"V1.00, completed the first draft."                   �"                                                 
                Minimum serial number of the alarm buffered in the current system.                                                   
                "                       �"
                Maximum serial number of the alarm buffered in the current system.                                                   
                "                      �"                                                 
                Starting serial number of the alarm trap whose synchronization 
                is initiated by the NMS. The value ranges from hwAlarmBufferMinSn 
                to hwAlarmBufferMaxSn. When the value that is not in the range 
                is used, an error is returned.                                                
                "                      �"                                                 
                Ending serial number of the alarm trap whose synchronization 
                is initiated by the NMS. The value ranges from hwAlarmBufferMinSn 
                to hwAlarmBufferMaxSn. When the value that is not in the range is used, 
                an error is returned. The value cannot be smaller than the 
                value of hwAlarmSynBeginSn.
                "                      w"
                When the alarm whose synchronization is initiated by the NMS, 
                one of the following methods can be used:  
                Options:
                1. other(1)    -other.                                 
                2. stop(2)     -stop. 
                3. interval(3) -indicates that synchronize the alarm by serial number (that is, synchronize
                                all the alarms in the system). During the synchronization, 
                                hwAlarmSynBeginSn, hwAlarmSynEndSn and hwSynTrapAdminStatus need to be issued.
                                The corresponding value is interval(3).
                4. all(4)      -indicates that synchronize all the active alarms (the active alarms refer 
                                to the alarm whose fault alarms are already sent but the 
                                corresponding recovery alarms are not sent). 
                                hwSynTrapAdminStatus is issued directly and the corresponding value is all (4).                                                                 
                "                      "                                                 
                Alarm reporting control table. It is used to control 
                by alarm ID whether to report the trap generated 
                corresponding to an alarm to the trap host.                
                "                      ]"                                                 
                Alarm reporting control table. It is used to control 
                by alarm ID whether to report the trap generated 
                corresponding to an alarm to the trap host.                
                The index of this entry is object hwAlarmIndex.
                "                       �"                                                 
                Index of the alarm reporting control table. The index value is the alarm ID.                                        
                "                      T"                                                 
                Control function of whether to report the trap generated corresponding to an 
                alarm to the trap host. 
                Options:
                1. on(1)  -indicates that the trap generated corresponding to the alarm of 
                           object hwAlarmIndex needs to be reported to the trap host. 
                2. off(2) -indicates that the trap generated corresponding to the alarm of object 
                           hwAlarmIndex need not to be reported to the trap host.
                "                       �"                                                 
                Currently, the table is not supported.     
                "                       �"                                                 
                Currently, the table is not supported. 
                The index of this entry is hwMaintainIndex.                            
                "                       �"                                                 
                Currently, the object is not supported.           
                "                       �"                                                 
                Currently, the object is not supported. 
                Options:
                1.on(1) -on.
                2.off(2)-off.        
                "                                       �"                                                 
                Currently, the object is not supported.
                This trap is reported when syn operation from NMS.            
                "                    �"                                                     
                RTU trap restrain switch status.                      
                Options: 
                1. enable(1)  -RTU trap restrain switch is enable.                                              
                2. disable(2) -RTU trap restrain switch is disable.                             
                "                      l"                                                     
                Set operation used to reset all RTU's configID.
                Options:
                1. unknown(1)      -means don't known if RTU is administrable, setting all configID to '-1'.                                              
                2. administrable(2)-means RTU is administrable, setting all configID to '0'.                                                              
                Get operation is useless.                             
                Currently, the object is not supported.               
                "                       �"                                                         
                RTU ConfigID table. 
                Currently, the object is not supported.               
                "                       �"                                                     
                RTU ConfigID table.The index of this entry is ifIndex.                             
                Currently, the object is not supported.               
                "                       �"                                                     
                The ConfigID of RTU.                                  
                Currently, the object is not supported.               
                "                           �"                                                 
                Alarm statistics period. 
                Range: 1-8760
                Default: 24 
                Unit: hour                         
                "                      �"
                Operation of saving the alarm statistical information. 
                The statistical information is saved 
                to the flash memory according to the preset period. 
                Options:
                1. save(2)     -indicates that the information is saved. 
                2. nosaving(3) -indicates that the information is not saved.
                "                      "
                The alarm statistics function is to automatically collect 
                the alarm statistics according to the preset period and 
                this object is used to query the start time of the current 
                statistical period.
                "                       �"
                Function of querying the alarm statistical information. 
                It is used to query the count of the alarm occurring in the statistical period. 
                "                      f"
                Function of querying the alarm statistical information. 
                It is used to query the count of the alarm occurring in the statistical period. 
                The index of this entry is hwAlarmStatID. It is used to specify the alarm whose 
                count is queried. The index value is the alarm ID.
                "                       �"
                Index of operation table hwAlarmStatInfoTable. It is used to indicate 
                the ID of the alarm to be queried.
                "                       �"
                Query the count of the alarm occurring in the current statistical 
                period by index.
                "                       �"
                Query the count of the alarm occurring in the previous statistical 
                period by index.
                "                           �"                                 
                Levels of the all the logs supported by the current syslog.                                                    
                "                      2"                                 
                Levels of the all the logs supported by the current syslog.  
                The index of this entry is hwSyslogLevelIndex. hwSyslogLevelIndex is used to 
                describe of the level of the output syslog information.      
                "                      T"                                 
                Description of the level of the output syslog information. 
                Currently, the syslog supports eight data types. 
                Options:
                1. emergency(1)     -indicates that system is unusable.
                2. alert(2)         -indicates that action must be taken immediately.
                3. critical(3)      -indicates that critical conditions.
                4. error(4)         -indicates that error conditions.
                5. warning(5)       -indicates that warning conditions.
                6. notice(6)        -indicates that normal but significant condition.
                7. informational(7) -indicates that informational messages. 
                8. debug(8)         -indicates that debug-level messages.           
                "                      J"
                The output status of the syslog information. 
                Options:
                1. unoutput(1) -indicates that the syslog information is not output to the local PC or server.
                2. output(2)   -indicates that the syslog information is output to the terminal and server.
                "                      C"
                Description of the facility of the output syslog information. 
                Options:
                1. local0(1)        -indicates that the syslog facility is local0.
                2. local1(2)        -indicates that the syslog facility is local1.
                3. local2(3)        -indicates that the syslog facility is local2.
                4. local3(4)        -indicates that the syslog facility is local3.
                5. local4(5)        -indicates that the syslog facility is local4.
                6. local5(6)        -indicates that the syslog facility is local5.
                7. local6(7)        -indicates that the syslog facility is local6.
                8. local7(8)        -indicates that the syslog facility is local7.
                9. default(9)       -indicates that the syslog facility is not set yet.
                The system provides eight facility from local0(1) to local7(8) to config the syslog facility. 
                The default(9) indicates that the syslog facility is not set yet. 
                When the value is default(9), the facility of operating syslog or security syslog is local0,
                and the facility of alarm/event syslog is associate with the alarm/event type as follows: 
                        ALARM TYPE        FACILITY
                     1. COMMUNICATION     local0
                     2. SERVICE QUALITY   local1
                     3. PROCESS ERROR     local2
                     4. EQUIPMENT         local3
                     5. ENVIRONMENTAL     local4
                "                      "
                Description of the severity of the output syslog information.
                Options:
                1. emergency(1)     -indicates that system is unusable.
                2. alert(2)         -indicates that action must be taken immediately.
                3. critical(3)      -indicates that critical conditions.
                4. error(4)         -indicates that error conditions.
                5. warning(5)       -indicates that warning conditions.
                6. notice(6)        -indicates that normal but significant condition.
                7. informational(7) -indicates that informational messages.
                8. debug(8)         -indicates that debug messages.
                9. default(9)       -indicates that the severity of syslog is not set yet.
                The system provides eight level from emergency(1) to debug(8) to config the syslog severity. 
                The default(9) indicates that the syslog severity is not set yet. 
                When the value is default(9), the severity of operating syslog or security syslog is informational(7),
                and the severity of alarm/event syslog is associate with the alarm/event level as follows: 
                        ALARM LEVEL       SEVERITY
                     1. CRITICAL          alert
                     2. MAJOR             critical
                     3. MINOR             warning
                     4. WARNING           informational
                     5. CLEARED           notice
                "                       �"                                 
                Log facility of the current syslog.  
                The index of this entry is hwSyslogLogType. hwSyslogLogType is used to 
                describe the type of the syslog.      
                "                       �"                                 
                Log facility of the current syslog.  
                The index of this entry is hwSyslogLogType. hwSyslogLogType is used to 
                describe the type of the syslog.      
                "                      K"
                Description of the type of the output syslog information. 
                Options:
                1. log(1)         -indicates that the syslog type is log.
                2. alarmEvent(2)  -indicates that the syslog type is alarm-event.
                3. igmp(3)        -indicates that the syslog type is igmp.
                4. voip(4)        -indicates that the syslog type is voip.
                5. security(5)    -indicates that the syslog type is security.
                6. ssa(6)         -indicates that the syslog type is ssa.
                "                      C"
                Description of the facility of the output syslog information. 
                Options:
                1. local0(1)        -indicates that the syslog facility is local0.
                2. local1(2)        -indicates that the syslog facility is local1.
                3. local2(3)        -indicates that the syslog facility is local2.
                4. local3(4)        -indicates that the syslog facility is local3.
                5. local4(5)        -indicates that the syslog facility is local4.
                6. local5(6)        -indicates that the syslog facility is local5.
                7. local6(7)        -indicates that the syslog facility is local6.
                8. local7(8)        -indicates that the syslog facility is local7.
                9. default(9)       -indicates that the syslog facility is not set yet.
                The system provides eight facility from local0(1) to local7(8) to config the syslog facility. 
                The default(9) indicates that the syslog facility is not set yet. 
                When the value is default(9), the facility of operating syslog or security syslog is local0,
                and the facility of alarm/event syslog is associate with the alarm/event type as follows: 
                        ALARM TYPE        FACILITY
                     1. COMMUNICATION     local0
                     2. SERVICE QUALITY   local1
                     3. PROCESS ERROR     local2
                     4. EQUIPMENT         local3
                     5. ENVIRONMENTAL     local4
                "                      "
                Description of the severity of the output syslog information.
                Options:
                1. emergency(1)     -indicates that system is unusable.
                2. alert(2)         -indicates that action must be taken immediately.
                3. critical(3)      -indicates that critical conditions.
                4. error(4)         -indicates that error conditions.
                5. warning(5)       -indicates that warning conditions.
                6. notice(6)        -indicates that normal but significant condition.
                7. informational(7) -indicates that informational messages.
                8. debug(8)         -indicates that debug messages.
                9. default(9)       -indicates that the severity of syslog is not set yet.
                The system provides eight level from emergency(1) to debug(8) to config the syslog severity. 
                The default(9) indicates that the syslog severity is not set yet. 
                When the value is default(9), the severity of operating syslog or security syslog is informational(7),
                and the severity of alarm/event syslog is associate with the alarm/event level as follows: 
                        ALARM LEVEL       SEVERITY
                     1. CRITICAL          alert
                     2. MAJOR             critical
                     3. MINOR             warning
                     4. WARNING           informational
                     5. CLEARED           notice
                "                       �"
                Syslog format version.
                Options:
                1. rfc3164(1)    -indicates that the syslog version is rfc3164.
                2. rfc5424(2)    -indicates that the syslog version is rfc5424.
                "                      "
                Syslog time stamp format.
                Options:
                1. privacy(1)    -indicates that the syslog timestamp format is yyyy-mm-dd.
                2. standard(2)   -indicates that the syslog timestamp format is Mmm dd.
                "                          G"                                                 
                Event control table. It is used to set the event level through
                the NMS or query the event list supported in the system. 
                The information that can be queried includes the event ID, event name, 
                event class, event type, event level, event default level, 
                count of the event in the statistical period, count of the event in 
                the previous statistical period and event management status.                             
                "                      �"                                                 
                Event control table. It is used to set the event level through
                the NMS or query the event list supported in the system. 
                The information that can be queried includes the event ID, event name, 
                event class, event type, event level, event default level, 
                count of the event in the statistical period, count of the event in 
                the previous statistical period and event management status.  
                The index of this entry is the hwEventID.The index value is the event ID.               
                "                      1"                                                 
                Index object of the event control table. The index value is 
                the event ID and the information about the event control table 
                is obtained according to the current event ID.             
                "                       �"                                                                                      
                Event name. It is used to briefly describe the event trigged by the system.                                         
                "                      �"                                                 
                Event class. Currently, the system supports two event classes: 
                Options: 
                1. running(1)  -indicates the running event, such as the prompt displayed 
                                during the loading process. 
                2. security(2) -indicates the event that affects the system security status of
                                the access devices, for example, the event wherein a user try to access the 
                                system to add, delete, or change the user account in the system, 
                                thus changing the system security status.                     
                "                       �"                                                 
                Reference the description of SeverityLevel.
                "                       �"                                                                              
                 Reference the description of SeverityLevel.
                "                      j"                                                 
                Event type. Currently, the system supports five event types.
                Options:                                                         
                1. communication(1) -indicates the communication event. 
                2. service(2)       -indicates the service quality event.
                3. process(3)       -indicates the process error event.
                4. equipment(4)     -indicates the hardware device event. 
                5. environment(5)   -indicates the environment event.                   
                "                       �"                                                 
                Count of the event occurring in the current period.
                "                       Z"
                Count of the event occurring in the previous period.
                "                      "                                                 
                Event management status. Currently, the system supports two states.
                Options:
                1. init(1)       -During the setting operation, you can change only the event that is
                                  in the initial state to the alarm but cannot change an alarm to an event. 
                                  Therefore, init(1) can be implemented only through the getting operation 
                                  to check whether the current state is initial. 
                2. conversion(2) -If an event needs to be converted into an alarm, 
                                  perform the setting operation through conversion(2).               
                "                      f"
                Event Effect. 
                It is used to describe the Service effect of the event and is classified into two types. 
                Options:               
                1. standingcondition(1)  -indicates a condition is standing.
                2. transientcondition(2) -indicates a condition is transient. 
                "                          ;"                                                 
                Alarm control table. It is used to set the alarm level through the NMS or 
                query the alarm list supported in the system. The information that can be queried
                includes the alarm ID, alarm name, alarm class, alarm type, alarm level, alarm default 
                level, count of the alarm in the statistical period, count of the alarm in the previous 
                statistical period and alarm management status.                                   
                "                      X"                                                 
                Alarm control table. It is used to set the alarm level through the NMS or 
                query the alarm list supported in the system. The information that can be queried
                includes the alarm ID, alarm name, alarm class, alarm type, alarm level, alarm default 
                level, count of the alarm in the statistical period, count of the alarm in the previous 
                statistical period and alarm management status. The index of this entry is hwAlarmID.                          
                "                      1"                                                 
                Index object of the alarm control table. The index value is the alarm ID and 
                the information about the alarm control table is obtained according to 
                the current alarm ID.             
                "                       �"                                                 
                Alarm name. It is used to briefly describe the alarm triggered by the system.                                         
                "                      n"                                                 
                Alarm class. Currently, the system supports two alarm classes.  
                Options:                                                     
                1. faultalarm(1)   -indicates the fault alarm. 
                2. restorealarm(2) -indicates the restore alarm.     
                "                       �"                                                 
								Reference the description of SeverityLevel.        
                "                       �"                                                 
                Reference the description of SeverityLevel.       
                "                      n"                                                 
                Alarm type. It is used to describe the major cause of the alarm 
                and is classified into five types.
                Options:                   
                1. communication(1) -indicates the communication alarm. 
                2. service(2)       -indicates the service quality alarm. 
                3. process(3)       -indicates the process error alarm. 
                4. equipment(4)     -indicates the hardware device alarm. 
                5. environment(5)   -indicates the environment alarm.   
                "                       �"                                                 
                Count of the alarm occurring in the current period.
                "                       �"                                                 
                Count of the alarm occurring in the previous period.                                                                 
                "                      �"                                                 
                Alarm management status.
                Options:
                1. init(1)       -The default status is init(1). 
                2. conversion(2) -If an alarm needs to be converted into an event, 
                                  perform the setting operation to set the management 
                                  status of the alarm to conversion(2).                                                      
                "                      �"                                                 
                Alarm Service effect status.
                It is used to describe the Service effect of the alarm and is classified into two types.
                Options: 
                1. nonserviceaffect(1) -indicates the alarm is a non-service affecting condition. 
                2. serviceaffect(2)    -indicates the alarm is a service affecting condition.                                                      
                "                          5"                                                 
                Alarm clear table. It is used to clear the active alarm by 
                specified serial number through the NMS. The alarm refers to 
                the alarm whose recovery alarm is not generated.                  
                "                      �"                                                 
                Alarm clear table. It is used to clear the active alarm by 
                specified serial number through the NMS. The alarm refers to 
                the alarm whose recovery alarm is not generated.                   
                The index of this entry is hwAlarmRecordSn.
                hwAlarmRecordSn is the serial number of the alarm to be cleared.                 
                "                      �"                                                 
                Index of the alarm or event that is not recovered and to be cleared. 
                The index value is the serial number of the alarm or event. 
                The serial number is saved on the NMS and can be issued through the NMS.                                                                 
                "                      O"                                                 
                Recorded management status of the alarm. 
                Options: 
                1. clear(1)  -indicates that the fault alarm is cleared. 
                2. exist(2)  -indicates that the fault alarm exists.                                   
                "                       a"
                Serial number list of the active alarm to be cleared.      
                "                          "                                                 
                Filter table of the alarm, event and trap. 
                It is used to set the filter condition of 
                the alarm, event and trap through the NMS.            
                "                      �"                                                 
                Filter table of the alarm, event and trap. 
                It is used to set the filter condition of 
                the alarm, event and trap through the NMS.             
                The indexes of this entry are hwNotifyFilterObject, 
                hwNotifyFilterType and hwNotifyFilterCondition.  
                "                      "
                Description of all the filter objects supported by hwNotifyFilterTable. 
                Options:                                             
                1. event(1)   -indicates that the object to be filtered is the event. 
                2. alarm(2)   -indicates that the object to be filtered is the alarm. 
                
                The following items indicate the trap types that are to be filtered: 
                3. maintain(3)-indicates the maintenance trap. 
                4. snmpstd(4) -indicates the standard trap. 
                5. topo(5)    -indicates the topological trap. 
                6. test(6)    -indicates the test trap. 
                7. datachange(15)-indicates the data change trap.   
                "                      �"                                                 
                Description of the filter type. Currently, the system supports five filter types. 
                Options:
                1. system(1)    -indicates that the object is filtered by network element (NE). 
                2. level(2)     -indicates that the object is filtered by level. 
                3. type(3)      -indicates that the object is filtered by type. 
                4. id(4)        -indicates that the object is filtered by ID.
                5. parameter(5) -indicates that the object is filtered by parameter.  
                When the filter object is maintain(3), snmpstd(4), topo(5), test(6), 
                or datachange(15), the filter type (an enumerated value) can only be id(4), 
                indicating that the object is filtered by trap ID. 
                Other alarms and events are supported.                 
                "                      �"
                Detailed condition of filtering the alarm. The range is determined by 
                different alarm types as follows:    
                
                When the type of the object to be filtered is system(1), 
                hwNotifyFilterCondition can be any value.
                
                When the type of the object to be filtered is level(2), 
                the object to be filtered is the alarm, the range is 1-4. 
                Options: 
                1. critical(1)     -indicates the critical alarm. 
                2. major(2)        -indicates the major alarm. 
                3. minor(3)        -indicates the minor alarm.
                4. warning(4)      -indicates the warning alarm.  
                
                In GR version, When the type of the object to be filtered is level(2), 
                the object to be filtered is the event, the range is 9-10. 
                Options: 
                1. notalarmed(9)   -indicates the not-alarmed event. 
                2. notreported(10)  -indicates the not-reported event.  

                When the type of the object to be filtered is type(3), the range is 1-5.
                Options: 
                1. communication(1)-indicates the communication alarm. 
                2. service(2)      -indicates the service quality alarm. 
                3. process(3)      -indicates the process error alarm. 
                4. equipment(4)    -indicates the hardware device alarm.
                5. environment(5)  -indicates the environment alarm.   
                
                When the type of the object to be filtered is id(4), 
                the range is 1-0xffffffff, that is, the ID of the alarm or event.   
                
                When the type of the object to be filtered is parameter(5), 
                the range is a 32-bit value of the unsigned long type. 
                The first eight bits of the value indicate the type of the object to be filtered. 
                Currently, the system supports four types of the objects to be filtered. 
                The type is 0xFF000000. 0 indicates that the object is filtered by shelf ID. 
                If the first eight bits are 0, the shelf ID is obtained from mask 0x00FF0000.
                1 indicates that the object is filtered by shelf ID and slot ID. 
                If the first eight bits are 1, the shelf ID is obtained from mask 0x00FF0000 
                and the slot ID is obtained from mask 0x0000FF00. 
                2 indicates that the object is filtered by shelf ID, slot ID and port ID. 
                If the first eight bits are 2, the shelf ID is obtained from mask 0x00FF0000, 
                the slot ID is obtained from mask 0x0000FF00, 
                and the port ID is obtained from mask 0x000000FF. 
                3 indicates that the object is filtered by VLAN ID. 
                If the first eight bits are 3, the VLAN ID is obtained from mask 0x00FFFFFF. 
                The value is issued as a hexadecimal numeral. 
                If the shelf ID is equal or more than 255, the opreation fails.
                "                      D"                                                 
                The status of this conceptual row.
                createAndGo(4) is supplied to create a new instance of a conceptual row.  
                destroy(6) is supplied to delete the instances associated with an existing conceptual row.   
                "                          �"                                                 
                Alarm jitter-proof function. Through this function, 
                the alarm trap is reported to the NMS after a period 
                that can be set. The default period is 10s and the range is 1-60s. 
                If the alarm is rectified within the preset period, 
                the alarm trap is not reported to the NMS.
                The value range of the function is 1-2. 
                Options: 
                1. on(1)  -indicates that the function is enabled.
                2. off(2) -indicates that the function is disabled. 
                DEFVAL { off }.                    
                "                      M"                                                 
                Alarm jitter-proof interval.                      
                Interval of the alarm jitter-proof.
                Range: 1-60
                Default: 10 
                Unit: second                      
                DEFVAL { 10 } 
                "                       �"                                                                                      
                Alarm shielding table. It is used to set the condition of shielding the alarm. 
                "                      C"                                                 
                Alarm shielding table. It is used to set the condition of shielding the alarm. 
                The index of this entry is hwNotifySubHostAddress, which is the IP address of 
                a trap host whose alarm is shielded.       
                "                       �"                                                 
                IP address of the target host for which all the traps generated for 
                the alarms are shielded.                         
                "                      �"                                                                                      
                Status of alarm shielding. Only two states are supported, 
                namely, received and shielded. 
                Options:                           
                1. enable(1)  -indicates that the alarm is received. 
                2. disable(2) -indicates that the alarm is shielded.                  
                "                      �"                                                 
                ID list of the alarm or event to be shielded.     
                It is all or the ID list (the IDs are separated with comma).                                                        
                All indicates all the alarms or events.                                                             
                "                      6"                                                 
                Filter extended table of the alarm, event and trap. 
                It is used to set the filter condition of 
                the alarm, event and trap through the NMS.                                                   
                "                      �"                                                 
                Filter extended table of the alarm, event and trap. 
                It is used to set the filter condition of 
                the alarm, event and trap through the NMS.             
                The indexes of this entry are hwNotifyFilterExtObject, 
                hwNotifyFilterExtType and hwNotifyFilterExtCondition.  
                "                      "
                Description of all the filter objects supported by hwNotifyFilterExtTable. 
                Options:                                             
                1. event(1)   -indicates that the object to be filtered is the event. 
                2. alarm(2)   -indicates that the object to be filtered is the alarm. 
                
                The following items indicate the trap types that are to be filtered: 
                3. maintain(3)-indicates the maintenance trap. 
                4. snmpstd(4) -indicates the standard trap. 
                5. topo(5)    -indicates the topological trap. 
                6. test(6)    -indicates the test trap. 
                7. datachange(15)-indicates the data change trap.   
                "                      �"                                                 
                Description of the filter type. Currently, the system supports five filter types. 
                Options:
                1. system(1)    -indicates that the object is filtered by network element (NE). 
                2. level(2)     -indicates that the object is filtered by level. 
                3. type(3)      -indicates that the object is filtered by type. 
                4. id(4)        -indicates that the object is filtered by ID.
                5. parameter(5) -indicates that the object is filtered by parameter.  
                When the filter object is maintain(3), snmpstd(4), topo(5), test(6), 
                or datachange(15), the filter type (an enumerated value) can only be id(4), 
                indicating that the object is filtered by trap ID. 
                Other alarms and events are supported.                 
                "                      �"
                Detailed condition of filtering the alarm. It used 1-7 byte to describe
                the value, and every byte is issued as a decimal numeral.
                The range is determined by different alarm types as follows:    
                
                When the type of the object to be filtered is system(1), 
                hwNotifyFilterExtCondition can be any value of 0.0.0.0-255.255.255.255.
                Four bytes are used to describe the value.
                
                When the type of the object to be filtered is level(2), 
                the object to be filtered is the alarm, the range is 1-4. 
                One byte is used to describe the value.
                Options: 
                1. critical(1)     -indicates the critical alarm. 
                2. major(2)        -indicates the major alarm. 
                3. minor(3)        -indicates the minor alarm.
                4. warning(4)      -indicates the warning alarm.  
                
                In GR version, When the type of the object to be filtered is level(2), 
                the object to be filtered is the event, the range is 9-10.
                One byte is used to describe the value. 
                Options: 
                1. notalarmed(9)   -indicates the not-alarmed event. 
                2. notreported(10)  -indicates the not-reported event.  

                When the type of the object to be filtered is type(3), the range is 1-5. 
                One byte is used to describe the value. 
                Options: 
                1. communication(1)-indicates the communication alarm. 
                2. service(2)      -indicates the service quality alarm. 
                3. process(3)      -indicates the process error alarm. 
                4. equipment(4)    -indicates the hardware device alarm.
                5. environment(5)  -indicates the environment alarm.   
                
                When the type of the object to be filtered is id(4), 
                the range is 1-0xffffffff, that is, the ID of the alarm or event. 
                Four bytes are used to describe the value. For example, the ID is 0x02310000, 
                it converts to byte is 2.49.0.0, and 2(0x02), 49(0x31), 0(0x00), 0(0x00). 
                
                When the type of the object to be filtered is parameter(5), 
                the range is a 4-7 bytes value of the string type. 
                The first byte of the string indicate the type of the object to be filtered. 
                Currently, the system supports four types of the objects to be filtered. 
                0 indicates that the object is filtered by shelf ID. 
                If the first byte is 0, the shelf ID is obtained from the next two bytes.
                1 indicates that the object is filtered by shelf ID and slot ID. 
                If the first byte is 1, the shelf ID is obtained from the next two bytes 
                and the slot ID is obtained from the fourth and fifth byte. 
                2 indicates that the object is filtered by shelf ID, slot ID and port ID. 
                If the first byte is 2, the shelf ID is obtained from the next two bytes, 
                the slot ID is obtained from the fourth and fifth byte, and the port ID 
                is obtained from the sixth and seventh byte. 
                3 indicates that the object is filtered by VLAN ID. 
                If the first byte is 3, the VLAN ID is obtained from the next three bytes. 
                For example, the parameter is 258/1/2, it converts to byte is 2.1.2.0.1.0.2,
                and the shelf ID 258(0x102) is described by 1.2.
                "                      D"                                                 
                The status of this conceptual row.
                createAndGo(4) is supplied to create a new instance of a conceptual row.  
                destroy(6) is supplied to delete the instances associated with an existing conceptual row.   
                "                          "                                                 
                Trap traffic control. In certain cases, the alarm module 
                receives the alarm reported by the service module, 
                processes the alarm and then reports the alarm to the NMS. 
                When multiple alarms are reported, the trap traffic in the system increases suddenly. 
                As a result, the NMS is affected and the trap may be lost. Therefore, 
                a buffer function is added to the system to solve the problem. 
                The function is called trap traffic control.
                This object is used to configure the function.
                Options: 
                1. on(1) -indicates that you need to enable trap traffic control.
                          The traffic control is started. 
                2. off(2)-indicates that you need to disable trap traffic control. 
                          The traffic control is stopped.                         
                "                          %"                                                 
                Trap synchronization table. The trap synchronization function 
                is used to send the trap buffered in the system to the trap 
                host in a file or in the synchronization mode.  
                "                      �"                                                 
                Trap synchronization table. The trap synchronization function 
                is used to send the trap buffered in the system to the trap 
                host in a file or in the synchronization mode. 
                The index of this entry is hwTrapSynType, indicating the type of the trap synchronization.                                                               
                "                      M"                                                 
                Trap synchronization types. 
                Options:
                1. trap(1)     -indicates that all the traps are synchronized. 
                2. alarm(2)    -indicates that only the alarm trap is synchronized. 
                3. alarmSub(3) -indicates that the alarm trap is synchronized by synchronization ID.
                                The value of alarmSub can be obtained through hwTrapBufferMinSn or hwTrapBufferMaxSn.
                                Obsolete.                 
                "                       �"                                                 
                Minimum serial number of the trap in the trap buffer area.                                                          
                "                       �"                                                 
                Maximum serial number of the trap in the trap buffer area.                                                          
                "                      �"                                                 
                Starting serial number of the trap that is synchronized. The value is 
                the serial number of the trap in the trap buffer area and can be obtained 
                through hwTrapBufferMinSn and hwTrapBufferMaxSn.           
                The hwTrapSynBeginSn value of -1 indicates there is no trap synchronizing.                                             
                "                      �"                                                 
                Ending serial number of trap that is synchronized. The value is the serial number 
                of the trap in the trap buffer area and can be obtained through hwTrapBufferMinSn and hwTrapBufferMaxSn.  
                The hwTrapSynEndSn value of -1 indicates there is no trap synchronizing.                                                                
                "                      %"                                                 
                Trap synchronization management status.
                Options:
                1. other(1)          -other.                                   
                2. stop(2)           -stop.               
                3. interval(3)       -indicates the traps with the serial numbers in the range of 
                                      the synchronization serial numbers are synchronized. In this case, 
                                      you must specify the index and issue the starting serial number of trap 
                                      and the ending serial number of trap.
                4. all(4)            -indicates that all the traps are synchronized. 
                                      In this case, you can only specify the index and issue the last object 
                5. intervalsynfile(5)-indicates that the traps with specified serial numbers 
                                      form to a file and then the file is synchronized. In this case, 
                                      you must specify the index and issue the starting serial number of trap 
                                      that is synchronized and the ending serial number of trap that is synchronized. 
                6. allsynfile(6)     -indicates that all the traps form to a file and then the file is synchronized. 
                                      In this case, you can only specify the index and issue the last object.                         
                "                      " 
                The switch of all types of info for trap synchronization.                                                         
                Function of the trap synchronization. It is controlled by the bit. 
                The issued value is ULONG and is controlled by the first eight bits. 
                The following part uses the eight bits as an example. 
                Options:                                                          
                1. event(0)      -indicates that the corresponding bits are 10000000. 
                2. alarm(1)      -indicates that the corresponding bits are 1000000. 
                3. maintain(2)   -indicates that the corresponding bits are 100000.
                4. topo(4)       -indicates that the corresponding bits are 1000. 
                5. test(5)       -indicates that the corresponding bits are 100. 
                6. datachange(6) -indicates that the corresponding bits are 10.                                                         
                "                       �"                                                 
                Serial number list of the active alarm to be synchronized to NMS.                                                               
                "                          -"                                               
                Alarm output control table. 
                It is used to query and configure whether the alarm signal 
                is output through the external alarm interface.                                              
                "                      m"                                                
                Alarm output control table. 
                It is used to query and configure whether the alarm signal 
                is output through the external alarm interface.                                              
                The index of this entry is hwAlarmExpID.     
                "                      *" 
                Index of hwAlarmExpCtrlTable. It is used to configure whether 
                a specified alarm is output. In the configuration, the fault 
                alarms refer to all the fault alarms with level higher 
                than warning in the system.
                "                      B"                                                 
                Flag that indicates whether the alarm is output through the external 
                alarm interface. The values are as follows: 
                Options:   
                1. disable(1) -indicates that the alarm is not output 
                               through the external alarm interface. 
                2. enable(2)  -indicates that the alarm is output 
                               through the external alarm interface.                                                  
                "                      �"                                                 
                It is used to clear the alarm output signal. After the alarm output signal is cleared, 
                the recovery notification is sent to the external alarm interface and the corresponding 
                active alarm is cleared. For the current external alarm interface, only the one-LED and 
                three-LED output mode is supported. In the one-LED output mode, the alarm output signal 
                cannot be cleared by level and can be cleared only by all(1); In the three-LED output mode,
                the alarm output signal can be cleared by all the following parameters. 
                Options:                                                               
                1. other(-1)   -indicates the default status in the system.
                2. all(1)      -indicates that all the alarm output signals are cleared.
                3. critical(2) -indicates that the critical alarm output signal is cleared. 
                4. major(3)    -indicates that the major alarm output signal is cleared. 
                5. minor(4)    -indicates that the minor alarm output signal is cleared.                                                   
                "                          "                                         
                Log synchronization table. It is used to query the minimum and maximum serial numbers of 
                the logs that can be synchronized and set the condition of synchronizing the log.   
                "                      �"                                                         
                    Log synchronization table. It is used to query the minimum and maximum serial numbers of 
                    the logs that can be synchronized and set the condition of synchronizing the log.   
                    The index of this entry is hwLogSynType. The index value is the synchronization type.           
                    "                      �"                                                 
                Type of the log that is synchronized. 
                Currently, the logs are classified into two types. 
                Options:                                                              
                1. operating(1) -indicates the operating log. 
                2. security(2)  -indicates the security log.           
                "                       �"
                Minimum serial number of the log that can be synchronized currently.                                                 
                "                       j"
                Maximum serial number of the log that can be synchronized currently.
                "                      "
                Starting index of the log that is synchronized. The value ranges
                from hwLogMinSn to hwLogMaxSn.       
                The hwLogSynBeginSn value of -1 indicates there is no log synchronizing.              
                "                      J"                                             
                Ending index of the log that is synchronized. The value ranges from hwLogMinSn to 
                hwLogMaxSn and must be larger than hwLogSynBeginSn.      
                The hwLogSynEndSn value of -1 indicates there is no log synchronizing.  
                "                      �"
                The synchronizing administration. 
                Options:             
                1.nosynmode(-1)-indicates the default status in the system.
                2.interval(3)  -indicates that the host should send all the log between hwLogSynBeginSn and hwLogSynEndSn. 
                3.all(4)       -indicates that the host sends all log to NMS.                                                                 
                "                           �"                                         
                Querying the status of the log host configured in the current system. 
                "                       �"                                                      
                Querying the status of the log host configured in the current system. 
                The index of this entry is hwLogHostIP.  
                "                       �"                                              
                IP address of the log host. 
                It is used to obtain the host status by IP address of the log host.
                "                      "
                Obtained status of the log host.
                Options:                  
                1. configed(1)   -indicates that the log host is configured.
                2. unconfiged(2) -indicates that the log host is not configured. 
                "                       �"                                         
                Syslog host table. It is used to set attribute of syslog host in the current system. 
                "                       �"                                                      
                Syslog host table. It is used to set attribute of syslog host in the current system. 
                The index of this table is hwSyslogHostName.
                "                       �"                                              
                Syslog host name,a kind of string parameter.
                Index of hwSyslogHostTable.  
                "                      "
                Obtained version of internet address.
                Options:                  
                1. ipv4(1) -indicates that the internet address version is IPv4.
                2. ipv6(2) -indicates that the internet address version is IPv6. 
                "                       �"                                                 
                IP address of the syslog host.                         
                "                      &"
                List of the syslog host facility. Through this object, 
                the syslog host facility can be configured in batches in the format of bit-domain string. 
                The syslog host facility hwSyslogHostFacility is of the bit type. 
                The value indicated that an operation is performed based on bits. When the bit is set to 1, 
                the messages of the bit are collected. local0 indicates bit 16, local1 indicates bit 17,...
                and local7 indicates bit 23.
                "                      �"
                The status of this conceptual row.
                active(1) indicates that the log host is set to the activated state.  
                notInservice(2) indicates that the log host is set to the deactivated state.   
                createandgo(4) indicates that the log host is created and it is the deactivated state by default.   
                destroy(6) indicates that a specific log host is deleted.   
                "                      t"
                This object indicates the list of severities of logs received by the syslog host. 
                This object helps set the severities of logs received by the syslog host in batches in the format of bit-domain character string. 
                The severity of logs received by the syslog host, hwSyslogHostSeverity, is of the bit type. 
                It indicates that an operation is performed based on bits. If the bit is set to 1,
                messages of this bit are collected. emergency indicates bit 0, alert indicates bit 1,...
                and debug indicates bit 7.
                "                      "
                Obtained version of internet address.
                Options:                  
                1. tcp(1) -indicates that the transport mode is TCP.
                2. udp(2) -indicates that the transport mode is UDP. 
                "                       "                                              
                SSL policy name,a kind of string parameter.
                "                          "                                         
                Alarm or event cause querying table. It is used to query the cause 
                description of the alarm or event by alarm or event ID.                                                    
                "                      �"                                                         
                Alarm or event cause querying table. It is used to query the cause 
                description of the alarm or event by alarm or event ID.                                                    
                The index of this entry is hwNotificationCauseID and the index value is the alarm or event ID. 
                "                       p"
                The index of hwNotificationCauseTable. The value is the alarm or event ID.
                "                       �"                                                 
                Cause description of the alarm or event.           
                "                          !"
                The format of the reported trap. 
                Options: 
                1. standard(1) -The trap message is in the standard format.
                2. private(2)  -The trap message is in the private format. 
                DEFVAL { private }.
                "                           ."
                Trap ID.
                "                       V"
                Serial number of the trap in the current system.
                "                      �"
                Trap level, indicates the significance of trap.
                Options:   
                1. critical(1)      -indicates the trap level is critical.                                        
                2. major(2)         -indicates the trap level is major.                                            
                3. minor(3)         -indicates the trap level is minor.                                            
                4. warning(4)       -indicates the trap level is warning.                                          
                5. cleared(5)       -indicates the trap level is cleared. 
                6. indeterminate(6) -indicates the trap level is indeterminate. 
                7. informational(7) -indicates the trap level is informational. 
                8. reliable(8)      -indicates the trap level is reliable. 
                
                According to the fault severity:
                The alarm is classified into five levels, critical, major, minor, warning, and cleared.
                The event is classified into four levels, critical, major, minor, and warning.
                1.Critical(1): Indicates that the fault occurs and the service is affected, which requires immediate troubleshooting.
                  Note: The definition of Critical references the definition in X.733: critical: The Critical severity level indicates that a service affecting condition has occurred and an immediate corrective action is required. Such a severity can be reported, for example, when a managed object becomes totally out of service and its capability must be restored.
                2.Major(2): Indicates that the fault occurs and the service affecting condition is developed, which requires in-time troubleshooting.
                  Note: The definition of Major references the definition in X.733: major: The Major severity level indicates that a service affecting condition has developed and an urgent corrective action is required. Such a severity can be reported, for example, when there is a severe degradation in the capability of the managed object and its full capability must be restored.
                3.Minor(3): Indicates that the fault occurs and the service is temporarily not affected, which requires quick troubleshooting to prevent a more serious fault that affects the service.
                  Note: The definition of Minor references the definition in X.733: minor: The Minor severity level indicates the existence of a non-service affecting fault condition and that corrective action should be taken in order to prevent a more serious (for example, service affecting) fault. Such a severity can be reported, for example, when the detected alarm condition is not currently degrading the capacity of the managed object.
                4.Warning(4): Indicates that the fault that potentially affects the service occurs, which requires further diagnosis (if necessary) to prevent a more serious fault that affects the service.
                  Note: The definition of Warning references the definition in X.733: warning: The Warning severity level indicates the detection of a potential or impending service affecting fault, before any significant effects have been felt. Action should be taken to further diagnose (if necessary) and correct the problem in order to prevent it from becoming a more serious service affecting fault.
                5.Cleared(5): Indicates that the fault is rectified and the device recovers, which requires no operation.
                  Note: The definition of Cleared references the definition in 3GPP 32.111-1: clear alarm: alarm where the severity value is set to cleared.
                6.Indeterminate(6): Indicates that the severity level cannot be determined, which requires no operation.
                  Note: The definition of Indeterminate references the definition in X.733: indeterminate: The Indeterminate severity level indicates that the severity level cannot be determined.
                7.Informational(7): Indicates that the informational messages, which requires no operation.
                  Note: The definition of Informational references the definition in RFC3164: informational: Informational messages.
                8.Reliable(8): Indicates that the reliable trap, which requires NMS set up a response confirming receipt of the Trap.
                  Note: The definition of Informational comes from Huawei private.
                "                      _"
                Specific trap type.
                Options:                         
                1. alarm(2)      -indicates the trap type is alarm trap.
                2. maintain(3)   -indicates the trap type is maintain trap.
                3. standard(4)   -indicates the trap type is snmp standard trap.
                4. topo(5)       -indicates the trap type is topo trap.
                5. test(6)       -indicates the trap type is test trap.
                6. fault(12)     -indicates the trap type is fault alarm from alarm synchronization.
                7. restore(13)   -indicates the trap type is restore alarm from alarm synchronization.
                8. unrestored(14)-indicates the trap type is unrestored alarm from alarm synchronization.
                9. datachange(15)-indicates the trap type is data change trap.        
          
                There are two types of trap in the system:
                1. Alarm trap. The alarm trap including alarms and events, options as: alarm(2), fault(12), restore(13) and unrestored(14),
                only alarm trap can include hwNotificationType. 
                The format of an alarm trap is as follows:  
                ------------------------------------------------------------------------
                | PDU Type |  RequestID | ErrorStatus | ErrorIndex | Variable-bindings |
                ------------------------------------------------------------------------  
                The format of Variable-bindings in alarm type is as follows:
                ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
                | sysUpTime | snmpTrapOID | TrapSN | InfoLevel | Specific-trap | Agent-addr | AlarmID | AlarmSN | CauseID | Type | Time | AlmText | CauseText | userLabel | Paras... |
                ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
                     
                2. Non-alarm trap. The non-alarm trap including the maintain, test, topology and datachange trap, options as: maintain(2), standard(12), topo(13), test(14) and datachange(15). 
                The format of a non-alarm trap is as follows:
                ------------------------------------------------------------------------
                | PDU Type |  RequestID | ErrorStatus | ErrorIndex | Variable-bindings |
                ------------------------------------------------------------------------    
                The format of Variable-bindings in non-alarm trap is as follows:
                -------------------------------------------------------------------------------------------------------------------
                | sysUpTime | snmpTrapOID | TrapSN | InfoLevel | Specific-trap | Agent-addr | TrapID | Para-0 | Para-1 | Paras... |
                ------------------------------------------------------------------------------------------------------------------- 
                "                      �"                                                 
                It's value is a configuration.
                Options:                         
                1. event(10)   -event, NSA(non-service affecting condition).                                          
                2. adacnsa(11) -ADAC(auto detect auto clear) alarm, NSA(non-service affecting condition).  
                3. admcnsa(12) -ADMC(auto detect manual clear) alarm, NSA(non-service affecting condition).
                4. adacsa(27)  -ADAC(auto detect auto clear) alarm, SA(service affecting condition).
                5. admcsa(28)  -ADMC(auto detect manual clear) alarm, SA(service affecting condition).
                "                       \"
                Alarm or event user label, a kind of string parameter.
                "                       K"
                Host Name,a kind of string parameter.
                "                       M"
                Mac Address,a kind of string parameter.
                "                       �"
                The version of SNMP protocol. 
                1 :indicates the SNMP v1 protocol. 
                2 :indicates the SNMP v2c protocol.
                3 :indicates the SNMP v3 protocol.
                "                       V"
                Community read name, a kind of string parameter.
                "                       W"
                Community write name, a kind of string parameter.
                "                       �"
                Number of synchronized trap messages. 
                If it is hwAlmSynBeginTrap, the hwTrapNum value is zero.
                If it is hwAlmSynBeginTrap, the hwTrapNum include hwAlmSynBeginTrap.
                "                       1"
                The NMS IP.
                "                       K"
                Current date and time of the system. 
                "                       C"
                Cleared active alarm number. 
                "                       |"
                The serial number list of cleared alarm (the serial number are separated with comma). 
                "                       �"This object indicates the operation type.
                 Options:
                 1. add(1)     - Add
                 2. modify(2)  - Modify
                 3. delete(3)  - Delete
                "                                   �" 
                The register trap message is reported by the host to the NMS when the function of handshake 
                between the host and the NMS is enabled.          
                "                 �" 
                Shake between host and NMS. After the function of handshake between the host and the NMS is enabled, 
                the host periodically sends a trap message to the NMS if it registers with the NMS successfully.
                "                 f"
                The agent generates this trap when alarm synchronization starts.
                "                 i"
                The agent generates this trap when alarm synchronization completes.
                "                 f"
                The agent generates this trap when clear active alarm completed.
                "                         `" 
                This trap is reported when important operation from NMS. 
                "                " 
                 After the firewall is enabled, this trap message is reported when the system receives an SNMP packet 
                 whose IP address is refused by the firewall. A maximum of 15 such trap messages are sent in 15 minutes.
                "                 ~" 
                This trap message is reported when the destination host of the trap message is deleted.
                "                     �"                                                 
                Trap reliablity table. It is used to set the reliable trap through the NMS. 
                "                      G"                                                 
                Trap reliablity table. It is used to set the reliable trap through the NMS. 
                The indexes of this entry are hwTrapReliabilityTrapType and hwTrapReliabilityTrapID.                                                              
                "                      �"                                                 
                Reliable trap types. 
                Options:
                1. maintain(3)   -indicates the maintenance trap.
                2. snmpstd(4)    -indicates the standard trap. 
                3. topo(5)       -indicates the topological trap. 
                4. test(6)       -indicates the test trap. 
                5. datachange(15)-indicates the data change trap.             
                "                       �"                                                 
                Reliable trap ID, the range is 0-0xffffffff.                                                        
                "                      Y"                                                 
                The status of this conceptual row.
                createAndGo(4) is supplied to create a new instance of a conceptual row.  
                destroy(6) is supplied to delete the instances associated with an existing conceptual row.                        
                "                      -"                                                 
                Serial number of the trap confirmed by the NMS.  
                When get this leaf, the value is always -1 and any serial number set will be successful.                                                           
                "                           l"                                                 
                Certificate usage.   
                "                       l"                                                 
                Certificate index.   
                "                       v"                                                 
                Certificate expiration date.   
                "                       7"
                Certificate Name.
                "                       7"
                Certificate Type.
                "                       ="
                Certificate Begin Time.
                "                       ;"
                Certificate End Time.
                "                           m" 
                This trap message is reported when the certificate is about to expire.
                "                     p"
                This trap message is reported when the SSL certificate is about to expire.
                "                 �"
                This trap message is reported when the alarm indicating that the SSL certificate is about to expire is cleared.
                "                 e"
                This trap message is reported when the certificate has expired.
                "                 y"
                This trap message is reported when the SSL certificate expiration alarm is cleared.
                "                    �"                                                 
                Enables or disables the function of automatically
                deleting logs within the log retention period:
                Options:   
                1. enable(1) -indicates that disabling the automatic log deletion function.
                2. disable(2)  -indicates that enabling the automatic log deletion function.
                The default value is disable(2).
                "                       �"                                                 
                System log retention period.   
                Range: 90-365
                Default: 365
                Unit: day
                "                      