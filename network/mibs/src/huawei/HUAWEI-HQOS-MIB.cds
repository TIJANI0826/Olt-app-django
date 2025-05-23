k--==================================================================
-- Copyright (C) 2006 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI Hierarchy Quality Of Service MIB
-- Reference:
-- Version: V1.0
-- History:
-- <author>,  <date>,  <contents>
-- CaiLi,LiuJun   2006-05-13 
-- Liguoshuang	  2007-08-23	for BT HQoS alarm
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types are imported
--
-- ==================================================================
   �"
            BE(1)
            AF1(2)
            AF2(3)
            AF3(4)
            AF4(5)
            EF(6)
            CS6(7)
            CS7(8)
            "                                 "mib of Hierarchy Quality Of Service module  
				the huawei-hqos-mib is only defined about statistic information now. 
				" �"cx Team Huawei Technologies co.,Ltd.
				Huawei Bld.,NO.3 Xinxi Rd., 
				Shang-Di Information Industry Base,
				Hai-Dian District Beijing P.R. China
				http://www.huawei.com
				Zip:100085
				   "       $-- September 10, 2007 at 11:16 GMT
           1"Table of Hierarchy QoS's statistic information."                      "The table have multilevel index
				if don't have some or other index. please fill the MAX value 2147483647
				for example : MA52 don't have statistic of user's queue, but have statistic of user.
				              please set QueueIndex the MAX value 2147483647.
				"                       F"interfaceindex, include physics interface and logic interface.
				"                       I"Direction: inbound;outbound.
				if don't have, please fill 255.
				"                       p"Usergroupid: just the Usergroup's configure sequence 
				Usergroupname is identifier in Hierarchy QoS.
				"                       a"Userid: just the User's configure sequence 
				Username is identifier in Hierarchy QoS.
				"                       �"index of user's queue.
				8031: everyuser have 4 queues
				MA52: everyuser have 8 queues
				8090: everyuser have 8 queues
				
				if don't have, please fill 0.                
				"                       K"ForwardPackets number of queue.
				if not support, please fill 0.
				"                       I"ForwardBytes number of queue.
				if not support, please fill 0.
				"                       H"DropPackets number of queue.
				if not support, please fill 0.
				"                       F"DropBytes number of queue.
				if not support, please fill 0.
				"                       J"RemarkPackets number of queue.
				if not support, please fill 0.
				"                       H"RemarkBytes number of queue.
				if not support, please fill 0.
				"                       "Reset operation to zero."                       )"Forward packet rate of queue. Unit: pps"                       '"Forward byte rate of queue. Unit: Bps"                       &"Drop Packet Rate of queue. Unit: pps"                       $"Drop byte rate of queue. Unit: Bps"                       1"Table of Hierarchy QoS's statistic information."                      "The table have multilevel index
				if don't have some or other index. please fill the MAX value 2147483647
				for example : MA52 don't have statistic of user's queue, but have statistic of user.
				              please set QueueIndex the MAX value 2147483647.
				"                       "ATM interfaceindex.
				"                       "VPI NUMBER.
				"                       "VCI NUMBER.
				"                       I"Direction: inbound;outbound.
				if don't have, please fill 255.
				"                       p"Usergroupid: just the Usergroup's configure sequence 
				Usergroupname is identifier in Hierarchy QoS.
				"                       a"Userid: just the User's configure sequence 
				Username is identifier in Hierarchy QoS.
				"                       �"index of user's queue.
				8031: everyuser have 4 queues
				MA52: everyuser have 8 queues
				8090: everyuser have 8 queues
				
				if don't have, please fill 0.                
				"                       K"ForwardPackets number of queue.
				if not support, please fill 0.
				"                       I"ForwardBytes number of queue.
				if not support, please fill 0.
				"                       H"DropPackets number of queue.
				if not support, please fill 0.
				"                       F"DropBytes number of queue.
				if not support, please fill 0.
				"                       J"RemarkPackets number of queue.
				if not support, please fill 0.
				"                       H"RemarkBytes number of queue.
				if not support, please fill 0.
				"                       ,"Table of configuration about a port-queue."                       <"Information about configuration of an interface cos-queue."                       '"The object specifies interface index."                       +"The object specifies interface cos-queue."                       6"The object specifies the schedule mode of cos-queue."                       G"The object specifies the weight of the weighted fair queue scheduler."                       8"The object specifies the value of interface bandwidth."                       9"The object specifies the Shaping rate percentage-value."                       *"The object specifies wred template name."                      -"The object specifies the status of this table entry.
				When the status is active,hwhqosPortQueueArithmetic,hwhqosPortQueueWeightValue,
				hwhqosPortQueueShaValue,hwhqosPortQueueShaPercent,hwhqosPortQueueWredName and hwhqosPortQueueDirection's
				value in the entry are allowed to be modified."                       /"Table of configuration about a wred template."                       >"Information about configuration of the value of wred color ."                       ."The object specifies the wred template name."                       J"The object specifies the low-limit value of the port-wred's green color."                       K"The object specifies the high-limit value of the port-wred's green color."                       I"The object specifies the value of the green color's discard-percentage."                       K"The object specifies the low-limit value of the port-wred's yellow color."                       L"The object specifies the high-limit value of the port-wred's yellow color."                       J"The object specifies the value of the yellow color's discard-percentage."                       H"The object specifies the low-limit value of the port-wred's red color."                       I"The object specifies the high-limit value of the port-wred's red color."                       G"The object specifies the value of the red color's discard-percentage."                       �"The object specifies the status of this table entry.
				When the status is active, hwhqosWredLowLimit,hwhqosWredHighLimit 
				and hwhqosWredDiscardPercent's value in the entry are allowed to be modified."                       ""Interface queue statistic table."                       ("Interface Queue statistic table entry."                       "Interface index.	"                       �"Index number of queues with priority. 
