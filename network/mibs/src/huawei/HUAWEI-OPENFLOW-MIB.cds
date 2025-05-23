r-- ===================================================================
-- Copyright (C) 2015 by HUAWEI TECHNOLOGIES. All rights reserved.
-- Description: This MIB contains private managed object and notification 
--              trap definitions for Openflow.
-- Reference:
-- Version: V1.00
-- ===================================================================
   �"Datapath unique ID type. The lower 48-bits are for
                a MAC address, while the upper 16-bits are
                implementer-defined."                                 l"This MIB contains private managed object and notification trap 
                definitions for Openflow." �"Huawei Industrial Base
                 Bantian, Longgang
                 Shenzhen 518129
                 People's Republic of China 
                 Website: http://www.huawei.com
                 Email: support@huawei.com" "201506171600Z" "V1.00, initial version."       "-- June 17, 2015 at 16:00:00 GMT
                   ."Basic information about openflow Connection."                       ."Basic information about openflow Connection." ""                     9"Indicates the administrative IP type of openflow  node."                       B"Indicates the administrative IP address of openflow remote node."                       A"Indicates the administrative IP address of openflow local node."                       0"This object indicates the vpn instance's name."                       �"Indicates the datapath unique ID. The lower 48-bits are for
                a MAC address, while the upper 16-bits are implementer-defined."                       ("Indicates the auxiliary connection ID."                       s"Indicates the detail reason of openflow connection down. If no detail reason, the value of the node will be zero."                      �"This object indicates the cause that the openflow connection becomes down.
                 Options:
                 1. tcpDown(1)            --indicates tcp down.
                 2. heartbeatTimeout(2)   --indicates openflow heartbeat timeout.
                 3. pduError(3)           --indicates openflow message data is wrong.
                 4. connectionUp(4)       --indicates connection is up."                           D"This notification indicates that openflow session changes to down."                 B"This notification indicates that openflow session changes to up."                         P"Compliance Channelment for agents that provide full support for hwBaseTrapMIB."                   "Group for all base traps."                     "Group for base trap objects."                            