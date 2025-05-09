h--  ==================================================================
-- Copyright (C) 2006 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI CCC Management MIB
-- Reference:
-- Version:     V1.0
-- History:
--              V1.0 PanJun, 2006-05-11, publish
-- ==================================================================
                                         J"The HUAWEI-CCC-MIB contains objects to
                manage KOMPELLA."Z"R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com"       -- May 11, 2006 at 09:00 GMT
           j"This table is the CCC's configuration table. Users can 
                create or delete the CCC by it."                       *"Provides the information of a CCC entry."                       &"The human-readable name of this CCC."                       /"This object indicates the VC connection type."                       2"This object indicates the service to be carried."                       N"This object indicates the AC ifIndex.
                0 is invalid ifIndex."                       y"This object indicates the static inbound label.
                This value need not be designated if the CCC is local."                       z"This object indicates the static outbound label.
                This value need not be designated if the CCC is local."                       �"This object indicates the ifIndex of the out interface
                in the side of PSN, or the ifIndex of the out interface
                in the side of AC if the CCC is local cross.
                0 is invalid ifIndex."                      "This object indicates the next hop IP address of the out
                interface in the side of PSN.
                For the interface of ATM or FR or Ethernet, the next hop
                address must be used. Don't use the out interface in this
                case."                       |"This object indicates the control word capability.
                This value need not be designated if the CCC is local."                       -"This object indicates the operation status."                       ."Specifies the time this VC status was Up(1)."                       <"Specifies the cumulate time this VC status has been Up(1)."                       "Specifies the MaxAtmCells."                        "Specifies the AtmPackOvertime."                       $"Specifies the PwJitterBufferDepth."                       &"Specifies the PwTdmEncapsulationNum."                       "Specifies the PwIdleCode."                       "Specifies the PwRtpHeader."                       ?"This object indicates the enable sign of the IP interworking."                       "RowStatus for this Table."                       6"This table contains the CCC's VC packets statistics."                       O"Provides the information of the CCC's VC packets
                Statistics."                       �"This object indicates the AC ifIndex.
                The CCC will have two AC which need to be displayed
                if the CCC is local cross."                       2"The total number of packets received on this VC."                       0"The total number of bytes received on this VC."                       ."The total number of packets sent on this VC."                       +"The total number of bytes sent on the VC."                       ]"This object indicates the enable sign of CCC
                VC state change notification."                       Y"This object indicates the enable sign of CCC
                VC deletion notification."                       K"This object indicates the reason of CCC VC
                state change."                           ="This notification indicates the VC's state changes to down."                 ;"This notification indicates the VC's state changes to up."                 0"This notification indicates the VC is deleted."                         \"The compliance statement for systems supporting 
                the HUAWEI-KOMPELLA-MIB."                   "The CCC's VC group."                  "The CCC's VC Statistics group."                 '"The CCC's Notification Control group."                 )"The CCC's Vc State Change Reason group."                 "The CCC Notification group."                                