The values and meanings are as follows:
				1 be
				2 af1
				3 af2
				4 af3
				5 af4
				6 ef
				7 cs6
				8 cs7
				"                       !"Direction: inbound 1,outbound 2"                       "Number of forwarded packets."                       "Number of forwarded bytes."                       "Number of discarded packets."                       "Number of discarded bytes."                       "User queue statistic table."                       ""User Queue statistic table entry"                       W"Types of statistic:
				interface(1),
				mactunel(2),
				userclassifier(3)
				"                      ?"Name character string: If the statistic is based on mac-tunnel,
				this field is the name of the mac-tunnel. If the statistic is based
				on user classification, this field is the name of the user 
				classification. If the statistic is based on an interface,
				this field is the name of the interface.
				"                       �"Direction: If the statistic is based on user classification, 
				the direction is divided to upstream (1) and downstream (2). If the 
				Statistic is based on mac-tunnel, the direction is applied only on 
				the downstream (2)."                       �"Index number of the queues. The values and meanings are as follows:
				1 be
				2 af1
				3 af2
				4 af3
				5 af4
				6 ef
				7 cs6
				8 cs7
				9 total
				
				"                       *"The number of packets that pass through."                       ("The number of bytes that pass through."                       ""The number of discarded packets."                        "The number of discarded bytes."                       �"Counter resetting. If the value is 1, the object resets 
				the statistics through the set operation. It is no of use to
				access the value of this object.
				"                       0"The time stamp that the counter is reset last."                       6"The number of discarded packets in a certain period."                       #"User group queue statistic table."                       ("user group queue statistic table entry"                       "User group name.
				"                       *"Direction: upstream (1), downstream (2);"                       *"The number of packets that pass through."                       ("The number of bytes that pass through."                       ""The number of discarded packets."                        "The number of discarded bytes."                       �"Counter resetting. If the value is reset(1), the object resets 
				the statistics through the set operation. It is no of use to
				access the value of this object."                       0"The time stamp that the counter is reset last."                       !"VPN qos tunnel statistic table."                       N"VPN qos tunnel statistic table entry: L3VPN,VPLS and VLL are all supported. "                       "VPN Tunnel interface index."                       4"VPN Type: Tunnel (0), L3VPN (1), VPLS (2), VLL(3);"                       "Name of VPN Instance."                       ("The number of bytes that pass through."                       *"The number of packets that pass through."                       ""The number of discarded packets."                       !" The number of discarded bytes."                       "Tunnel statistic table."                       F"Tunnel statistic table entry: L3VPN,VPLS and VLL are all supported. "                       "Tunnel interface index."                       7"BE(1) AF1(2) AF2(3) AF3(4) AF4(5) EF(6) CS6(7) CS7(8)"                       4"VPN Type: Tunnel (0), L3VPN (1), VPLS (2), VLL(3);"                       "Name of VPN Instance."                       ("The number of bytes that pass through."                       *"The number of packets that pass through."                       !" The number of discarded bytes."                       ""The number of discarded packets."                       ,"Rate of bytes passed of enqueue. Unit: Bps"                       ."Rate of packets passed of enqueue. Unit: pps"                       " hwhqosProfileTable "                       " hwhqosProfileEntry "                       " hwhqosProfileName "                       " hwhqosProfileDescription "                       �"
             Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
             createAndGo[4] - create a row.        
             destroy[6] -delete a row.       
            "                       !" hwhqosProfileSuppressionTable "                       !" hwhqosProfileSuppressionEntry "                       " hwhqosSuppressionDirection "                       " hwhqosSuppressionType "                       " hwhqosSuppressionCirValue "                       " hwhqosSuppressionCbsValue "                       �"
             Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
             createAndGo[4] - create a row.        
             destroy[6] -delete a row.       
            "                       " hwhqosProfileCarTable "                       " hwhqosProfileCarEntry "                       " hwhqosProfileCarDirection "                       " hwhqosProfileCarCirValue "                       " hwhqosProfileCarPirValue "                       " hwhqosProfileCarCbsValue "                       " hwhqosProfileCarPbsValue "                       " hwhqosProfileCarGreenAction "                        " hwhqosProfileCarYellowAction "                       " hwhqosProfileCarRedAction "                       �"
             Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
             createAndGo[4] - create a row.        
             destroy[6] -delete a row.       
            "                       " hwhqosProfileUserQueueTable "                       " hwhqosProfileUserQueueEntry "                       #" hwhqosProfileUserQueueDirection "                       "" hwhqosProfileUserQueueCirValue "                       "" hwhqosProfileUserQueuePirValue "                       '" hwhqosProfileUserQueueFlowQueueName "                       %" hwhqosProfileUserQueueMappingName "                       #" hwhqosProfileUserQueueGroupName "                       -" hwhqosProfileUserQueueServiceTemplateName "                       �"
             Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
             createAndGo[4] - create a row.        
             destroy[6] -delete a row.       
            "                       " hwhqosProfileApplyTable "                       " hwhqosProfileApplyEntry "                       " hwhqosProfileInterfaceIndex "                       " hwhqosProfileApplyDirection "                       " hwhqosProfileApplyPevid "                       " hwhqosProfileApplyCevid "                       " hwhqosProfileApplyName "                        " hwhqosProfileApplyIdentifier "                       " hwhqosGroupName "                       �"
             Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
             createAndGo[4] - create a row.        
             destroy[6] -delete a row.       
            "                       " hwhqosFlowMappingTable "                       " hwhqosFlowMappingEntry "                       " hwhqosFlowMappingName "                       �"
            Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
            createAndGo[4] - create a row.        
            destroy[6] -delete a row.       
           "                       " hwhqosFlowMappingCfgTable "                       " hwhqosFlowMappingCfgEntry "                       %" hwhqosFolwMappingCfgQueueCosValue "                       )" hwhqosFlowMappingCfgPortQueueCosValue "                       �"
            Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
            createAndGo[4] - create a row.        
            destroy[6] -delete a row.       
           "                       " hwhqosFlowQueueTable "                       " hwhqosFlowQueueEntry "                       " hwhqosFlowQueueName  "                       �"
            Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
            createAndGo[4] - create a row.               
            destroy[destroy[6] -delete a row. 
           "                       " hwhqosFlowQueueCfgTable "                       " hwhqosFlowQueueCfgEntry "                       " hwhqosFlowQueueCfgCosValue  "                       " hwhqosFlowQueueCfgType "                       "" hwhqosFlowQueueCfgWeightValue  "                       "" hwhqosFlowQueueCfgShapingValue "                       -" hwhqosFlowQueueCfgShapingPercentageValue  "                       " hwhqosFlowQueueCfgWredName  "                       �"
            Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
            createAndGo[4] - create a row.               
            destroy[destroy[6] -delete a row. 
           "                       " hwhqosFlowWredTable "                       " hwhqosFlowQueueEntry "                       " hwhqosFlowWredName  "                       �"
            Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
            createAndGo[4] - create a row.               
            destroy[destroy[6] -delete a row. 
           "                       " hwhqosFlowWredColorTable "                       " hwhqosFlowWredColorEntry "                       " hwhqosFlowWredColor  "                       *" hwhqosFlowWredColorLowlimitPercentage  "                       +" hwhqosFlowWredColorHighlimitPercentage  "                       )" hwhqosFlowWredColorDiscardPercentage  "                       �"
            Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
            createAndGo[4] - create a row.               
            destroy[destroy[6] -delete a row. 
           "                       " hwhqosUserGroupQueueTable "                       " hwhqosUserGroupQueueEntry "                       " hwhqosUserGroupQueueName  "                       " hwhqosFlowWredColor  "                       �"
            Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
            createAndGo[4] - create a row.               
            destroy[destroy[6] -delete a row. 
           "                       $" hwhqosUserGroupQueueShapingTable "                       $" hwhqosUserGroupQueueShapingEntry "                       )" hwhqosUserGroupQueueShapingDirection  "                       %" hwhqosUserGroupQueueShapingValue  "                       �"
            Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
            createAndGo[4] - create a row.               
            destroy[destroy[6] -delete a row. 
           "                       " hwhqosUserQueueTable "                       " hwhqosUserQueueEntry "                       !" hwhqosUserQueueInterfaceIndex "                       " hwhqosUserQueueDirection "                       " hwhqosCirValue "                       " hwhqosPirValue "                       " hwhqosFlowQueueName "                       " hwhqosFlowMappingName "                       " hwhqosGroupName "                       &" hwhqosUserQueueServiceTemplateName "                       �"
             Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
             createAndGo[4] - create a row.        
             destroy[6] -delete a row.       
            "                        " hwBehaviorhqosUserQueueTable "                        " hwhqosBehaviorUserQueueEntry "                       " hwhqosBehaviorName "                       " hwhqosBehaviorCirValue "                       " hwhqosBehaviorPirValue "                       " hwhqosBehaviorFlowQueueName "                       !" hwhqosBehaviorFlowMappingName "                       " hwhqosBehaviorGroupName "                       " hwhqosServiceTemplateName "                       �"
             Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
             createAndGo[4] - create a row.        
             destroy[6] -delete a row.       
            "                       " hwhqosBandwidthTable "                       " hwhqosBandwidthEntry "                       !" hwhqosBandwidthInterfaceIndex "                       " hwhqosBandwidthValue "                       �"
              Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
              createAndGo[4] - create a row.        
              destroy[6] -delete a row.       
            "                       " hwhqosServiceTemplateTable "                       " hwhqosServiceTemplateEntry "                       " hwhqosServiceTemplateName "                       " hwhqosSlotNumber "                       �"
		       Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
		       createAndGo[4] - create a row.        
		       destroy[6] -delete a row.       
		      "                       "" hwhqosNetworkHeaderLengthTable "                       "" hwhqosNetworkHeaderLengthEntry "                       &" hwhqosNetworkHeaderLengthDirection "                       "" hwhqosNetWorkHeaderLengthValue "                       �"
		       Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
		       createAndGo[4] - create a row.        
		       destroy[6] -delete a row.       
		      "                       #" hwhqosServiceTemplateApplyTable "                       #" hwhqosServiceTemplateApplyEntry "                       ," hwhqosServiceTemplateApplyInterfaceIndex "                       " hwhqosSlotNumber "                       �"
             Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
             createAndGo[4] - create a row.        
             destroy[6] -delete a row.       
            "                       )" hwhqosProfileUserQueueStatisticsTable "                       )" hwhqosProfileUserQueueStatisticsEntry "                       2" hwhqosProfileUserQueueStatisticsInterfaceIndex "                       -" hwhqosProfileUserQueueStatisticsDirection "                       )" hwhqosProfileUserQueueStatisticsPevid "                       )" hwhqosProfileUserQueueStatisticsCevid "                       ." hwhqosProfileUserQueueStatisticsSlotNumber "                       �"Index number of the queues. The values and meanings are as follows:
		    1 be
		    2 af1
		    3 af2
		    4 af3
		    5 af4
		    6 ef
		    7 cs6
		    8 cs7
		    9 total		
		    "                       )" hwhqosProfileUserQueueStatisticsReset "                       /" hwhqosProfileUserQueueStatisticsPassPackets "                       -" hwhqosProfileUserQueueStatisticsPassBytes "                       /" hwhqosProfileUserQueueStatisticsDropPackets "                       -" hwhqosProfileUserQueueStatisticsDropBytes "                       3" hwhqosProfileUserQueueStatisticsPassPacketsRate "                       1" hwhqosProfileUserQueueStatisticsPassBytesRate "                       3" hwhqosProfileUserQueueStatisticsDropPacketsRate "                       1" hwhqosProfileUserQueueStatisticsDropBytesRate "                       #" hwhqosProfileCarStatisticsTable "                       #" hwhqosProfileCarStatisticsEntry "                       ," hwhqosProfileCarStatisticsInterfaceIndex "                       '" hwhqosProfileCarStatisticsDirection "                       $" hwhqosProfileCarStatisticsPevid  "                       $" hwhqosProfileCarStatisticsCevid  "                       "" hwhqosProfileCarStatisticsType "                       (" hwhqosProfileCarStatisticsSlotNumber "                       $" hwhqosProfileCarStatisticsReset  "                       *" hwhqosProfileCarStatisticsPassPackets  "                       (" hwhqosProfileCarStatisticsPassBytes  "                       *" hwhqosProfileCarStatisticsDropPackets  "                       (" hwhqosProfileCarStatisticsDropBytes  "                       ." hwhqosProfileCarStatisticsPassPacketsRate  "                       -" hwhqosProfileCarStatisticsPassBytesRate   "                       -" hwhqosProfileCarStatisticsPassBytesRate   "                       ." hwhqosProfileCarStatisticsDropBytesRate    "                       "" hwhqosUserQueueStatisticsTable "                       "" hwhqosUserQueueStatisticsEntry "                       ," hwhqosUserQueueStatisticsInterfaceIndex  "                       '" hwhqosUserQueueStatisticsDirection  "                       '" hwhqosUserQueueStatisticsSlotNumber "                       (" hwhqosUserQueueStatisticsQueueIndex  "                       #" hwhqosUserQueueStatisticsReset  "                       (" hwhqosUserQueueStatisticsPassPackets "                       '" hwhqosUserQueueStatisticsPassBytes  "                       )" hwhqosUserQueueStatisticsDropPackets  "                       '" hwhqosUserQueueStatisticsDropBytes  "                       -" hwhqosUserQueueStatisticsPassPacketsRate  "                       ," hwhqosUserQueueStatisticsPassBytesRate   "                       /" hwhqosUserQueueStatisticsDropPacketsRate    "                       -" hwhqosUserQueueStatisticsDropBytesRate    "                       "" hwhqosUserQueueStatisticsTable "                       "" hwhqosUserQueueStatisticsEntry "                       6" hwhqosUserQueueClassifierStatisticsInterfaceIndex  "                       1" hwhqosUserQueueClassifierStatisticsDirection  "                       5" hwhqosUserQueueClassifierStatisticsClassifierName "                       1" hwhqosUserQueueClassifierStatisticsSlotNumber "                       2" hwhqosUserQueueClassifierStatisticsQueueIndex  "                       -" hwhqosUserQueueClassifierStatisticsReset  "                       2" hwhqosUserQueueClassifierStatisticsPassPackets "                       1" hwhqosUserQueueClassifierStatisticsPassBytes  "                       3" hwhqosUserQueueClassifierStatisticsDropPackets  "                       1" hwhqosUserQueueClassifierStatisticsDropBytes  "                       7" hwhqosUserQueueClassifierStatisticsPassPacketsRate  "                       6" hwhqosUserQueueClassifierStatisticsPassBytesRate   "                       9" hwhqosUserQueueClassifierStatisticsDropPacketsRate    "                       7" hwhqosUserQueueClassifierStatisticsDropBytesRate    "                       '" hwhqosUserGroupQueueStatisticsTable "                       '" hwhqosUserGroupQueueStatisticsEntry "                       ," hwhqosUserGroupQueueStatisticsGroupName  "                       ," hwhqosUserGroupQueueStatisticsDirection  "                       ," hwhqosUserGroupQueueStatisticsSlotNumber "                       (" hwhqosUserGroupQueueStatisticsReset  "                       -" hwhqosUserGroupQueueStatisticsPassPackets "                       ," hwhqosUserGroupQueueStatisticsPassBytes  "                       ." hwhqosUserGroupQueueStatisticsDropPackets  "                       ," hwhqosUserGroupQueueStatisticsDropBytes  "                           5"The ID of the frame which the alarm device located."                       <"The ID of the slot on which the alarmed HQoS user applied."                       8"The ID of port on which the alarmed HQoS user applied."                           $"The user queue discard alarm trap."                         "The compliance statment."                   "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 G"The notification group defined for discard packets of a user`s queue."                     "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                            