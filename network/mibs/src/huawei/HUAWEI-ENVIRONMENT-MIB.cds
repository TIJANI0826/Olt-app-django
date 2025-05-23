�--  ============================================================================
-- Copyright (C)2011  by  HUAWEI TECHNOLOGIES. All rights reserved.
-- Description:  The MIB module defines MIB objects which include Environment Monitor Unit,
--				 Analog Environment data, Digital Environment data, Out data and
--				 Fan data Monitor management MIB interfaces.
-- Reference:  
-- Version: V3.53
-- ============================================================================
                                                     �"The MIB module defines MIB objects which include Environment Monitor Unit,
				Analog Environment data, Digital Environment data, Out data and
				Fan data Monitor management MIB interfaces.
				"-"Huawei Industrial Base         
			              Bantian, Longgang              
			              Shenzhen 518129                
			              People's Republic of China     
			              Website: http://www.huawei.com 
			              Email: support@huawei.com      
			             " "201306170900Z" "201305130900Z" "201301240900Z" "201211190900Z" "201211051000Z" "201210251700Z" "201209241700Z" "201207231700Z" "201201140900Z" "201111100900Z" "201108080900Z" "201105120900Z" "201103180900Z" "201101180900Z" "201011100000Z" "201008200900Z" "201007190900Z" "201006100900Z" "201005300900Z" "201005180900Z" "201004080900Z" "201003270900Z" "201003240900Z" "201002220900Z" "201002060900Z" "201001290900Z" "200907200900Z" "200905050000Z" "200211290000Z" �"V3.53, modified the range of hwORRFPowerLowThreshold and hwORRFPowerHighThreshold for Optical-Receiver in hwEnvironmentInfoTable leaf node." �"V3.52, add hwOpticalReceiverFailTrap, hwOpticalReceiverRecoverTrap, hwOpticalReceiverPowerFailTrap, hwOpticalReceiverPowerRecoverTrap,
			                    hwOpticalReceiverRFPowerFailTrap, hwOpticalReceiverRFPowerRecoverTrap for Optical-Receiver." �"V3.51, modified this MIB for supporting Optical-receiver.add hwOpticalreceiverTable (optical-receiver) in hwEnvironmentInfoTable leaf node." I"V3.50, add Digital alarm type(hard-fault:23) in hwDigAlarmID leaf node." <"V3.49, add emu type(H801PMU:44) in hwEnvEmuType leaf node." D"V3.48, add emu type(LeadAcidBattery:43) in hwEnvEmuType leaf node." 4"V3.47, add hwEnvEmuTypeName the length is 30 bytes" ="V3.46, add emu type(H801VESC:42) in hwEnvEmuType leaf node." 9"V3.45, add emu type(vpea:41) in hwEnvEmuType leaf node." 8"V3.44, add emu type(smu:40) in hwEnvEmuType leaf node." j"V3.43, add the leaf of hwEmmDigitalSwitchOpenTrap and hwEmmDigitalSwitchCloseTrap for ESC digital alarm." 6"V3.42, modified the value list of hwFanControlMode. " �"V3.41, added emu type(transemu:39) in hwEnvEmuType leaf node. 
			                    added digital-alarm(DC voltage and Output switch) in hwDigAlarmID leaf node." j"V3.40, added hwEmmFanCriticalBlockFaultTrap and hwEmmFanCriticalBlockRecoverTrap for Fan critical block.","V3.39, modified the description of the alarm objects in this MIB file for standard trap.
			             modified the description of the hwEnvironmentInfoEntry,hwEnvEmuType,hwAnaChannelEntry,
			             hwDigChannelEntry,hwDigAlarmID,hwControlOutEntry,hwControlOutAdminStatus and hwFanEntry." �"V3.38, modified the description of the objects in this MIB file for standard trap.
			             Deleted hwEmmDigMainsupplyFaultTrap and hwEmmDigMainsupplyRecoverTrap,which were moved to HUAWEI-POWER-MIB."""V3.37, modified the Objects of the hwEmmEmuHardwareRecoverTrap and hwEmmEmuHardwareFaultTrap for standard trap.
			             Modified the value of hwFailureCause. 
			             Modified the description of hwFailureCause, hwFanStatus, hwEnvAutofindNodeId, and hwEnvAutofindEmuType." e"V3.36, added enum elabel(liFeBattery:38) in hwEnvEmuType leaf node for the supporting LiFeBattery. " 8"V3.35, modified description of hwEnvironmentInfoTable." 4"V3.34, modified this MIB for supporting Power3000." H"V3.33, modified this MIB for supporting Temperature Heat Exchange Unit" J"V3.32, modified this MIB for clearing Simple Tester errors and warnings." J"V3.31, modified this MIB for clearing Simple Tester errors and warnings." *"V3.30, added hwEnvAutofindNodeId for DT." %"V3.29, added hwEnvironTraps for DT." <"V3.28, deleted simptester mib compile errors and warnings." "V3.27, added hwEnvEmuPower." "V3.26, added hwEnvCLEICode." "V1.00, initial version."                  �"
				Information table of Environment Monitor Unit. 
				The Environment Monitor Unit is some kind of Environment monitoring device 
				and is used to monitor many kinds of Environment data. 
				The maximum number of Environment Monitor Units in one device node is 64.  
				The index of this table is hwEnvEmuIndex. 
				hwEnvEmuIndex is the index of one Environment Monitor Unit.
				"                      �"
				Information table of Environment Monitor Unit. 
				The Environment Monitor Unit is some kind of Environment monitoring device 
				and is used to monitor many kinds of Environment data. 
				The maximum number of Environment Monitor Units in one device node is 64.  
				The index of this entry is hwEnvEmuIndex. 
				hwEnvEmuIndex is the index of one Environment Monitor Unit.
				"                       �"
				hwEnvEmuIndex is the index of the Environment monitoring unit,
				used as the index of hwEnvironmentInfoTable.
				Range: 0 - 2048
				"                      	"
				Type of the physical monitoring devices associated with the environment monitoring unit. 
				Options: 
				1.h302ESC(1)        -Type of the physical monitoring devices is H302ESC
				2.h303ESC(2)        -Type of the physical monitoring devices is H303ESC
				3.h4875(3)          -Type of the physical monitoring devices is 4875 power monitoring frame
				4.h301ESC(4)        -Type of the physical monitoring devices is H301ESC
				5.switch(5)         -Distribute monitoring frame
				6.fanEscFrame(6)    -ESC monitoring fan frame
				7.fanFrame(7)       -monitoring fan frame
				8.h4845(8)          -4845 power monitoring
				9.fanFCBFrame(9)    -FCB monitoring fan frame
				10.fanFDMUFrame(10) -FDMU monitoring fan frame
				11.h304ESC(11)      -provides the management function of battery 
				12.pwma(12)         -Type of the physical monitoring devices is pwma
				13.h561esc(13)      -H561ESC
				14.h801esc(14)      -H801Esc
				15.h612pwbp(15)     -H612pwbp  
				16.pse158(16)       -pse158
				17.h4805(19)        -h4805
				18.pdu(20)          -pdu
				19.acrmu(21)       -ac_rmu
				20.acfan(22)       -ac_fan
				21.dcfan(23)       -dc_fan
				22.rmun1509(24)     -rmun1509
				23.onps150(25)      -onps150
				24.h801pmix(26)     -h801pmix
				25.h4875L(27)       -h4875L
				26.miniESC(28)      -miniESC
				27.h831VESC(29)     -H831VESC
				28.h601VESC(30)     -H601VESC
				29.h4830L(31)       -h4830L
				30.h801citx(32)     -h801citx
				31.h801citd(33)     -h801citd
				32.h831ccuh(34)     -h831ccuh
				33.h831pmu(35)      -h831pmu
				34.pwr3000(36)      -a type of power named power 3000, supports 12 rectifier modules
				35.tcu(37)          -tcu
				36.liFeBattery(38)  -liFeBattery
				37.transemu(39)     -a type of emu for transport environment information to managment center
				38.smu(40)          -site monitoring unit
				39.vpea(41)         -vector monitoring unit
				40.h801VESC(42)     -H801VESC
				41.h801PMU(44)      -H801PMU	
				42.other(255)       -other
				"                       6"
				Name of the environment monitoring unit.
				"                      "
				Status of the communication between the environment monitoring unit and the device. 
				The environmental condition can be tested only when the communication is normal. 
				Options: 
				1.normal(1)   -  indicates that communication state is normal
				2.shutdown(2) -  indicates that communication state is shutdown
				3.fault(3)    -  indicates that communication state is fault
				4.abnormal(4) -  indicates that communication state is abnormal
				5.config(5)   -  indicates that communication state is config
				"                       o"
				RowStatus standard operation. 
				The creation and deletion operations are supported currently.
				"                       E"
				Version information of the environment monitoring unit.
				"                       F"
				ID of the shelf housing the environment monitoring unit.
				"                      c"
				The management status of the monitoring unit. 
				Options:
				1.noOperation(1)     -no any operation 
				2.reset(2)           -reset the monitoring board  
				3.manage(3)          -manage the monitoring unit   
				4.unmanage(4)        -undo manage the monitoring unit   
				5.clearsmokealarm(5) -clear the smoke alarm for miniEsc
				"                       �"
				ID of the slave object that the environment monitoring unit belongs to. 
				The  environment monitoring unit uses the slave object ID to communicate 
				with the upstream equipment.
				"                      �"
				The serial communication protocol type between the monitoring unit 
				and the upstream equipment.	The protocol types used are as follows:
				Options: 
				1.unknown(1)     -The protocol types is unknown     
				2.serialRS485(2) -The protocol types is serialRS485 
				3.serialRS232(3) -The protocol types is serialRS232   
				4.serialRS422(4) -The protocol types is serialRS422     
				"                       $"
				Environment CLEI Code.
				"                       "
				Power of the environment monitoring equipment associated with the 
				environment monitoring unit. Unit: Watt. 
				"                       A"
	                        Name of the environment type. 
				"                      >"
				Information table of the analog parameters monitored. 
				The indexes of this table are hwEnvEmuIndex or hwAnaChannelIndex.
				hwEnvEmuIndex is the index of the environment monitoring unit, 
				and hwAnaChannelIndex is the index of the analog parameter that 
				is monitored by a monitoring unit.
				"                      >"
				Information table of the analog parameters monitored. 
				The indexes of this entry are hwEnvEmuIndex or hwAnaChannelIndex.
				hwEnvEmuIndex is the index of the environment monitoring unit, 
				and hwAnaChannelIndex is the index of the analog parameter that 
				is monitored by a monitoring unit.
				"                       i"
				Index of the analog parameter that is monitored by the monitoring unit.
				Range: 0 - 255
				"                       S"
				Name of the analog parameter that is monitored by a monitoring unit. 
				"                       "
				This object indicates the type of the sensor that is used to test the
				Analog parameter. 
				Options:
				1.invalid(-1) -there is no valid sensor
				2.voltage(1)  -voltage sensor currently
				3.current(2)  -current sensor currently
				"                       T"
				This object indicates the unit of the analog parameter that is tested.
				"                       2"
				High limit of the analog normal work
				"                       1"
				Low limit of the analog normal work
				"                       ~"
				High limit of the analog alarm. The alarm is produced 
				when the measurement value is higher than this value
				"                       �"
				The low limit of the analog alarm. The alarm is produced
				when the measurement value is lower than this value.
				"                       R"
				The actual measurement value of the present analog.
				Unit: milli
				"                      �"
				The status of the present monitored.
				Options:
				1.normal(1)       -indicates that the measurement value is lower than the set high 
				                   limit of the alarm, and higher than the low limit				 
				2.overWorkHigh(2) -indicates that the measurement value is higher than the high limit of the alarm
				3.belowWorkLow(3) -indicates that the measurement value is lower than the low limit of the alarm
				4.abnormal(4)     -indicates that the measurement value is outside the scope of limit of the alarm
				5.invalid(-1)     -indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
				"                       �"
				RowStatus standard operation. The values 1 and 2 are supported currently. 
				1 indicates the activation status, and 2 indicates the non-activation status.
				"                      "
		        Analog alarm definition.
		        Options:
		        1.temperature(1)           -temperature alarm
		        2.humidity(2)              -humidity alarm
		        3.voltage(3)               -voltage alarm
		        4.current(4)               -current alarm
		        5.userDefinedAlarm0(100)   -analog user-defined alarm 0        
		        6.userDefinedAlarm1(101)   -analog user-defined alarm 1                                            
		        7.userDefinedAlarm2(102)   -analog user-defined alarm 2                                            
		        8.userDefinedAlarm3(103)   -analog user-defined alarm 3                                            
		        9.userDefinedAlarm4(104)  -analog user-defined alarm 4                                            
		        10.userDefinedAlarm5(105)  -analog user-defined alarm 5                                            
		        11.userDefinedAlarm6(106)  -analog user-defined alarm 6                                            
		        12.userDefinedAlarm7(107)  -analog user-defined alarm 7                                            
		        13.userDefinedAlarm8(108)  -analog user-defined alarm 8                                            
		        14.userDefinedAlarm9(109)  -analog user-defined alarm 9                                            
		        15.userDefinedAlarm10(110) -analog user-defined alarm 10                                          
		        16.userDefinedAlarm11(111) -analog user-defined alarm 11                                          
		        17.userDefinedAlarm12(112) -analog user-defined alarm 12                                          
		        18.userDefinedAlarm13(113) -analog user-defined alarm 13                                          
		        19.userDefinedAlarm14(114) -analog user-defined alarm 14                                          
		        20.userDefinedAlarm15(115) -analog user-defined alarm 15                                          
		        21.default(65535) -default analog alarm
		        "                      @"
				Information table of the digital parameters monitored. 
				The indexes of this table are hwEnvEmuIndex and hwDigChannelIndex.
				hwEnvEmuIndex is the index of the environment monitoring unit, 
				and hwDigChannelIndex is the index of the digital parameter that
				is monitored by a monitoring unit.
				"                      @"
				Information table of the digital parameters monitored. 
				The indexes of this entry are hwEnvEmuIndex and hwDigChannelIndex.
				hwEnvEmuIndex is the index of the environment monitoring unit, 
				and hwDigChannelIndex is the index of the digital parameter that
				is monitored by a monitoring unit.
				"                       h"
				Index of the digital parameter that is monitored by a monitoring unit.
				Range: 0 - 255
				"                       S"
				Name of the digital parameter that is monitored by a monitoring unit.
				"                      �"
				Alarm conditions. 
				Options:
				1.lowLevelAlarm(1)  -refers to the alarm produced when the digital sensor detects the low level
				2.highLevelAlarm(2) -refers to the alarm produced when the digital sensor detects the high level
				3.invalid(-1)       -indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
				"                      u"
				The status of the present monitored digital sensor
				Options:
				1.normal(1)   -indicates that the digital sensor works normally
				2.alarm(2)    -indicates that the digital sensor produces the alarm signal		
				3.invalid(-1) -indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
				"                       �"
				RowStatus standard operation. The values 1 and 2 are supported currently. 
				1 indicates the activation status, and 2 indicates the non-activation status.
				"                      �"
		        Digital alarm definition.
		        Options:
		        1.acvoltage(1)            -ac voltage alarm                 
		        2.acswitch(2)             -ac switch alarm                  
		        3.batteryvoltage(3)       -battery voltage alarm            
		        4.batteryfuse(4)          -battery fuse alarm               
		        5.loadfuse(5)             -load fuse alarm                  
		        6.rectifier(6)            -rectifier alarm                  
		        7.dcpower(7)              -dc power alarm                   
		        8.cupboarddoor(8)         -cupboard alarm                   
		        9.roomdoor(9)             -room door alarm                  
		        10.window(10)             -window alarm                     
		        11.thief(11)              -thief alarm                      
		        12.wiring(12)             -wiring alarm                     
		        13.fan(13)                -fan alarm                        
		        14.fire(14)               -fire alarm                       
		        15.fog(15)                -fog alarm                        
		        16.water(16)              -water alarm                      
		        17.diesel(17)             -diesel alarm                     
		        18.smell(18)              -smell alarm                      
		        19.aircondition(19)       -air-condition alarm              
		        20.arrester(20)           -arrester alarm 
		        21.dcvoltage(21)          -dc voltage
		        22.outputswitch(22)       -output swith       
		        23.hard-fault(23)         -hard-fault       
		        24.userDefinedAlarm0(100)  -digital user-defined alarm 0     
		        25.userDefinedAlarm1(101)  -digital user-defined alarm 1     
		        26.userDefinedAlarm2(102)  -digital user-defined alarm 2     
		        27.userDefinedAlarm3(103)  -digital user-defined alarm 3     
		        28.userDefinedAlarm4(104)  -digital user-defined alarm 4     
		        29.userDefinedAlarm5(105)  -digital user-defined alarm 5     
		        30.userDefinedAlarm6(106)  -digital user-defined alarm 6     
		        31.userDefinedAlarm7(107)  -digital user-defined alarm 7     
		        32.userDefinedAlarm8(108)  -digital user-defined alarm 8     
		        33.userDefinedAlarm9(109)  -digital user-defined alarm 9     
		        34.userDefinedAlarm10(110) -digital user-defined alarm 10    
		        35.userDefinedAlarm11(111) -digital user-defined alarm 11    
		        36.userDefinedAlarm12(112) -digital user-defined alarm 12    
		        37.userDefinedAlarm13(113) -digital user-defined alarm 13    
		        38.userDefinedAlarm14(114) -digital user-defined alarm 14    
		        39.userDefinedAlarm15(115) -digital user-defined alarm 15    
		        40.userDefinedAlarm16(116) -digital user-defined alarm 16    
		        41.userDefinedAlarm17(117) -digital user-defined alarm 17    
		        42.userDefinedAlarm18(118) -digital user-defined alarm 18    
		        43.userDefinedAlarm19(119) -digital user-defined alarm 19    
		        44.userDefinedAlarm20(120) -digital user-defined alarm 20    
		        45.userDefinedAlarm21(121) -digital user-defined alarm 21    
		        46.userDefinedAlarm22(122) -digital user-defined alarm 22    
		        47.userDefinedAlarm23(123) -digital user-defined alarm 23    
		        48.userDefinedAlarm24(124) -digital user-defined alarm 24    
		        49.userDefinedAlarm25(125) -digital user-defined alarm 25    
		        50.userDefinedAlarm26(126) -digital user-defined alarm 26    
		        51.userDefinedAlarm27(127) -digital user-defined alarm 27    
		        52.userDefinedAlarm28(128) -digital user-defined alarm 28    
		        53.userDefinedAlarm29(129) -digital user-defined alarm 29    
		        54.userDefinedAlarm30(130) -digital user-defined alarm 30    
		        55.userDefinedAlarm31(131) -digital user-defined alarm 31    
		        56.default(65535)          -digital alarm                   
		        "                      f"   
				Monitored digital out table.
				This table indicates information about whether digital parameter is monitored.
				The indexes of this table are hwEnvEmuIndex and hwControlOutIndex. 
				hwEnvEmuIndex is the index of the monitoring unit, 
				and hwControlOutIndex is the index of the digital out table monitored in the monitoring unit.
				"                      f"   
				Monitored digital out table.
				This table indicates information about whether digital parameter is monitored.
				The indexes of this entry are hwEnvEmuIndex and hwControlOutIndex. 
				hwEnvEmuIndex is the index of the monitoring unit, 
				and hwControlOutIndex is the index of the digital out table monitored in the monitoring unit.
				"                       b"
				Index of the digital out table monitored in the monitoring unit 
				Range: 0 - 255
				"                       5"
				Name of the monitored digital out table
				"                       �"
				Control Out administration: executes the on/off operation. 
				Options:
				1. on(1)  - trun on  
				2. off(2) - trun off
				"                       �"
				RowStatus standard operation. The values 1 and 2 are supported currently. 
				1 indicates the activation status, and 2 indicates the non-activation status.
				"                       �"
				Information table of fan monitoring. 
				The index of this table is hwEnvEmuIndex that comes from hwEnvironmentInfoTable. 
				hwEnvEmuIndex is the index of the monitoring unit whose monitoring type is fan.
				"                       �"
				Information table of fan monitoring. 
				The index of this entry is hwEnvEmuIndex that comes from hwEnvironmentInfoTable. 
				hwEnvEmuIndex is the index of the monitoring unit whose monitoring type is fan.
				"                       "
				Fan name
				"                      �"
				The fan control modes of the fan frame.
				Options: 
				1.manual(1)        -indicates that the fan is always on, and the fan speed can be manually adjusted
				2.emuAuto(2)       -indicates that the fan is in the automatic mode, and can be automatically 
				                    controlled depending on the temperature of the fan
				3.fixed(3)         -indicates that the fan is in the fixed mode, and adjusting its speed is not allowed                    
				4.mainboardAuto(4) -indicates that the fan is in the automatic mode, and can be automatically 
				                    controlled depending on the temperature of the boards in the frame 
				"                      " 
				For ESC fan, all should be checked to turn on the fan, 
				while all should not be checked to turn off the fan.
				Options:
				1.fan1(0) -indicates that the first fan needs to be opened
				2.fan2(1) -indicates that the second fan needs to be opened
				3.fan3(2) -indicates that the third fan needs to be opened
				4.fan4(3) -indicates that the fourth fan needs to be opened
				5.fan5(4) -indicates that the fifth fan needs to be opened
				6.fan6(5) -indicates that the sixth fan needs to be opened			
				"                      �"
				The fan temperature set, in unit of centigrade. 
				The MIB object only functions for the fan monitoring board of ESC and 
				is not applicable to the type of fan monitoring board.
				Only when the fan control mode of the fan frame is hwFanControl =auto (3), 
				the temperature control mode will take effect. 
				When detecting the environment temperature higher than the set value,
				the fan will be on (or increase its rotation).
				"                      �"
				The fan temperature set, in unit of centigrade. 
				The MIB object only functions for the fan monitoring board of ESC and 
				is not applicable to the type of fan monitoring board. 
				Only when the fan control mode of the fan frame is hwFanControl =auto (3),
				the temperature control mode will take effect. 
				When detecting the environment temperature is lower than the set value, 
				the fan will be turned off (decrease its rotation).
				
				"                       +"
				RowStatus standard operation.
				"                       G"
				The present temperature value, in unit of cent-centigrade
				"                      j"
				The adjusting rotation mode of the fan.
				Options:
				1.continue(1)    -continuous control
				2.discontinue(2) -discrete control
				3.percent(3)     -duty ratio control
				4.invalid(-1)    -indicates that the device can not get the value, e.g. the EMU does not support 
				                  this operation, or the EMU state is abnormal
				"                      s"
				When hwFanSpeedMode is the continue mode, 0 indicates the present wind speed +1, while 1 indicates the present wind speed -1.
				When hwFanSpeedMode is discontinuous, 0 indicates fixed high speed, while 1 indicates fixed low speed.
				When hwFanSpeedMode is percent,	the value delivered by the main control is the percent value, ranging from 35 to 100, used to initialize the rotation of fan for various device main controls.
				invalid(-1) indicates that the fan tray does not work normally. For example, the fan tray is disconnected from the control board, or some of the fans in the fan tray are blocked.
				"                       �"
				Fan Type Description. The values 1 and 2 are supported currently. 
				1 indicates the activation status, and 2 indicates the non-activation status.
				"                       �"
				Information table of temperature control unit. 
				The index of this table is hwEnvEmuIndex that comes from hwEnvironmentInfoTable. 
				hwEnvEmuIndex is the index of the monitoring unit whose monitoring type is temperature control unit.
				"                       �"
				Information table of temperature control unit. 
				The index of this entry is hwEnvEmuIndex that comes from hwEnvironmentInfoTable. 
				hwEnvEmuIndex is the index of the monitoring unit whose monitoring type is temperature control unit.
				"                       ."
				Heat Exchanger Type Description.
				"                       U"
				The rev of Heat Exchanger outer fan, in unit of RMP (rotate per minite)
				"                       U"
				The rev of Heat Exchanger inner fan, in unit of RMP (rotate per minite)
				"                       U"
				The temperature of Heat Exchanger starts to heat up, in unit of Celsius
				"                       Q"
				The temperature of Heat Exchanger stops heating, in unit of Celsius
				"                       �"
				Information table of optical receiver unit. 
				The index of this table is  hwFrameIndex that comes from hwFrameTable. 
				 hwFrameIndex is the index of the optical receiver unit whose optical receiver type is optical receiver unit.
				"                       g"
				Information table of optical receiver unit. 
				interface optical receiver config mode.
				"                       �"
				The state of Optical receiver
				The Optical receiver can be used only when it is online.
				Options: 
				1.online(1)   -  indicates that Optical state is online
				2.offline(2)  -  indicates that Optical state is offline
				"                       2"
				The model number of Optical receiver
				"                       2"
				The hard version of Optical receiver
				"                       6"
				The software version of Optical receiver
				"                      C"
				The product date of Optical receiver
				field  octets  contents                  range
 				-----  ------  --------                  -----
 	  			1        1-2   year                      0..65536
 	  			2         3    month                     1..12
 	  			3         4    day                       1..31
				"                       �"
				The optical power value of Optical receiver
				Its unit is dbm,its real accuracy is 0.01.
				SNMP uses it which has been enlarged 100 by host.
				user uses it which has been lessened 100 by SNMP.
				"                      b"
				The optical power alarm state of Optical receiver
				The Optical receiver can be used only when it is normal.
				Options: 
				1.normal(1)   -  indicates that Optical power alarm state is normal
				2.low(2)      -  indicates that Optical power alarm state is low
				3.high(3)     -  indicates that Optical power alarm state is high
				"                       "
				The optical power low threshold of Optical receiver
				Its unit is dbm,its real accuracy is 0.01.
				SNMP uses it which has been enlarged 100 by host.
				user uses it which has been lessened 100 by SNMP.
				Its real range is -10dbm~3dbm,mib range is -1000dbm~300dbm.
				"                      !"
				The optical power high threshold of Optical receiver
				Its unit is dbm,its real accuracy is 0.01.
				SNMP uses it which has been enlarged 100 by host.
				user uses it which has been lessened 100 by SNMP.
				Its real range is -10dbm~3dbm,mib range is -1000dbm~300dbm.
				"                       j"
				The optical AGC start of Optical receiver
				Its unit is dBm,its real range is -4dBm~3dBm.
				"                       �"
				The RF power value of Optical receiver
				Its unit is dBuV,its real accuracy is 0.1.
				SNMP uses it which has been enlarged 10 by host.
				user uses it which has been lessened 10 by SNMP.
				"                      N"
				The RF power alarm state of Optical receiver
				The Optical receiver can be used only when it is normal.
				Options: 
				1.normal(1)   -  indicates that RF power alarm state is normal
				2.low(2)      -  indicates that RF power alarm state is low
				3.high(3)     -  indicates that RF power alarm state is high
				"                      "
				The RF power low threshold of Optical receiver
				Its unit is dBuV,its real accuracy is 0.1.
				SNMP uses it which has been enlarged 10 by host.
				user uses it which has been lessened 10 by SNMP.
				Its real range is 85dBuV~130dBuV,mib range is 850dBuV~1300dBuV.
				"                      "
				The RF power high threshold of Optical receiver
				Its unit is dBuV,its real accuracy is 0.1.
				SNMP uses it which has been enlarged 10 by host.
				user uses it which has been lessened 10 by SNMP.
				Its real range is 85dBuV~130dBuV,mib range is 850dBuV~1300dBuV.
				"                       c"
				The RF ATT value of Optical receiver
				Its unit is db.
				Its range is 0db~20db.
				"                       �"
				The RF switch of Optical receiver
				The Optical receiver can be used only when it is on.
				Options: 
				1.off(1)   -  indicates that RF Switch state is off
				2.on(2)    -  indicates that RF Switch state is on
				"                       ."
				The barcode of Optical receiver 
				"                       �"
				The current input voltage of Optical receiver.
				Its unit is V,its real accuracy is 0.1.
				SNMP uses it which has been enlarged 10 by host.
				user uses it which has been lessened 10 by SNMP.
				+5V is positive voltage.
				"                       �"
				The current input voltage of Optical receiver.
				Its unit is V,its real accuracy is 0.1.
				SNMP uses it which has been enlarged 10 by host.
				user uses it which has been lessened 10 by SNMP.
				+24V is positive voltage.
				"                       Q"
				Start value of the AGC range for optical paths of Optical receiver.
				"                               �"
				The communication alarm of environment monitoring board, 
				reporting the environment monitoring unit ID.
				This trap message is reported when the communication between the emu and control board is fault.
				"                 �"
				The communication alarm recovery of the environment monitoring,
				reporting the environment monitoring unit ID.    
				This trap message is reported when the communication between the emu and control board resumes.        
				"                 �" 
				The alarm recovery of the analog exception, 
				reporting the environment monitoring unit ID.  
				This trap message is reported when there is an analog exception in emu. 
				"                 �" 
				The alarm recovery of the analog exception, 
				reporting the environment monitoring unit ID.    
				This trap message is reported when the analog exception recovery in emu.    
				"                 �" 
				The alarm of too high an analog, reporting the environment
				monitoring unit ID and the channel ID of the analog sensor.		
				This trap message is reported when an analog value is too high. 				
				"                 �" 
				The alarm of too high analog resume, 
				reporting the environment monitoring unit ID.   
				This trap message is reported when an analog value 
				returns to normal range from the high value. 			
				"                 �" 
				The alarm of too low an analog, reporting the environment
				monitoring unit ID and the channel ID of the analog sensor.  
				This trap message is reported when an analog value is too low. 			
				"                 �" 
				The alarm of too low an analog, reporting the 
				environment monitoring unit ID.  
				This trap message is reported when an analog value
				returns to normal range from the low value. 			
				"                 �"
				The control alarm, reporting the environment monitoring unit ID.
				This trap message is reported when emu control operation fails.		
				"                 �"
				The control alarm, reporting the environment monitoring unit ID.	
				This trap message is reported when emu control operation resumes.		
				"                 �" 
				The digital measure alarm, reporting the environment 
				monitoring unit ID and the channel ID of the digital sensor.
				This trap message is reported when emu measure operation fails.	
				"                 �" 
				The digital measure alarm recovery, reporting the environment
				monitoring unit ID and the channel ID of the digital sensor.  
				This trap message is reported when emu measure operation resumes.	 
				"                 �"
				Fan nonexistance alarm.      
				This trap message is reported when there is no fan device connected to control board.	  				
				"                 �" 
				Fan nonexistance alarm recovery.     
				This trap message is reported when there is a fan device connected to control board.	  
				"                 t" 
				Fan running status alarm.
				This trap message is reported when the fan run state gets abnormal.	  
				"                                         I"The agent generates this trap when a new
			    EMU autofind.
			    "                             l"The agent generates this trap when the
			 communication of the EMU with the host
			 is abnormal.
			 "                 g"The agent generates this trap when the
			communication of the EMU with the host 
			recovers.
			"                 P"The agent generates this trap when the
			 a Hardware exception occurs.
			 "                 P"The agent generates this trap when the
			 a Hardware exception Recover
			 "                 F"The agent generates this trap when the
			 emu autofind fail.
			 "                 T"The agent generates this trap when 
			 the fan is not configured or fails.
			 "                 x"The agent generates this trap when the
			 communication of the OpticalReceiver with the host
			 is abnormal.
			 "                 s"The agent generates this trap when the
			communication of the OpticalReceiver with the host 
			recovers.
			"                 b"The agent generates this trap when 
			 the optical power of OpticalReceiver is abnormal.
			 "                 n"The agent generates this trap when 
			 the optical power of OpticalReceiver recovers to normal rage.
			 "                 ]"The agent generates this trap when 
			 the RF power of OpticalReceiver is abnormal.
			 "                 i"The agent generates this trap when 
			 the RF power of OpticalReceiver recovers to normal rage.
			 "                         O"The agent generates this trap when an unnamed
			 analog alarm occurs.
			 "                 Q"The agent generates this trap when an unnamed
			 analog alarm recovers.
			 "                 T"The agent generates this trap when the analog
			 temperature alarm occurs.
			 "                 V"The agent generates this trap when the analog
			 temperature alarm recovers.
			 "                 Q"The agent generates this trap when the analog
			 humidity alarm occurs.
			 "                 S"The agent generates this trap when the analog
			 humidity alarm recovers.
			 "                 P"The agent generates this trap when the analog
			 voltage alarm occurs.
			 "                 R"The agent generates this trap when the analog
			 voltage alarm recovers.
			 "                 P"The agent generates this trap when the analog
			 current alarm occurs.
			 "                 R"The agent generates this trap when the analog
			 current alarm recovers.
			 "                         C"The agent generates this trap when the
			 fan is blocked.
			 "                 P"The agent generates this trap when the
			 fan is recovered from block.
			 "                 S"The agent generates this trap when the
			 temperature of fan is too high.
			 "                 ]"The agent generates this trap when the
			 temperature of fan recover from too high.
			 "                 O"The agent generates this trap when a
			 unnamed digital fault occurs.
			 "                 K"The agent generates this trap when a
			 unnamed digital recovers.
			 "                 S"The agent generates this trap when Output
			 switch digital fault occurs.
			 "                 P"The agent generates this trap when Output
			 switch  digital recovers.
			 "                 a"The agent generates this trap when 
			 The AC voltage is out of the normal 
			 range.
			 "                 c"The agent generates this trap when 
			 The AC voltage recovers to the 
			 normal range.
			 "                 `"The agent generates this trap when 
			 The AC switch is out of the normal 
			 range.
			 "                 b"The agent generates this trap when 
			 The AC switch recovers to the 
			 normal range.
			 "                 _"The agent generates this trap when 
			 The batt vol is out of the normal 
			 range.
			 "                 a"The agent generates this trap when 
			 The batt vol recovers to the 
			 normal range.
			 "                 c"The agent generates this trap when 
			 The battery fuse is out of the normal 
			 range.
			 "                 e"The agent generates this trap when 
			 The battery fuse recovers to the 
			 normal range.
			 "                 `"The agent generates this trap when 
			 The load fuse is out of the normal 
			 range.
			 "                 b"The agent generates this trap when 
			 The load fuse recovers to the 
			 normal range.
			 "                 `"The agent generates this trap when 
			 The Rectifier is out of the normal 
			 range.
			 "                 b"The agent generates this trap when 
			 The Rectifier recovers to the 
			 normal range.
			 "                 _"The agent generates this trap when 
			 The dc-power is out of the normal 
			 range.
			 "                 a"The agent generates this trap when 
			 The dc-power recovers to the 
			 normal range.
			 "                 _"The agent generates this trap when 
			 The Roomdoor is out of the normal 
			 range.
			 "                 a"The agent generates this trap when 
			 The Roomdoor recovers to the 
			 normal range.
			 "                 _"The agent generates this trap when 
			 The Roomdoor is out of the normal 
			 range.
			 "                 a"The agent generates this trap when 
			 The Roomdoor recovers to the 
			 normal range.
			 "                 ]"The agent generates this trap when 
			 The WIRING is out of the normal 
			 range.
			 "                 \"The agent generates this trap when 
			The WIRING recovers to the 
			normal range.
			"                 W"The agent generates this trap when 
			The FAN is out of the normal 
			range.
			"                 ["The agent generates this trap when 
			 The FAN recovers to the normal
			 range.
			 "                 ["The agent generates this trap when 
			 The Fire is out of the normal 
			 range.
			 "                 \"The agent generates this trap when 
			 The Fire recovers to the normal
			 range.
			 "                 Z"The agent generates this trap when 
			 The Fog is out of the normal 
			 range.
			 "                 ["The agent generates this trap when 
			 The Fog recovers to the normal
			 range.
			 "                 \"The agent generates this trap when 
			 The Water is out of the normal 
			 range.
			 "                 ]"The agent generates this trap when 
			 The Water recovers to the normal
			 range.
			 "                 ]"The agent generates this trap when 
			 The Diesel is out of the normal 
			 range.
			 "                 ^"The agent generates this trap when 
			 The Diesel recovers to the normal
			 range.
			 "                 \"The agent generates this trap when 
			 The Smell is out of the normal 
			 range.
			 "                 ]"The agent generates this trap when 
			 The Smell recovers to the normal
			 range.
			 "                 d"The agent generates this trap when 
			 The Air condition is out of the normal 
			 range.
			 "                 e"The agent generates this trap when 
			 The Air condition recovers to the normal
			 range.
			 "                 _"The agent generates this trap when 
			 The arrester is out of the normal 
			 range.
			 "                 `"The agent generates this trap when 
			 The arrester recovers to the normal
			 range.
			 "                 ]"The agent generates this trap when 
			 The DC VOL is out of the normal 
			 range.
			 "                 ^"The agent generates this trap when 
			 The DC VOL recovers to the normal
			 range.
			 "                 O"The agent generates this trap when more
			 than two fans are blocked.
			 "                 Z"The agent generates this trap when the 
			 critical multi-fan blocking recovers.
			 "                 P"The agent generates this trap when the 
			 48V input switch is closed.
			 "                 P"The agent generates this trap when the 
			 48V input switch is opened.
			 "                     �"
				The status of the fan. 
				Options:
				1.notconfig(1) -The status of the fan is notconfig 
				2.failure(2)   -The status of the fan is fail
				"                      ,"
				The reason of the auto-finding failure:
				Options: 
				1.fullemu(1)               -No enough EMU IDs are available
				2.shelfnotsupport(2)       -The EMU does not support the auto discovery function
				3.emunotsupportautofind(3) -The shelf does not support the EMU of this type
				"                       3"				
				The NodeId of the auto-found EMU.
				"                       1"				
				The type of the auto-found EMU.
				"                       7"				
				The board name of the auto-found EMU.
				"                      