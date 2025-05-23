-- ===================================================================
-- Copyright (C) 2017 by HUAWEI TECHNOLOGIES. All rights reserved.
-- Description: FCoE MIB
-- Reference:
-- Version: V1.05
-- ===================================================================
   �"
            BE(1)
            AF1(2)
            AF2(3)
            AF3(4)
            AF4(5)
            EF(6)
            CS6(7)
            CS7(8)

            "               �"Reset Flag:                               
            DISABLE (0)
            RESET   (1)
            ENABLE  (2)           
            "                 0"The MIB contains objects of DC FCOE features ." �"Huawei Industrial Base
  Bantian, Longgang
   Shenzhen 518129
   People's Republic of China
   Website: http://www.huawei.com
   Email: support@huawei.com
 " "201702201425Z" "201008111600Z" "201412111600Z" "201412231904Z" "201501041804Z" A"Add type ResetFlag and mib node hwDcbPfcFrameStatisticsObjects." "V1.00, initial version." ,"Add type hwFCoEPortResource, hwTNPortVlan." e"Add type hwFCoEFcfVlan, hwFCoEVFPortNum, hwFCoEVNPortNum, hwFCoEInstName, hwSysMacNum, hwFCoEVsId ." 0"Modify type hwFCoEVsId and other description ."                   /"This FCoE interface name is sent from device."                        "This VLAN is sent from device."                       -"This FCoE port resource is reach max limit."                       7"The detect vlan is different from the configued vlan."                       4"The Fcf vlan is different from the configued vlan."                       "The FCoE VF Port number."                       "The FCoE VN Port number."                       "The FCoe instance name."                        "The system mac-address number."                       "The Fcoe-port Index."                           �"When the device receives a FIP Notification packet,it gets VLANs from the packet, and compares with
            configuration at the inputing-port, if it's not same, exports warning."                 �"When the device receives a FIP Notification packet,it gets VLANs from the packet, and lookup at the
            configuration , if it's not exist, exports warning."                 2"The number of vf-port has reached max limits 64."                 ;"The number of online vn-ports has reached max limits 256."                 b"The number of VN_Ports that belong to the same NPV instance exceeds the number of MAC addresses."                 >"The requested vlan is different from the configued NPV vlan."                         ^"The compliance statement for SNMP entities which implement
            the HUAWEI-FCOE-MIB."                   "Group for FCoE trap objects."                 "Group for FCoE trap."                     &"Group for dcb pfc frame  statistics."                     A"A table of dcb pfc frame statistics for queue on the interface."                       !"dcb pfc frame statistics entry."                       :"The value of this object identifies the interface index."                       6"The value of this object identifies the queue index."                       G"This object indicates the number of pfc frames received by the queue."                       C"This object indicates the number of pfc frames sent by the queue."                       -"Reset dcb pfc frame statistics information."                                  