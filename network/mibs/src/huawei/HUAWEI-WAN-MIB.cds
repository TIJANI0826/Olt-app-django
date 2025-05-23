-- ==================================================================
-- Copyright (C) 2015 by HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description:  This MIB module defines MIB objects of hwIBTable, hw3GTable and hwSPRTrap.
-- Reference:
-- Version: V1.12
-- History:
-- V1.0 2007-10-21 publish
-- ==================================================================
     u"The private mib file includes the general extent 
              information of the device.hwDatacomm(241).hwWANMIB"F"Huawei Industrial Base                
              Bantian, Longgang                     
              Shenzhen 518129                       
              People's Republic of China            
              Website: http://www.huawei.com        
              Email: support@huawei.com             
              " "201505251601Z" "201505151601Z" "201503171451Z" "201410071451Z" "201408081451Z" "201406201451Z" "201401091451Z" "201310162047Z" "201309111647Z" "201308261942Z" "201306242018Z" "201304261142Z" "V1.12, update version" "V1.11, update version" "V1.10, update version" "V1.09, update version" "V1.08, update version" "V1.07, update version" "V1.06, update version" "V1.05, update version" "V1.04, update version" "V1.03, update version" "V1.02, update version" "V1.01, update version"                       �"Indicates the attribute of the IB interface formed by timeslots.
              This table lists the physical attributes of the IB interface."                       �"Indicates the attribute of the IB interface formed by timeslots.
                This table lists the physical attributes of the IB interface."                       6"Interface index(es) of IB(s) present on the device ."                       "IB Standby Interface1."                       
"IB Pri1."                       "IB Standby Interface2."                       
"IB Pri2."                       "IB Standby Interface3."                       
"IB Pri3."                       "IB Standby Type."                       "IB Standby BandWidth."                       "IB Enable Threshold."                       "IB Disable Threshold."                       "IB Active Timer."                       "IB Inactive Timer"                           5"Indicates the attribute of the cellular interface ."                       5"Indicates the attribute of the cellular interface ."                       8"3G or LTE index(es) of port(s) present on the device ."                       V"The ModemState of cellular interface is used to test 3G or LTE whether online or not"                       "Device Number"                       "Device Manufaceturer"                       "3G or LTE License"                        "3G or LTE Device Serial Number"                       "The Status of 3G or LTE UIM"                       "3G or LTE IMSI"                       "3G MV "                       "3G or LTE Oper"                       "3G or LTE Signal Intensity"                       "3G or LTE APN Name"                       #"3G or LTE Network Connection Type"                       !"3G or LTE Total Connection Time"                       !"3G or LTE sent Rate (packets/s)"                       $"3G or LTE Receive Rate (packets/s)"                       "3G or LTE Bytes Sent (bytes)"                       ""3G or LTE Bytes Received (bytes)"                       %"3G or LTE Sent Bytes Rate (bytes/s)"                       ("3G or LTE Receive Bytes Rate (bytes/s)"                       "3G or LTE Up Band"                       "3G or LTE Down Band"                       "Packet Session Status"                       ""Integrate Circuit Card Identity "                       +"3G or LTE Network Current Connection Type"                       C"Received Signal Strength Indicator, Only for LTE or WCDMA Network"                       ;"Received Signal Code Power, Only for LTE or WCDMA Network"                       T"Energy Per Chip to Interference of Other Cell Ratio, Only for LTE or WCDMA Network"                       @"Reference Signal Received Power, Only for LTE or WCDMA Network"                       H"Signal to Interference Plus Noise Ratio, Only for LTE or WCDMA Network"                       B"Reference Signal Received Quality, Only for LTE or WCDMA Network"                       !"3G or LTE Network Current IMEI "                       #"3G or LTE Network Current MSISDN "                        "3G or LTE Network Current MCC "                        "3G or LTE Network Current MNC "                       "3G or LTE APN User name"                       "3G or LTE APN password"                        "3G or LTE Network Current BER "                       #"3G or LTE Network Current cellid "                       #"3G or LTE sim card switch counts "                       /"Change the simcard force by user input simID "                       "Get current used sim ID"                       "Current Firmware Version"                       "3G or LTE Connection Status"                       &"3G or LTE Network Connection SubType"                       "3G or LTE Connect Time"                               "Link Index"                       "Link Name"                       ,"Link State.0 is eligible;1 is not eligible"                              "
                1 Notice/Trap name:  Link not eligible 
                2 Notice/Trap generation cause:  Link not eligible 
                3 Repair suggestions:
                    Check the links according to not eligible reasons.
                "                     1"Indicates the attribute of the SPR service map."                       1"Indicates the attribute of the SPR service map."                       4"This object indicates the index of the service map"                       3"This object indicates the name of the service map"                       @"This object indicates the current link name of the service map"                       :"This object indicates the system name of the service map"                       B"This object indicates the original ip address of the service map"                           v"
                The notification indicates that the current link of SPR service map was changed.
                "                         T"The compliance statement for systems supporting 
                the this module."                   "The IB group."                 "The 3G group."                 "The SPR Link group."                 !"The SPR Link Trap Define group."                     "The SPR Service group."                 "The SPR Traps group."                     "The 3G Traps group."                     "The 3G MIB TrapOid group."                 "The 3G MIB Traps group."                             �"
			1 Notice/Trap name:   hw3gDeviceStartUpInfo
			2 Notice/Trap generation cause:  3G mode startup 
			3 Repair suggestions:
			    Check the 3G mode startup Info.
			"                 �"
			1 Notice/Trap name:  hw3gAttachedGPRS 
			2 Notice/Trap generation cause:  3g attached the network 
			3 Repair suggestions:
			    Check the 3G attached the network.
				"                         "Interface Name"                       "Net Old CellID"                       "Net New CellID"                           d"
                The notification indicates that interface  cellId was changed.
                "                            