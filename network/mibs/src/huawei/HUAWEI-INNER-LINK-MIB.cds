�--  =================================================================
-- Copyright (C) 2007 by HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI Inner Link MIB File for inner links between 
--                frames
-- Reference:   
-- Version:     V1.00
-- History: 
-- 
--           V1.00   2007-10-24, Create 
-- =================================================================
     �"The private mib file includes the general  
                information of inner links between frames
                in cluster system."\" R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com "       -- Oct. 24, 2007 at 14:30 GMT
               �"To describe physical entity index of left port of 
                 the physical link which is part of the corresponding
                 inner logical link."                       �"To describe physical entity name of left port of 
                 the physical link which is part of the corresponding
                 inner logical link."                       �"To describe physical entity index of right port of 
                 the physical link which is part of the corresponding
                 inner logical link."                       �"To describe physical entity name of right port of 
                 the physical link which is part of the corresponding
                 inner logical link."                      &"This table contains one row per inner link entity.
                Each inner link is composed of all physical links
                of the same kind between two frames. 
                 It describes the status of the inner link between
                 frames in NE5000E Cluster system."                       �"Information about a particular inner link entity.
                Each entry provides left and right vitural port and status
                of the link to NMS to manage the links."                       w"The index for this entry.It comprises of left frame
                ID, right frame ID and type of the logical link."                       �"Frame type of the link's left point. A value of centralChassis 
                means the central frame in the system which can manage the system.
                A value of lineChassis means a frame managed by the central frame."                       $"Frame ID of the link's left point."                       *"Port ID of the link's left virtual port."                       '"Frame type of the link's right point."                       %"Frame ID of the link's right point."                       +"Port ID of the link's right virtual port."                      �"Inner link type between the frames. A value of controlChannel
                means a kind of logical link through which control messages're
                transferred. A value of monitorChannel  means a kind of logical 
                control link which only exists between the central chassises. 
                A value of forwardChannel mean a kind of logical link which is 
                used for data forwarding."                      �"The administrative state for this object, and it is possible 
                to set the state when needed. A value of locked means the resource 
                is administratively prohibited from use. A value of shuttingDown 
                means that usage is administratively limited to current instances 
                of use. A value of unlocked means the resource is not administratively 
                prohibited from use."                      "The operational state for this object. A value of mostPhyChannelUp means
                most of the physical links consisting of the logical link are working well.
                It's possible that none of the physical links is wrong. A value of 
                partPhyChannelUp means several physical links of the logical link are broken
                down. A value of mostPhyChannelDown means most of the physical links of the
                logical link are down. It's possible that none of the physical links is ok. "                      "The alarm status for this entity. It is decided by
                the alarm status of the physical links which compose
                the logical link.
                
                When no bits of this attribute are set, then none of the
                status conditions described below are present. When the
                value of under repair is set, the resource is currently
                being repaired.
                
                When the value of critical is set, one or more critical
                alarms are active against the resource. When the value of
                major is set, one or more major alarms are active against
                the resource. When the value of minor is set, one or more
                minor alarms are active against the resource. When the
                value of warning is set, one or more warning alarms are
                active against the resource. When the value of
                indeterminate is set, one or more  alarms of indeterminate
                severity are active against the resource.
                
                When the value of alarm outstanding is set, one or more
                alarms is active against the resource. The fault may or may
                not be disabling."                               J"One physical link of the corrresponding inner logical link is available."                 L"One physical link of the corrresponding inner logical link is unavailable."                         ]"The compliance statement for systems supporting
                the HUAWEI Inner Link MIB."   "Write access is not required."                 "HUAWEI Inner Link group."                  "Inner Link Notification group."                                