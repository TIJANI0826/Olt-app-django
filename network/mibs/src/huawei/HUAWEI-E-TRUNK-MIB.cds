q--     =================================================================
-- Copyright (C) 2015 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description:  The HUAWEI-E-TRUNK-MIB.mib provides information about E-Trunk 
-- Reference:
-- Version:     V2.06 
-- History: 
--              liwei, 2015-7-30. 
--              1. Add E-Trunk expected state trap. 
-- Version:     V2.05 
-- History: 
--              wangguojin, 2014-10-29. 
--              1. Add E-Trunk member reason for evpn. 
-- Version:     V2.04 
-- History: 
--              mengfanlu, 2014-05-21. 
--              1. Add backup port table. 
-- Version:     V2.02 
-- History: 
--              caoli, 2014-05-04. 
--              1, Add five new nodes based on V2.01 for E-Trunk auto BFD
--                 hwETrunkAutoBFDEnable, hwETrunkAutoBFDTrackIfIndex, 
--                 hwETrunkAutoBFDTxInterval, hwETrunkAutoBFDRxInterval, 
--                 hwETrunkAutoBFDDetectMultiplier. 
-- Version:     V1.0
-- History: 
--              zhenghebin,2008.11.25,publish 
-- =================================================================
                                                                     >"Add hwETrunkExpectStateChange and hwETrunkExpectStateResume.""Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com
                 " "201507221448Z" "201410291522Z" "201406302146Z" "201405210941Z" "201405071057Z" "201312021153Z" "200810211010Z" @"The HUAWEI-E-TRUNK-MIB.mib provides information about E-Trunk." %"Add E-Trunk member reason for evpn." !"Add trill active-active reason." "Add backup port table." 9"Add five new nodes based on V2.01 for E-Trunk auto BFD." >"The specification of E-Trunk number expanded from 64 to 128." "Initial version."                   "The E-Trunk table."                       "E-Trunk entry."                       "The index of the E-Trunk."                       9"The system ID of the E-Trunk. It is a physical address."                       8"The priority of the E-Trunk. The default value is 100."                       x"The status of the E-Trunk. 
                 1:initialize. 
                 2:backup. 
                 3:master. "                      �"The reason for the E-Trunk being in the current status. 
                 pri(1):Priority calculation.  
                 timeout(2):The receiving timer timed out. 
                 bfdDown(3):BFD detected the control link between the PE and peer down. 
                 peerTimeout(4):The receiving timer of the peer timed out. 
                 peerBfdDown(5):BFD of the peer detected the control link between the PE and peer down. 
                 allMemberDown(6):All members of the E-Trunk were down. 
                 init(7):Initiated the E-Trunk. 
                 peerNodeDown(8):The peer node is down. 
                "                       %"The peer IP address of the E-Trunk."                       '"The source IP address of the E-Trunk."                       `"The detection time multiplier for failure detection. It is the multiple of the sending period."                       D"The period for sending packets of the E-Trunk. The unit is 100ms. "                       !"The number of received packets."                       "The number of sent packets."                       B"The number of the dropped packets when the packets are received."                       >"The number of the dropped packets when the packets are sent."                       >"The system ID of the peer E-Trunk. It is a physical address."                       #"The priority of the peer E-Trunk."                       O"The failure time for the peer E-Trunk to receive packets. The unit is 100ms. "                       }"The type of the security key. 
                 1:The simple encrypt type.  
                 2:The cipher encrypt type. "                       �"This object can be set to a simple password with a string of 0 to 255 characters or a encrypted password with a string less than 392 characters. For security purposes, a get on this returns a zero length string."                       �"The ID of a BFD session which is bound to the E-Trunk. 
               When the status of the BFD session is changed, the status of the E-Trunk is also changed with BFD's status."                       ]"Reset hwETrunkPacketReceive,hwETrunkPacketSend,hwETrunkPacketRecDrop,hwETrunkPacketSndDrop."                       D"The delay time to revert. The unit is second. The default is 120. "                      3"The name of a BFD session which is bound to the E-Trunk. 
               And BFD session name is composed of octet string which is 1 to 15 octet and can't contain space within it. 
               When the status of the BFD session is changed, the status of the E-Trunk is also changed with BFD's status."                       5"The description of the E-Trunk. The default is NULL"                       F"The object indicates whether the E-trunk enable auto BFD  function. "                       b"The object indicates the index of an interface which is tracked by the E-Trunk auto BFD session."                       V"The sending interval of E-Trunk auto BFD session in milliseconds. The default is 10."                       X"The receiving interval of E-Trunk auto BFD session in milliseconds. The default is 10."                       F"The detect multiplier of E-Trunk auto BFD session. The default is 3."                       ^"The expect status of the E-Trunk. 
                 1:backup. 
                 2:master. "                       i"Current operation status of the row. It is used to manage the creation and deletion of conceptual rows."                       ""The member table of the E-Trunk."                       "Member Entry."                       4"The ID of the E-Trunk to which the member belongs."                       z"The type of the member. Now it is Eth-Trunk and Global-VE.
                 1:Eth-Trunk.
                 2:Global-VE."                       "The ID of the member."                       P"The member status.  
                 1:backup. 
                 2:master. "                      �"The reason for the member being in the current status.   
                 forceBackup(1):The work mode of the member is force-backup. 
                 forceMaster(2):The work mode of the member is force-master. 
                 etrunkInit(3):The work mode of the member is auto. The status of E-Trunk is initialize. 
                 etrunkBackup(4):The work mode of the member is auto. The status of E-Trunk is backup. 
                 etrunkMaster(5):The work mode of the member is auto. The status of E-Trunk is master. 
                 peerMemberDown(6):The status of the member belonging to the peer E-Trunk is down.  
                 peerMemberUp(7):The status of the member belonging to the peer E-Trunk is up.
                 activeActive(8):The status of the trill active-active is ok.
                 degradedActive(9):The status of the trill active-active is fail, but the status of the peerlink is up.
                 peerLinkDown(10):The status of the trill active-active is fail, and the status of the peerlink is down. 
                 linkDown(11):The status of the E-Trunk member is down.
                 allActive(12):The E-Trunk member is bound to an EVPN instance, and the redundancy mode is all-active."                       �"The work mode of the member. 
                 1:auto. 
                 2:forceBackup. 
                 3:forceMaster. 
                 4:activeActive."                       Y"The physical status of the member. 
                 1:up. 
                 2:down. "                       �"Indicates the ID of a remote E-Trunk member. By default, the ID of a remote E-Trunk member is the same as the ID of the local E-Trunk member. When both ends have E-Trunk member with different IDs, you need to specify the ID of a remote E-Trunk member."                       i"Current operation status of the row. It is used to manage the creation and deletion of conceptual rows."                       '"The backup port table of the E-Trunk."                       "Backup Port Entry."                       "The index of the E-Trunk."                       0"The backup port number of the E-Trunk for RBS."                       i"Current operation status of the row. It is used to manage the creation and deletion of conceptual rows."                           q"The trap is generated when the status of the E-Trunk is changed or the status reason of the E-Trunk is changed."                 q"The trap is generated when the status of the memeber is changed or the status reason of the memeber is changed."                 \"The trap is generated when the status of the E-Trunk is inconsistant with expected state ."                 -"The expected state trap of E-Trunk resumed."                         "Description."                   "Description."                 "Description."                 "Description."                     ,"The backup port infomation of the E-Trunk."                