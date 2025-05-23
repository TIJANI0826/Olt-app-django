�--     =================================================================
-- Copyright (C) 2008 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description:  The HUAWEI-SUPERLAG-MIB.mib provides information about SUPERLAG
-- Reference:
-- Version:     V1.0
-- History:
--              zhenghebin,2008.11.25,publish 
-- =================================================================
                                                     "Description." "Contact-info."       -- June 10, 2005 at 19:36 GMT
           "The super LAG table."                       "Super LAG entry."                       <"The ID of the super LAG, it is the index of the super LAG."                       ;"The system ID of the super LAG, it is a physical address."                       4"The priority of the super LAG. The default is 100."                       t"The status of the super LAG. 
                 1:initialize
                 2:backup
                 3:master"                      0"The reason for the super LAG is in the current status. 
                 pri(1):Priority calculation 
                 timeout(2):Receiving timer timeout
                 bfdDown(3):BFD detected the control link between the PE and peer down
                 peerTimeout(4):Receiving timer of the peer timeout
                 peerBfdDown(5):BFD of the peer detected the control link between the PE and peer down
                 allMemberDown(6):All SuperLagMembers of the superlag down
                 init(7):The initial superlag.
                "                       '"The IP address of the peer super LAG."                       )"The source IP address of the super LAG."                       ]"The fail time of the super LAG for receiving packets. It is the multiple of sending period."                       D"The period for sending packets of the super LAG. The unit is 100ms"                       %"The number of the received packets."                       $"The number of the sending packets."                       A"The number of the droped packets when the packets are received."                       A"The number of the droped packets when the packets are send out."                       ;"The system ID of peer super LAG,it is a physical address."                       %"The priority of the peer super LAG."                       M"The fail time of the peer super LAG for receiving packets.The unit is 100ms"                       {"The mode of the security key. 
                 1:The simple encrypt mode; 
                 2:The cipher encrypt mode."                      "This is the security key. It is must be hex number and the most number is 16.
                 If hwSuperLagSecurityKeyType is simple, you can get the key.
                 If hwSuperLagSecurityKeyType is cipher, the system returns a random character string with 24 bytes."                       x"The ID of BFD session which is bind to a super LAG. When the status of the link is changed, BFD will notify super LAG."                       e"Reset hwSuperLagPacketReceive,hwSuperLagPacketSend,hwSuperLagPacketRecDrop,hwSuperLagPacketSndDrop."                       b"Current operation status of the row.Used to manage the creation and deletion of conceptual rows."                       ""The member table of a super LAG."                       "Member Entry."                       :"The ID of the super LAG which the member is belonged to."                       L"The type of the member. Now is EthTrunk only.
                 1:EthTrunk"                       "The ID of the member."                       M"The member status.  
                 1:backup
                 2:master."                      �"The reason for the member is in the current status.  
                 forceBackup(1):The work mode of the member is force-backup
                 forceMaster(2):The work mode of the member is force-master
                 suplagInit(3):The work mode of the member is auto, the status of parent super LAG is INITIALIZE
                 suplagBackup(4):The work mode of the member is auto, the status of parent super LAG is BACKUP
                 suplagMaster(5):The work mode of the member is auto, the status of parent super LAG is MASTER
                 peerMemberDown(6):The status of the members belonged to the peer super LAG is down
                 peerMemberUp(7):The status of the members belonged to the peer super LAG is up"                       x"The work mode of the member. 
                 1:auto
                 2:forceBackup
                 3:forceMaster"                       `"The local physical link status of the member. 
                 1:up
                 2:down"                       b"Current operation status of the row.Used to manage the creation and deletion of conceptual rows."                           v"The event is generated when the status of the super LAG is changed or the status reason of the super LAG is changed."                 r"The event is generated when the status of the memeber is changed or the status reason of the memeber is changed."                         "Description."                   "Description."                 "Description."                 "Description."                    