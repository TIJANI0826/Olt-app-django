5--  ============================================================================
-- Copyright (C) by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description:  
-- Reference:  
-- Version: V1.0
-- History:
-- 
-- 
-- ============================================================================
   '"A simple status value for the object."                                                h"The MIB module for RBRP feature.                          
                RPR Bridge Redundancy Protocol (RBRP) is the protocol for detecting 
                and initializing the intersection ring configuration, and providing 
                protection for data transfer from one rpr ring to another one via 
                intersection rpr stations."\" R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com "        -- March 31, 2007 at 01:30 GMT
           m"Set the identity which distinguishes local device 
                from other devices in a specific group."                       @"Table contains WrapToNormalDelay information in the  ring-if ."                       ]"An entry contains WrapToNormalDelay information of ring-if 
                in the device."                       "RPR logic interface index."                       5"This object sets WrapToNormalDelay time of ring-if."                       R"Table contains group based configuration information 
                for RBRP."                       �"An entry, which contains configuration information for
                a specific group, is created for each group in the device
                and deleted when the device exit the group."                       _"This object distinguishes a specific group from other 
                groups in the device."                      �"This object indicates the device's priority which 
                determines the status of a device in a specific group.
                The non-unready device with the largest priority value 
                is in active status.
                When a device's priority is equal to another device's,
                the DeviceId will be the determining factor of a device's
                status."                       �"If PreemptedEnable is configured in a device which is
                in active status in a specific group, its status could
                be preempted by device with larger priority value."                      "If StatePromptSwitchEnable is configured on a common station which 
                belongs to a specific group, The common station moves from standby 
                state to active state  promptly when multiple-site faults occur to 
                the primary ring."                       �"This object is used to set the delay for the station moving from the active state
                to the ready state after preempted."                       @"RowStatus, Now support three value:CreateAndGo,Active,Destroy."                       Y"Table contains configuration information of ring-if in
                specific group."                       \"An entry contains configuration information of ring-if in
                specific group."                       _"This object distinguishes a specific group from other 
                groups in the device."                       k"This object indicates a ring-if is on the primary rpr ring
                or on the secondary rpr ring."                       "RPR logic interface index."                       @"RowStatus, Now support three value:CreateAndGo,Active,Destroy."                       8"Table contains statistics information of RBRP packets."                       ;"An entry contains statistics information of RBRP packets."                       _"This object distinguishes a specific group from other 
                groups in the device."                       d"This object indicates the number of RBRP packets received 
                from a specific group."                       b"This object indicates the number of RBRP bytes received 
                from a specific group."                       a"This object indicates the number of RBRP packets sendedd 
                to a specific group."                       _"This object indicates the number of RBRP bytes sendedd 
                to a specific group."                       3"Clear the statistics information of RBRP packets."                       ("Table contains RBRP group information."                       +"An entry contains RBRP group information."                       _"This object distinguishes a specific group from other 
                groups in the device."                       a"This object distinguishes a specific device from other 
                devices in the groups."                       a"This object indicates the mac address of rpr station on the 
                primary rpr ring."                       c"This object indicates the mac address of rpr station on the 
                secondary rpr ring."                       T"This object indicates the priority of a device
                in specific group."                       �"This object indicates the status of a device 
                in specific group.
                Now support four state:Unready, Ready, Standby, and Active."                           �"The device id conflict defect.
                When a device id conflict defect is present,
                a notification may be generated."                 �"The Unready status defect.
                When an Unready status defect is present,
                a notification may be generated."                 �"The Unready status restore.
                When a Ready status is present,
                a notification may be generated."                         "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                                