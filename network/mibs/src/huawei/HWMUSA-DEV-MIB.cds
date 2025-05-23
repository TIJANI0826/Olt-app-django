�--  ============================================================================
-- Copyright (C)2011  by  HUAWEI TECHNOLOGIES. All rights reserved.
-- Description:  The MIB module defines MIB objects which provide 
--               device management NMS interfaces.     
-- Reference:  
-- Version: V1.18
-- ============================================================================
                                     `"
				The MIB module defines MIB objects which provide device management NMS interfaces.
				"9"Huawei Industrial Base                
			         Bantian, Longgang                     
			         Shenzhen 518129                       
			         People's Republic of China            
			         Website: http://www.huawei.com        
			         Email: support@huawei.com             
			        " "201203310000Z" "201201170000Z" "201111180000Z" "201107080000Z" "201101120000Z" "201011100000Z" "201008190000Z" "201003240000Z" "201002220000Z" "201002100000Z" "201002030000Z" "200907220000Z" "200907200000Z" "200611270000Z" W"V1.18, Added enumerated value 0x02000173 to hwMusaBoardLatestResetCause's value list." 0"V1.17, Added hwMusaFramePowerSupplyTable node." c"V1.16, Added enumerated value dcAndRemote(8) and acAndDc(9) to hwMusaFramePowerMode's value list." :"V1.15, Time and type of last Board reset on OLT devices." R"V1.14, Added enumerated value acRemote(7) to hwMusaFramePowerMode's value list.."O"V1.13, Modified the description of hwMusaSlotConfExtTable, hwMusaSlotConfExtEntry, hwMusaBoardTemperature,
									hwMusaSlotAverageConfTable, hwMusaSlotAverageConfEntry, hwMusaBoardStatisticTime, hwXPONBoardParaTable, hwXPONBoardParaEntry,
									hwBroadBandFrameOperTable, hwBroadBandFrameOperEntry and hwIasConfigChangeEntry." Z"V1.12, Modified the description of the objects in this MIB file for MIB standardization." J"V1.11, Modified this MIB for clearing simple tester errors and warnings." K"V1.10, Added enumerated value pd(6) to hwMusaFramePowerMode's value list." #"V1.09, Modified MIB descriptions." ""V1.08, Cleared compile warnings." T"V1.07, Added enumerated value linePowered(5) to hwMusaFramePowerMode's value list." Q"V1.06, Added hwMusaFramePower, hwMusaBoardPower, and hwMusaBoardActivedPortNum." "V1.00, Initial version."                           �"
			Frame description extended table.The table describes the bandwidth of the frame,
			and also contains the EMU and slot information of the frame.
			The index of this table is hwFrameIndex. It is the frame ID.
			"                       �"
			Frame description extended table.The table describes the bandwidth of the frame,
			and also contains the EMU and slot information of the frame.
			The index of this entry is hwFrameIndex. It is the frame ID.
			"                       y"
			Frame limit bandwidth,the maximum bandwidth of the frame. 
			Unit: K. It is used in debug mode. 1G = 1000M.
			"                       ["
			Frame distributed bandwidth.
			Unit: K. It is used in debug mode. 1G = 1000M.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                      s"
			Frame power supply mode.
			Options:
			1.localac(1)            -local 220V AC power supply   
			2.localdc(2)            -local DC power supply     
			3.localacBackuppower(3) -AC power and backuppower supply
			4.backuppower(4)        -accumulator supply
			5.remotedc(5)           -remote line +/-190V high voltage power supply of DC
			6.pd(6)                 -powered device supply
			7.remoteac(7)           -remote 60V AC power supply
			8.localdcAndRemotedc(8) -DC power and Remote power are provided at the same time
			9.localacAndlocaldc(9)  -DC power and AC power are provided at the same time
			"                       �"
			The total power of the frame. 
			It includes the power of service boards, active control board, standby control board,
			interface boards, and environment monitoring boards.
			Unit: watt.
			"                       �"
			Board description extended table. 
			The tabel is used for describing the extended information 
			about all boards in each slot of the shelf.			
			The indexes of this table are hwFrameIndex and hwSlotIndex.
			"                       �"
			Board description extended table. 
			The tabel is used for describing the extended information 
			about all boards in each slot of the shelf.			
			The indexes of this entry are hwFrameIndex and hwSlotIndex.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       �"
			Active and standby control board CPU usage. 
			It does not support RSP, PV8, BAS, or other boards.
			-1 indicates that the device cannot get the value, e.g. the board does not support this operation, or the board state is abnormal.
			"                       �"
			Active and standby control board RAM usage.
			It does not support RSP, PV8, BAS, AIC, or other boards.
			-1 indicates that the device cannot get the value, e.g. the board does not support this operation, or the board state is abnormal.
			"                       T"				
			Slot information description.
			It describes the name of the slot.
			"                       �"
			Board online state.
			Options:
			1.online(1)       -board is online
			2.offline(2)      -board is offline
			3.unmanageable(3) -board is faulty
			"                      "
			Service channel buffer usage.
			It only supports the xDSL service board on the MA5600 and the MA5600T product.
			-1 indicates that the device cannot get the value, e.g. the board does not support this operation, or the board state is abnormal.
			"                       �"
			Board temperature.The value 0X7FFFFFF indicates invalid temperature.
			It only supports the H801SCUB and H801SCUL boards.
			"                       3"
			The power of the board.
			Unit: watt.
			"                       7"
			The number of activated ports on one board.
			"                       /"
			The latest reset time of the board.
			"                      �"
			The latest reset cause of the board.
			0x00000000 - There is no reset record of the board. 
			0x02000000 - The communication with the control board is abnormal. 
			0x02000165 - COM user delivers board reset command. 
			0x02000167 - NMS user delivers board reset command.
			0x02000169 - Telnet user delivers board reset command. 
			0x0200016b - User add board manually.  
			0x020000a1 - The board temperature is too high, which causes the shutdown of the board. 
			0x02000173 - The board resets because the working mode is changed.
			0x02000181 - The service board is automatically shut down when it is not configured with any service. 
			0x02000182 - The service board is automatically shut down when the mains supply is interrupted. 
			0x020001b5 - The board is loosened or is removed forcibly.
			0x0700000a - The active/standby switchover command is manually delivered.
			"                       h"
			The indexes of this table are hwFrameIndex and hwSlotIndex.
			This table is not supported.
			"                       h"
			The indexes of this entry are hwFrameIndex and hwSlotIndex.
			This table is not supported.
			"                       �"
			This node is not supported.   
			Options:
			1. five-seconds(1) -five seconds
			2. one-minute(2)   -one minute
			3. ten-minutes(3)  -ten minutes 
			"                       '"
			This node is not supported.
			"                       j" 
			The indexes of this table are hwFrameIndex and hwSlotIndex.
			This table is not supported. 
			"                       j" 
			The indexes of this entry are hwFrameIndex and hwSlotIndex.
			This table is not supported.
			 "                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       (" 
			This node is not supported.
			"                       4"
			This node is not supported.             
			"                       �"The power supply query table.
			 The table is used to get supply state of all the power supply input. 
			 The index of this table is hwFrameIndex,hwMusaPowerSupplyInputMode and hwMusaPowerSupplyID.
			"                       �"The power supply query table.
			 The table is used to get supply state of all the power supply input. 
			 The index of this entry is hwFrameIndex,hwMusaPowerSupplyInputMode and hwMusaPowerSupplyID.
			"                      3"Power supply input mode.
			 Options: 
			  1. localac(1)  -local 220V AC power supply
			  2. localdc(2)  -local DC power supply
			  3. remoteac(3) -remote 60V AC power supply
			  4. remotedc(4) -remote line +/-190V high voltage power supply of DC
			  5. pd(5)       -powered device supply 
			"                       ""The input index of power supply."                       �"The state of power supply.
			 Options: 
			  1. valid(1)   -this power input is working
			  2. invalid(2) -this power input is not working			
		"                       h"
			The indexes of this table are hwFrameIndex and hwSlotIndex.
			This table is not supported.
			"                       h"
			The indexes of this entry are hwFrameIndex and hwSlotIndex.
			This table is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                       '"
			This node is not supported.
			"                           }"
			Configuration change type trap table. 
			The index of this table is hwIasConfigChangeTrapID. It is the trap ID.
			"                       |"
			Configuration change type trap table.
			The index of this entry is hwIasConfigChangeTrapID. It is the trap ID.
			"                       ."
			Configuration change type trap ID.
			"                       9"
			Configuration change type trap serial number.
			"                                          