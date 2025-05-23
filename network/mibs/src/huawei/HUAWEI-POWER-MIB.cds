z--  ============================================================================
-- Copyright (C)2013  by  HUAWEI TECHNOLOGIES. All rights reserved.
-- Description:  This MIB is used for defining Power Monitor management 
--               MIB objects.     
-- Reference:  
-- Version: V3.35
-- ============================================================================
   �"Basic unit of measure:
				 1.pressure:indicated by mV, 1V = 1000 mV
				 2.current:indicated by mA,  1A = 1000 mA
			 	 3.temperature: indicated by 1% degree centigrade
				"                                                                                             Q"
				This MIB is used for defining Power Monitor management MIB objects.
				"?"Huawei Industrial Base            
			              Bantian, Longgang                 
			              Shenzhen 518129                   
			              People's Republic of China        
			              Website: http://www.huawei.com    
			              Email: support@huawei.com         
			             " "201312280000Z" "201311160000Z" "201212280000Z" "201212140000Z" "201207240000Z" "201206250000Z" "201201090000Z" "201112170000Z" "201112080000Z" "201108170000Z" "201103160000Z" "201012170000Z" "201011100000Z" "201007180900Z" "201006120900Z" "201004210900Z" "201004080900Z" "201003090900Z" "201002060900Z" "201001290900Z" "200611100900Z" "200610250900Z" 1"V3.35, modify the leaf of hwRectifierOperState." 1"V3.34, modify the leaf of hwRectifierOperState." �"V3.33, added enumerate etp48150(128) in hwPowerType leaf for smu EMU,
                                    added enumerate h801pmu(127) in hwPowerType leaf for H801PMU."�"V3.32, add the leaf of hwBatteryLogTestBatteryTemperature, hwBatteryLogTestBatteryCurrent 
                                    and hwBatteryGroupBomCode for battery smart manage.
                                    add enumerate sleep(6) in hwChargeOperStatus leaf.
                                    add enumerate supplyRecoverAutotestTerminated(7) in hwBatteryTestResult leaf." f"V3.31, add the leaf of hwPowerModuleRestoreTrap and hwPowerModuleMismatchTrap for SMU digital alarm.""V3.30, add enumerate smu(124) in hwPowerType leaf for smu EMU,
                                    modified the name of hwBatteryTestPrealarmThreshold to hwBatteryTestAlarmThreshold, 
                                    modified description of hwBatteryTestDuration,hwBatteryTestTerminateVoltage and hwBatteryTestAlarmThreshold,
                                    delete enumerate smu(124),
                                    add enumerate etp4830(125) and enumerate etp4890(126) in hwPowerType leaf for smu EMU"N"V3.29, add the leafs of hwEmmBatt1TempFaultTrap, hwEmmBatt1TempRestoreTrap, hwEmmEnviHumFaultTrap,
                                    hwEmmEnviHumRestoreTrap, hwEmmEnvi1TempFaultTrap, hwEmmEnvi1TempRestoreTrap, hwEmmBattTemFaultTrap,
                                    hwEmmBattTemRecoverTrap and hwEmmPowerBatteryOffRecoverTrap" �"V3.28, added hwBatteryLogTestEfficiency the objects of hwEmmPowerBattaryTestStopTrap.
                                    add the leaf of hwEmmPowerBatteryUnDetectTrap and ch_hwEmmPowerBatteryDetectRecoverTrap for SMU digital alarm." �"V3.27, added hwBatteryTestPrealarmThreshold leaf node for getting and setting battery test prealarm threshold.
                                    added hwBatteryLogTestEfficiency leaf node for inquiry efficiency setting. " H"V3.25, add the leaf of hwEmmPowerBatteryOffTrap for battary power-off." �"V3.25, added enumerate discharge(5) in hwChargeOperStatus leaf for discharge.
                                    add enumerate LiFeBattery(123) in hwPowerType leaf for LiFeBattery EMU" ["V3.24, added Objects hwBatteryLogTestBatteryStatus of hwEmmPowerBattaryTestStopTrap node."4"V3.23, added enumerate power3000(122) in hwPowerType leaf for Power3000 EMU.
                                    Modified the objects of hwEmmPowerBattloopFaultTrap and hwEmmPowerBattloopRecoverTrap.
                                    Added hwEmmDigMainsupplyFaultTrap and hwEmmDigMainsupplyRecoverTrap."4"V3.22, added enumerate power3000(122) in hwPowerType leaf for Power3000 EMU.
                                    Modified the objects of hwEmmPowerBattloopFaultTrap and hwEmmPowerBattloopRecoverTrap.
                                    Added hwEmmDigMainsupplyFaultTrap and hwEmmDigMainsupplyRecoverTrap." ?"V3.21, modified description of hwBatteryGroupOperStatus node." ."V3.20, modified node name to avoid conflict." J"V3.19, modified this MIB for clearing simple tester errors and warnings." W"V3.18, added hwBatteryInstallTime leaf node for getting the battery installation time" !"V3.17,Modified the description." >"V3.16,Deleted simple tester MIB compile errors and warnings." %"V3.09,Added hwBatteryHardwareState." $"V3.08,Added hwBatteryVoltageState."                  "Power basic information table. The indexes of this table are hwEnvEmuIndex 
			 and hwPowerIndex. hwEnvEmuIndex comes from hwEnvironmentInfoTable and is 
		 	 the index of the monitoring unit. hwPowerIndex is the index of the power 
			 supply monitored by the monitoring unit.
			"                      "Power basic information table. The indexes of this entry are hwEnvEmuIndex 
			 and hwPowerIndex. hwEnvEmuIndex comes from hwEnvironmentInfoTable and is 
		 	 the index of the monitoring unit. hwPowerIndex is the index of the power 
			 supply monitored by the monitoring unit.
			"                       <"Index of the power supply monitored by the monitoring unit"                      +"Type of the Power emu device.
			 Options:
			 1.power4875(1)              -  Type of the Power emu device is power4875  
			 2.power4810(2)              -  Type of the Power emu device is power4810                                           
			 3.power48100(3)             -  Type of the Power emu device is power48100                                            
			 4.power4850(4)              -  Type of the Power emu device is power4850                                            
			 5.power48240(5)             -  Type of the Power emu device is power48240                                            
			 6.power48120(6)             -  Type of the Power emu device is power48120                                            
			 7.power48300(7)             -  Type of the Power emu device is power48300                                            
			 8.power48240SinglePhase(8)  -  Type of the Power emu device is power48240SinglePhase                              
			 9.universalPower(9)         -  Type of the Power emu device is universalPower                                      
			 10.power4845(10)            -  Type of the Power emu device is power4845                                         
			 11.rpower(11)               -  Type of the Power emu device is rpower                                           
			 12.power4805(15)            -  Type of the Power emu device is power4805                                        
			 13.power4820(16)            -  Type of the Power emu device is power4820                                        
			 14.onps(17)                 -  Type of the Power emu device is onps                                        
			 15.power4875l(18)           -  Type of the Power emu device is power4875l                                        
			 16.psma(100)                -  Type of the Power emu device is psma                                        
			 17.perm-al175nt(101)        -  Type of the Power emu device is perm-al175nt                                     
			 18.mcs1800(102)             -  Type of the Power emu device is mcs1800                                     
			 19.mcs1800A(103)            -  Type of the Power emu device is mcs1800A                                     
			 20.mcs3000(104)             -  Type of the Power emu device is mcs3000                                     
			 21.sm40sm60(105)            -  Type of the Power emu device is sm40sm60                                     
			 22.scu(106)                 -  Type of the Power emu device is scu                                     
			 23.eltek(107)               -  Type of the Power emu device is eltek                                             
			 24.dk04(108)                -  Type of the Power emu device is dk04                                             
			 25.dk04C(109)               -  Type of the Power emu device is dk04C                                             
			 26.dpc(110)                 -  Type of the Power emu device is dpc                                             
			 27.power4830(120)           -  Type of the Power emu device is power4830                                        
			 28.h831pmua(121)            -  Type of the Power emu device is h831pmua                                        
			 29.power3000(122)           -  Type of the Power emu device is power3000
			 30.liFeBattery(123)         -  Type of the Power emu device is LiFeBattery    
			 31.etp4830(125),            -  Type of SMU Power emu device is etp4830  
		   32.etp4890(126),            -  Type of SMU Power emu device is etp4890     
		   33.h801pmu(127),            -  Type of the Power emu device is h801pmua     
		   34.etp48150(128),           -  Type of SMU Power emu device is etp48150                         
			 35.other(255)               -  other Power Type         
			"                       "
			Power name.
			"                      t"Power board status:
			 Refers to the status of communication between the internal monitor board 
			 of the power device and the external upper board.
			 Options: 
			 1.normal(1)    -  indicates the normal state
			 2.fault(2)     -  indicates the faulty state
			 3.protecting(3)-  indicates that the backup power supply works in the protection state
			 4.switched(4)  -  indicates that the main power supply is faulty, and is protected by backup power supply 
			 5.invalid(-1)  -  indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal  
			"                       �"RowStatus standard operation. The values 1 and 2 are supported currently. 
			 1 indicates the activation status, and 2 indicates the non-activation status."                      `"Control mode of the power monitor module.
			 Options: 
			 1.manualControl(1) - control by manual, the remote mode
			 2.autoControl(2)   - auto control mode, the default is auto control mode
			 3.invalid(-1)      - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                       X"Apply for remote power system. 
			 It is the frame ID that the remote unit exists in"                       �"Apply for remote power system. 
			 It is used to enable or disable N+1 protection function.
			 Options: 
			 1.protect(1)     -  enables the N+1 protection function
			 2.undoProtect(2) -  disables the N+1 protection function"                       "Version of power"                       �"
			Power supply modes.
			Options: 
			1.ac(1)      - indicates the AC power supply  
			2.battery(2) - indicates power supply by the batteries    
		  "                      "AC input table. Through this table, 
			 AC input monitoring parameters of 4875 power supply, 4845 power supply, 
			 4810 power supply, 48100 power supply, and 48240 power supply can 
			 be set and queried.
			 The indexes of this table are hwEnvEmuIndex, hwPowerIndex, and hwACLoopIndex. 
			 hwEnvEmuIndex is the index of the monitoring unit. 
			 hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			 hwACLoopIndex is the index of the AC input power supply monitored by the monitoring unit.
			"                      "AC input table. Through this table,
			 AC input monitoring parameters of 4875 power supply, 4845 power supply, 
			 4810 power supply, 48100 power supply, and 48240 power supply can 
			 be set and queried.
			 The indexes of this entry are hwEnvEmuIndex, hwPowerIndex, and hwACLoopIndex. 
			 hwEnvEmuIndex is the index of the monitoring unit. 
			 hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			 hwACLoopIndex is the index of the AC input power supply monitored by the monitoring unit."                       j"Input loop index. There are two channels of AC current input, 
			 which are the backup for each other."                      :"Status of power supply.
			 Options:
			 1.normal(1)         - indicates that the power supply is normal
			 2.offline(2)        - indicates that the power supply is offline
		 	 3.exceedVoltage(3)  - indicates that the power supply is overvoltage
			 4.belowVoltage(4)   - indicates that the power supply is undervoltage
			 5.backup(5)         - indicates that the power supply is not supported currently
			 6.invalid(-1)       - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                       #"AC Inuput voltage A.
			Unit: mV"                       ""AC input Current A.
			Unit: mA"                       ""AC input voltage B.
			Unit: mv"                       ""AC input current B.
			Unit: mA"                       #"AC input voltage C. 
			Unit: mV"                       ""AC input current C.
			Unit: mA"                       5"AC input over-voltage alarm threshold.
			Unit: mV"                       6"AC input under-voltage alarm threshold.
			Unit: mV"                       U"Only the add operation, delete operation, and status query operation are supported."                      �"Phase AB/A of AC input state.
			 Options:
			 1. normal(0)            - indicates that the Phase AB/A of AC input state is normal
			 2. belowVoltage(1)      - indicates that the Phase AB/A of AC input state is belowVoltage          
			 3. exceedVoltage(2)     - indicates that the Phase AB/A of AC input state is exceedVoltage          
			 4. missing-phase(3)     - indicates that the Phase AB/A of AC input state is missing-phase          	
			"                      �"Phase BC/B of AC input state.
			 Options: 
			 1. normal(0)            - indicates that the Phase BC/B of AC input state is normal
			 2. belowVoltage(1)      - indicates that the Phase BC/B of AC input state is belowVoltage          
			 3. exceedVoltage(2)     - indicates that the Phase BC/B of AC input state is exceedVoltage          
			 4. missing-phase(3)     - indicates that the Phase BC/B of AC input state is missing-phase        			
			"                      �"Phase CA/C of AC input state.
			 Options:
			 1. normal(0)            - indicates that the Phase CA/C of AC input state is normal
			 2. belowVoltage(1)      - indicates that the Phase CA/C of AC input state is belowVoltage          
			 3. exceedVoltage(2)     - indicates that the Phase CA/C of AC input state is exceedVoltage          
			 4. missing-phase(3)     - indicates that the Phase CA/C of AC input state is missing-phase    			
			"                      �"DC output table. Through this table,
			DC output monitoring parameters of 4875 power supply, 4845 power supply, 
			4810 power supply, 482400 power supply, and 48100 power supply can 
			be set and queried.
			The indexes of this table are hwEnvEmuIndex and hwPowerIndex. 
			hwEnvEmuIndex, which comes from hwEnvironmentInfoTable, 
			is the index of the monitored unit. 
			hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			"                      �"DC output table. Through this table,
			DC output monitoring parameters of 4875 power supply, 4845 power supply, 
			4810 power supply, 482400 power supply, and 48100 power supply can 
			be set and queried.
			The indexes of this entry are hwEnvEmuIndex and hwPowerIndex. 
			hwEnvEmuIndex, which comes from hwEnvironmentInfoTable, 
			is the index of the monitored unit. 
			hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			"                       !"DC voltage output.
			Unit: mV"                       ""DC current output.
			 Unit: mA"                       I"Output DC exceed-voltage alarm point.
			 Default: 58000
			 Unit: mV"                       J"Output DC below-voltage alarm point . Default value is 45V.
			Unit: mV"                      �"DC output voltage status.
			 Options:
			 1. normal(1)           - indicates that the DC output voltage state is normal
			 2. exceedVoltage(2)    - indicates that the DC output voltage state is exceedVoltage          
			 3. belowVoltage(3)     - indicates that the DC output voltage state is belowVoltage          
			 4.invalid(-1)     	 	  - indicates that device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                       5"Output DC exceed-current alarm point .
			Unit: mA"                       1"Output below-current alarm point .
			Unit: mA"                      �"DC output current status.
			Options:
			 1.normal(1)         - indicates that the DC output current state is normal
			 2.exceedVoltage(2)  - indicates that the DC output current state is exceedVoltage
			 3.belowVoltage(3)   - indicates that the DC output current state is belowVoltage
			 4.invalid(-1)       - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                       "RowStatus standard operation"                       0"Total load current of DC output .
			Unit: mA"                       |"The off protection point under the load temperature, by default, 
			 it is 65 degrees centigrade.
			 Unit: 0.01 degree"                      I"DC output running status.
			 Options:
			 1.battery1ChargeCurOver(0) - indicates battery 1 charge over-current 
			 2.battery2ChargeCurOver(1) - indicates battery 2 charge over-current 
			 3.batteryVoltageOver(2)    - indicates output over-voltage 
			 4.batteryVoltageLack(3)    - indicates battery lack-voltage 
			 5.loadOff(4)               - indicates load off twice 
			 6.batteryOff(5)            - indictes battery protection (off once)
			 7.communicationFailure(6)  - indicates that the communication fails
			 8.dcOutManual(7)           - indicates DC by manual"                       �"DC communication status.
			 Options:
			 1.normal(0)  - indicates that the DC communication state is normal
			 2.fault(1)   - indicates that the DC communication state is fault	
			"                      �"Load information table. Through this table, the load parameter can be set and queried.
			 The indexes of this table are hwEnvEmuIndex, hwPowerIndex, and hwLoadIndex.
			 hwEnvEmuIndex, which comes from hwEnvironmentInfoTable, is the index of the monitored unit. 
			 hwPowerIndex is the index of the power supply monitored by the monitoring unit. 
			 hwLoadIndex is the index of the monitored load.
			"                      �"Load information table. Through this table, the load parameter can be set and queried.
			 The indexes of this entry are hwEnvEmuIndex, hwPowerIndex, and hwLoadIndex.
			 hwEnvEmuIndex, which comes from hwEnvironmentInfoTable, is the index of the monitored unit. 
			 hwPowerIndex is the index of the power supply monitored by the monitoring unit. 
			 hwLoadIndex is the index of the monitored load.
			"                       @"Loop index: usually each DC output loop corresponds to a load."                      )"Load operation.
			 Options:
			 1. on(1)       - indicates that the Load is enabled
			 2. off(2)      - indicates that the Load is disabled
			 3. invalid(-1) - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                      �"Status of power supply.
			 Options:
			 1. normal(1)     - indicates that the state of power supply is normal
			 2. abnormal(2)   - indicates that the state of power supply is abnormal
			 3. stop(3)       - indicates that the state of power supply is stopping power supply
			 4. invalid(-1)   - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                        "Present current .
			Unit: mA"                        "Present voltage .
			Unit: mV"                       �"Off voltage (Stop external voltage), in unit of mV,
			 When DC output voltage exceeds the value, the load will be automatically cut off.
			 Default: 43500
			 Unit: mV
			"                       ?"Load name: usually each DC output loop corresponds to a load."                       "RowStatus standard operation"                      S"Load fuse state, including the auxiliary load fuse.
			 Options:
			 1. on(1)       - indicates that the fuse is connected
			 2. off(2)      - indicates that the fuse is disconnected
			 3. invalid(-1) - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                       "
			load hore index
			"                      �"Rectifier module table. 
			Through this table, the status information of the rectifier module 
			can be set and queried.
			The indexes of this table are hwEnvEmuIndex, hwPowerIndex, and hwRectifierIndex.
			hwEnvEmuIndex, which comes from hwEnvironmentInfoTable,
			is the index of the monitored unit. 
			hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			hwRectifierIndex is the index of the monitored rectifier module under the power supply.		
			"                      �"Rectifier module table. 
			Through this table, the status information of the rectifier module 
			can be set and queried.
			The indexes of this entry are hwEnvEmuIndex, hwPowerIndex, and hwRectifierIndex.
			hwEnvEmuIndex, which comes from hwEnvironmentInfoTable,
			is the index of the monitored unit. 
			hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			hwRectifierIndex is the index of the monitored rectifier module under the power supply.	
			"                       \"Rectifier Module index. There are multiple rectifier 
			 modules to a power source.
			"                      Y"Switch operation of rectifier module.
			 Options:		
			 1.on(1)        - indicates that the Rectifier module is enabled
			 2.off(2)       - indicates that the Rectifier module is disabled
			 3.invalid(-1)  - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                      "Present state, 5 and 6 respectively indicates the on/off state of the 48100 power device.
			 Options:	
		 	 1. normal(1)               -  indicates that the Rectifier operation state is normal                                
			 2. fault(2)                -  indicates that the Rectifier operation state is fault                                     
			 3. protect(3)              -  indicates that the Rectifier operation state is protect                                      
			 4. communicationFailure(4) -  indicates that the Rectifier operation state is communicationFailure                                 
			 5. on(5)                   -  indicates that the Rectifier operation state is on                                        
			 6. noConfig(6)             -  indicates that the Rectifier operation state is not Configured                                        
			 7. offline(7)              -  indicates that the Rectifier operation state is offline                                       
			 8. close(8)                -  indicates that the Rectifier operation state is closed                                        
			 9. invalid(-1)             -  indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                       "Output voltage .
			Unit: mV"                       "Output current .
			Unit: mA"                       "RowStatus standard operation"                       "current limit switch"                      B"Running state of rectifier module.
			 Options:	
			 1.rectifierOn(0)    - indicates that the module is on
			 2.averageCharge(1)  - indicates that the module is being averagely charged.
			 3.output(2)         - indicates that the module has output
			 4. isLimit(3)       - indicates the current limit switch
			"                      "Charging state of rectifier.
			 Options:	
			 1. float(0)     - indicates that the Charge state of Rectifier is float
			 2. average(1)   - indicates that the Charge state of Rectifier is average
			 3. test(2)      - indicates that the Charge state of Rectifier is test
			"                          "Basic information table of battery group. 
			 The indexes of this table are hwEnvEmuIndex and hwPowerIndex.
			 hwEnvEmuIndex is the index of the monitored unit, 
			 and hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			"                      "Basic information table of battery group. 
			 The indexes of this entry are hwEnvEmuIndex and hwPowerIndex.
			 hwEnvEmuIndex is the index of the monitored unit, 
			 and hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			"                       ;"Total capacity of the present battery group.
			Unit: Ah"                       �"Total remain capacity of the present battery group .
			invalid(-1) indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal.
			Unit: Ah"                       "Number of battery group"                       �"When the voltage of the battery group is lower than the value set, 
			 the battery group will no longer supply power. Its unit is mV.
			 Default: 43000
			 Unit: mV
			"                       �"Charge limit point quotient, the product of which and the max capacity 
			 of the battery group is the max charge current allowed. 
			 Default: 15
			 Unit: percent
			"                       "RowStatus standard operation"                      h"The State of the battery supply which was connected with Power EMU.
			 To use this function,please confirm that the battery group was connected with Power EMU and the Power EMU state is Normal. 
			 When the mains supply is abnormal, the battery group usually supplies power in an emergency. 
			 Options:
			 1.on(1)       - indicates that the state of the battery power supply is on
			 2.off(2)      - indicates that the state of the battery power supply is off
			 3.invalid(-1) - indicates that the device can not get the value,e.g. the EMU does not support this operation, or the EMU state is abnormal"                       �"When the voltage of the battery group is higher than the value set, the battery group 
			 will no longer supply power. Its unit is mV.
			 Default: 43000
			 Unit: mV
			"                       o"The twice off protection voltage of the battery group. Its unit is mV.
			 Default: 44000
			 Unit: mV
			"                       u"The first off protection voltage of the battery,
			 whose default is 43V.
			 Default: 43000
			 Unit: mV
			 "                       �"The high temperature off protection point of the battery group, 
			 whose default is 50 degrees centigrade.
			 Unit: 0.01 degree
			"                       1"
			The installing date of battery group.
			"                       $"
			The BOM code of battery.
			"                      K"Charge management table. 
			 Through this table, the charging parameter of the battery can be set and queried. 
			 The indexes of this table are hwEnvEmuIndex and hwPowerIndex.
			 hwEnvEmuIndex is the index of the monitored unit,
			 and hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			"                      F"Charge management table. 
			 Through this table, the charging parameter of the battery can be set and queried. 
			 The indexes of this entry are hwEnvEmuIndex and hwPowerIndex.
			 hwEnvEmuIndex is the index of the monitored unit,
			 and hwPowerIndex is the index of the power supply monitored by the monitoring unit."                      �"Charge management mode.
			 Options:
			 1. average(1)     - indicates that the charge management mode is average charge
			 2. float(2)       - indicates that the charge management mode is float charge
			 3. auto(3)        - indicates that the charge management mode is auto-control charge
			 4. invalid(-1)    - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                      }"Charge operation status.
			 Options:
			 1. average(1)  - indicates that the charge operation state is average charge
			 2. float(2)    - indicates that the charge operation state is float charge
			 3. full(3)     - indicates that the charge operation state is full
			 4. noCharge(4) - indicates that there is no charge in operation
			 5. discharge(5) - indicates that there is discharge in operation
			 6. sleep(6)    - indicates that the charge operation state is sleep
			 7. invalid(-1) - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                       V"Voltage value of average charge, in unit of mV.
			Default: 56500
			Unit: mV
			"                       G"Voltage value of float charge . 
			Default: 53500
			Unit: mV
			"                       "RowStatus standard operation"                       p"Timing average charge time interval, effective range is 190 days. 
			Default :value is 60 days
			Unit: day"                      �"Temperature redeeming quotient, used to set the co-relation 
			 between the float charge voltage and the battery temperature.
			 It means How much will the float charge voltage decrease 
			 with the increasing of every degree centigrade of the battery
			 temperature. The unit is mV.
			 Specific value is determined by the redeem feature curve of 
			 floating charge for the battery group used.
			 Default value is 100mV
			"                      �"Battery group state table. 
			 Through this table, the status parameter of a battery group can be set and queried.
			 The indexes of this table are hwEnvEmuIndex, hwPowerIndex, and hwBatteryIndex. 
			 hwEnvEmuIndex is the index of the monitored unit. 
			 hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			 hwBatteryIndex is the index of the monitored battery group.
			"                      �"Battery group state table. 
			 Through this table, the status parameter of a battery group can be set and queried.
			 The indexes of this entry are hwEnvEmuIndex, hwPowerIndex, and hwBatteryIndex. 
			 hwEnvEmuIndex is the index of the monitored unit. 
			 hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			 hwBatteryIndex is the index of the monitored battery group.
			"                       "Battery group loop index"                       S"The permitted max battery capacity of the battery group loop charge.
			Unit: Ah"                      h"The battery group present status.
			 Options:
			 1. on(1)        - indicates that the present state of battery group is on
			 2. off(2)       - indicates that the present state of battery group is off
			 3. invalid(-1)  - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                       5"The loop voltage of the battery group.
			Unit: mV"                      �"The present state of the battery group loop.
			 Options:
			 1. charge(1)    - indicates that the present state of the battery group loop is charge
			 2. discharge(2) - indicates that the present state of the battery group loop is discharge
			 3. invalid(-1)  - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                        "Present current .
			Unit: mA"                       ="The loop temperature of the battery group.
			Unit: degree"                       "RowStatus standard operation"                       A"The over-current alarm point of the battery group.
			Unit: mA"                      /"Battery fuse state.
			Options:
			1. on(1)       - indicates that the fuse is connected
			2. off(2)      - indicates that the fuse is disconnected
			3. invalid(-1) - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal
			"                      G"The state of the battery contactor.
			Options:
			1. on(1)        - indicates that the contactor is connected
			2. off(2)       - indicates that the contactor is disconnected
			3. invalid(-1)  - indicates that the device can not get the value, e.g. the EMU does not support this operation, or the EMU state is abnormal"                       &"Remain capacity of the battery 
			"                      Z"Protection status of the battery.
			 Options:	
			 1. normal(1)              - indicates that the Protection status of the battery is normal
			 2. overtemperature(2) - indicates that the Protection status of the battery is overtemperature
			 3. overCurrent(3)     - indicates that the Protection status of the battery is overCurrent
			"                      &"Voltage state of Battery.
			 Options:	
			 1. normal(1)         - indicates that Voltage state of Battery is normal
			 2. exceedVoltage(2)  - indicates that Voltage state of Battery is exceedVoltage
			 3. belowVoltage(3)   - indicates that Voltage state of Battery is belowVoltage
			"                       �"Hardware State of Battery.
			 Options:
			 1. normal(1)    - indicates that the hardware state of Battery is normal
			 2. fault(2)     - indicates that the hardware state of Battery is fault
			"                       �"Battery test table. 
			The indexes of this table are hwEnvEmuIndex and hwPowerIndex. 
			hwEnvEmuIndex is the index of the monitored unit, 
			and hwPowerIndex is the index of the power supply monitored by the monitoring unit.				
			"                       �"Battery test table. 
			The indexes of this entry are hwEnvEmuIndex and hwPowerIndex. 
			hwEnvEmuIndex is the index of the monitored unit, 
			and hwPowerIndex is the index of the power supply monitored by the monitoring unit.	
			"                      t"Battery test admin status.
			Options:
			1. start(1)            -  indicates that the Battery starts testing
			2. terminate(2)        -  indicates that the Battery terminates testing
			3. enableAutoTest(3)   -  indicates that the Battery enables auto test function
			4. disableAutoTest(4)  -  indicates that the Battery disables auto test function
			5. timeautoTest(5)     -  indicates that the Battery enable timing auto test function  
			6. offautoTest(6)      -  indicates that the Battery enable off auto test function 
			7. timeoffautoTest(7)  -  indicates that the Battery enable timing+off auto test
			"                       f"Auto discharge test period.
			Effective range is 30 -240 days.
			Default: 120
			Unit: day
			"                      �"Test result:
			 Options:			 			
			 1. testing(1)           - indicates that the Battery test is in operation
			 2. complete(2)          - indicates that the Battery test is completed normally
			 3. alarmTerminated(3)    - indicates that the Battery test is stopped by alarms
			 4. hostTerminated(4)     - indicates that the Battery test is stopped by the host
			 5. overtimeTerminated(5) - indicates that the Battery test is stopped because of over time
			 6. normal(6)           - indicates that the Battery test is not started
			 7. supplyRecoverAutotestTerminated(7)     - indicates that the Battery test is stopped because of supply recover
			"                       "Time of starting test"                       �"Battery discharge test duration .
			 Effective range is 1ï¿½C100 hours.
			 Default :value is 10 hours
			 Unit: hour
			"                       �"Battery discharge test end voltage.
			Effective range (DC lack alarm voltage+0.5Vï¿½Cvoltage of floating charge).
			Default: 45600 
			Unit: mV
			"                       /"
			 Total discharge AH.
			 Unit: mAH
			"                      �"
			Battery discharge test operate status.
			Options:
			1. autoTestPermit(1)        - indicates that auto discharge test is enabled
			2. autoTestForbid(2)        - indicates that auto discharge test is disabled
			3. timeautoTestPermit(3)    - indicates that timing auto discharge test is enabled
			4. offautoTestPermit(4)     - indicates that off auto discharge test is enabled
			5. timeoffautoTestPermit(5) - indicates that timing-off auto discharge test is enabled"                      �"Battery test phase.
			 Options:
			 1. charge(1)             - indicates the batter test phase is charge				
			 2. discharge(2)          - indicates the batter test phase is discharge
			 3. record(3)             - indicates the power equipment recording test result
			 4. finish(4)             - indicates that the discharge is complete
			 5.waitingfordischarge(5) - indicates that preparation is ready for discharge command
			"                       Z"Discharge start time.
			 Effective range is 0 23
			 Default: 0
			 Unit:  hour
			"                       H"The battery discharge test alarm threshold in ratio of the range:1~79."                      �"Battery test result table,
			 Through this table, the discharging test result of the battery group can be saved and queried.
			 The indexes of this table are hwEnvEmuIndex, hwPowerIndex, and hwBatteryLogTestIndex.
			 hwEnvEmuIndex is the index of the monitored unit. 
			 hwPowerIndex is the index of the power supply monitored by the monitoring unit. 
			 hwBatteryLogTestIndex is the index of the monitored battery.
			"                      �"Battery test result table,
			 Through this table, the discharging test result of the battery group can be saved and queried.
			 The indexes of this entry are hwEnvEmuIndex, hwPowerIndex, and hwBatteryLogTestIndex.
			 hwEnvEmuIndex is the index of the monitored unit. 
			 hwPowerIndex is the index of the power supply monitored by the monitoring unit. 
			 hwBatteryLogTestIndex is the index of the monitored battery.
			"                       %"Battery discharge test result index"                       #"Battery discharge test start time"                       )"Duration of discharge.
			Unit: minute"                       6"End voltage of battery discharge test .
			Unit: mV"                       �"Battery status.
			 Options:
			 1. expectant(1)  - indicates the batter test state is expectant
			 2. unexpected(2)  - indicates the batter test state is unexpected
			 3. unknown(3) - indicates the batter test state is unknown
			"                       0"
			Discharge cumulate AH.
			Unit: mAH
			"                      �"Battery Test result.
			 Options:
			 1. testing(1)           - indicates that it is during testing
			 2. completed(2)          - indicates that the test is completed normally
			 3. alarmTerminated(3)    - indicates that the test is stopped by alarms
			 4. hostTerminated(4)     - indicates that the test is stopped by the host
			 5. overtimeTerminated(5) - indicates that the test is stopped because of over 100 hours
			 6. notTest(6)           - indicates that the test is not started
			"                       7"
			The information of battery test efficiency.
			"                       E"Battery discharge test end Temperature.
			 Unit: 0.01 Degree
			"                       <"Battery discharge test average Current.
			 Unit: mA
			"                      	"Remote provide power basic information table. 
			 The indexes of this table are hwEnvEmuIndex and hwPowerIndex.
			 hwEnvEmuIndex is the index of the monitored unit, 
			 and hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			"                      	"Remote provide power basic information table. 
			 The indexes of this entry are hwEnvEmuIndex and hwPowerIndex.
			 hwEnvEmuIndex is the index of the monitored unit, 
			 and hwPowerIndex is the index of the power supply monitored by the monitoring unit.
			"                       �"State of the central module.
			 Options:
			 1. normal(1)  - indicates the normal state
			 2. temOver(2) - indicates the over-temperature
			"                       �"State of central module DC input: 
			Options:
			1.normal(1) - indicates the normal state
			2.lack(2)   - indicates the voltage underflow 
			3.over(3)   - indicates the voltage overflow
			"                      �"State of central module DC output.   
			Options:
			1. normal(1)       - indicates the normal state 
			2. volLack(2)      - indicates the voltage underflow
			3. volOver(3)      - indicates the voltage overflow
			4. loadOver(4)     - indicates the over-loading                    
			5. shortCircuit(5) - indicates the short circuit 
			6. noLoad(6)       - indicates no load
			"                       �"Mode of central module DC output.
			Options:            
			1. highVolMode(1) - indicates the high voltage output mode
			2. lowVolMode(2) - indicates the low voltage output mode
			"                       �"Remote power module communications state.
			Options:    
			1. normal(1)    - indicates the normal state
			2. revfault(2)  - indicates the receiving of fault	
			3. sendfault(3) - indicates the sending of fault"                       �"State of remote module DC input.  
			Options:
			1. normal(1)  -  indicates the normal state
			2. lack(2)    -  indicates that the voltage is underflow
			"                      "state of line between central and remote module.
			Options:
			1.normal(1)       - indicates the normal state
			2.cablejoining(2) - indicates the cable joining
			3.curLeakage(3)   - indicates the cur Leakage
			4.curOver(4)      - indicates the cur Over
			"                       �"state of remote UA60 power. 
			Options:
			1. normal(1)  - indicates the normal state
			2. fault(2)   - indicates the faulty state
			"                      �"State of line U1.
                   Options:
                   1. u1state(0) - indicates the power remote line state is u1 state
                   2. u2state(1) - indicates the power remote line state is u2 state
                   3. u3state(2) - indicates the power remote line state is u3 state
                   4. u4state(3) - indicates the power remote line state is u4 state
                   5. a1state(4) - indicates the power remote line state is a1 state
                   6. a2state(5) - indicates the power remote line state is a2 state
                   7. a3state(6) - indicates the power remote line state is a3 state
                   8. a4state(7) - indicates the power remote line state is a4 state 
                   "                       �"state of central load.
			Options:
			1. normal(1)   - indicates the normal state
			2. overload(2) - indicates overload
			3. nonload(3)  - indicates non-load
			"                       v"AC infomation table.  The table is not supported.
				The indexes of this table are hwEnvEmuIndex and hwPowerIndex."                       v"AC infomation table.  The table is not supported.
				The indexes of this entry are hwEnvEmuIndex and hwPowerIndex."                       �"communication state of AC input module.  
			The node is not supported.
			Options:
			1. normal(0) - indicates the communication state of AC is normal
			2. fault(1)  - indicates the communication state of AC is fault	 		
			"                       �"Thunder's state.
			The node is not supported.
			Options:
			1. normal(0) - indicates the  state of Thunder is normal
			2. fault(1)  - indicates the  state of Thunder is fault				
			"                       E"Current AC input working loop.
			 The leaf is not supported.
			"                       �"AC input MCB trigger state. 
			The leaf is not supported.	
			Options:
			1. normal(0)    - indicates the AC input MCB trigger state is normal
			2. break-down(1)- indicates the AC input MCB trigger state is break-down
			"                       ]"The infomation of AC input frequency.  
			 This leaf is not supported.
			 Unit: HZ
			"                       C"RowStatus standard operation
			 The leaf is not supported.
			"                                       {" This trap message is reported when the communication between 
				  the power module and the monitoring board is fault."                 w"This trap message is reported when the communication between 
				the power module and the monitoring board resumes."                 N"This trap message is reported when there is a exception of AC input voltage."                 K"This trap message is reported when the state of AC input voltage resumes."                 C"This trap message is reported when the input voltage is too high."                 k"This trap message is reported when the input voltage 
				resumes to the normal range from a high value."                 B"This trap message is reported when the input voltage is too low."                 j"This trap message is reported when the input voltage 
				resumes to the normal range from a low value."                 D"This trap message is reported when the output voltage is too high."                 l"This trap message is reported when the output voltage 
				resumes to the normal range from a high value."                 D"This trap message is reported when the output current is too high."                 l"This trap message is reported when the output current 
				resumes to the normal range from a high value."                 C"This trap message is reported when the output voltage is too low."                 k"This trap message is reported when the output voltage 
				resumes to the normal range from a low value."                 C"This trap message is reported when the output current is too low."                 k"This trap message is reported when the output current 
				resumes to the normal range from a low value."                 I"This trap message is reported when the state of load power is abnormal."                 P"This trap message is reported when the state of load power recovers to normal."                 @"This trap message is reported when the battery is powered off."                 ?"This trap message is reported when the battery is powered on."                 B"This trap message is reported when the loadpower is powered off."                 A"This trap message is reported when the loadpower is powered on."                 E"This trap message is reported when the AC mains supply is abnormal."                 L"This trap message is reported when the AC mains supply recovers to normal."                 K"This trap message is reported when the loop of battery group disconnects."                 H"This trap message is reported when the loop of battery group connects."                 K"This trap message is reported when the fuse of battery group disconnects."                 I"This trap message is reported when the fuse of battery group connects. "                 P"This trap message is reported when the contactor of battery group disconnects."                 M"This trap message is reported when the contactor of battery group connects."                 D"This trap message is reported when the user module is powered off."                 C"This trap message is reported when the user module is powered on."                 H"This trap message is reported when the transfer module is powered off."                 G"This trap message is reported when the transfer module is powered on."                 E"This trap message is reported when the user module is switched off."                 I"This trap message is reported when the transfer module is switched off."                 ?"This trap message is reported when the load fuse is abnormal."                 ;"This trap message is reported when the load fuse resumes."                 ^"This trap message is reported when the control state of average or floating charge converts."                 ?"This trap message is reported when the charge state converts."                 F"This trap message is reported when the AC panel communication fails."                 H"This trap message is reported when the AC panel communication resumes."                 O"This trap message is reported when the Over-current of battery group happens."                 P"OThis trap message is reported when the Over-current of battery group resumes."                 H"This trap message is reported when the voltage of battery group lacks."                 U"This trap message is reported when the voltage of battery group recovers from lack."                 C"This trap message is reported when the load is powered off twice."                 O"This trap message is reported when the load recovers from powering off twice."                 B"This trap message is reported when the load is powered off once."                 N"This trap message is reported when the load recovers from powering off once."                 B"This trap message is reported when the  AC input is powered off."                 G"This trap message is reported when the AC input power is powered off."                 O"This trap message is reported when the AC input loop switches to another one."                 G"This trap message is reported when the battery discharge test starts."                 F"This trap message is reported when the battery discharge test stops."                 N"This trap message is reported when the power protection function is enbaled."                 O"This trap message is reported when the power protection function is disabled."                 U"This trap message is reported when the central output mode swtiches to another one."                 I"This trap message is reported when the central tempretaure is abnormal."                 K"This trap message is reported when the central input voltage is abnormal."                 L"This trap message is reported when the central output voltage is abnormal."                 ["This trap message is reported when the communiction between the remote and central fails."                 D"This trap message is reported when the remote voltage is abnormal."                 @"This trap message is reported when the power line is abnormal."                 B"This trap message is reported when the remote power is abnormal."                 ="This trap message is reported when the Line UA is abnormal."                 B"This trap message is reported when the Central load is abnormal."                                             m"The agent generates this trap when the power 
		         device battary discharge test starts.
		        "                 k"The agent generates this trap when the power 
		         device battary discharge test ends.
		        "                 k"The agent generates this trap when the power
		         device AC input voltage is abnormal.
		        "                 h"The agent generates this trap when the power
		         device AC input voltage recovers.
		        "                 l"The agent generates this trap when the power
		         device DC output voltage is abnormal.
		        "                 i"The agent generates this trap when the power
		         device DC output voltage recovers.
		        "                 �"The agent generates this trap when the power
		         device the battery loop is broken. 
		         In this case, the function of he backup power is lost.
		        "                 d"The agent generates this trap when the power
		         device battery loop recovers.
		        "                 �"The agent generates this trap when the fuse of the power device
		         is broken. In this case, the device is powered off.
		        "                 V"The agent generates this trap when the fuse of the power
				device recovers.
				"                 �"The agent generates this trap when the rectifier
		         module of the power device is abnormal and the spully power may decrease.
		        "                 p"The agent generates this trap when the rectifier module of the 
		         power device recovers.
		        "                 R"The agent generates this trap when the
			 main supply digital is faulty.
			 "                 Q"The agent generates this trap when the
			 main supply digital recovers.
			 "                 Y"The agent generates this trap when the power
		         of battary is off.
		        "                 n"The agent generates this trap when the 
		        battery group 1 temperature sensor fault
			occurs.
			"                 i"The agent generates this trap when the 
			battery group 1 temperature sensor fault
			recovers.
			"                 \"The agent generates this trap when the 
			environment humidity sensor fault occurs.
			"                 ^"The agent generates this trap when the 
			environment humidity sensor fault recovers.
			"                 f"The agent generates this trap when the 
			environment 1 temperature sensor fault 
			occurs.
			"                 h"The agent generates this trap when the 
			environment 1 temperature sensor fault 
			recovers.
			"                 Z"The agent generates this trap when the battery
			temperature out of normal range.
			"                 _"The agent generates this trap when the battery
			temperature recovers to normal range.
			"                 g"The agent generates this trap when the power
		         of battary recovers to on state.
		        "                 ["The agent generates this trap when the
			 one or more batteries are not detected.
			 "                 F"The agent generates this trap when the
			 batteries recover.
			 "                 m"The agent generates this trap when the
			 the power supply system detects mismatched power module .
			 "                 E"The agent generates this trap when the power module recovers.
			 "                    