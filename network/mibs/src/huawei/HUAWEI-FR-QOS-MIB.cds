�-- =================================================================
-- Copyright (C) 2004 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: This mib file is used for management of huawei Class Based 
--              FR QoS information. 
-- Reference:
-- Version:     V1.0
-- History:
--  2004-07-12   V1.00   CAOLEI  publish 
-- =================================================================
    "The Direction Policy apply on."                                    �"The HUAWEI-FR-QOS-MIB contains objects to 
            Manage configuration and Monitor running state 
            for Class Based FR QoS feature.
            
                   *********************************
                    MIB Tables
                   **********************************
            This MIB consists of the following tables:
                 1 :  hwFrClassCfgInfoTable
                 2 :  hwCirAllowCfgInfoTable
                 3 :  hwCirCfgInfoTable
                 4 :  hwIfApplyFrClassTable
                 5 :  hwPvcApplyFrClassTable
                 6 :  hwFrPvcBandwidthTable
                 7 :  hwRTPFrClassApplyTable
                 8 :  hwRTPFrPvcQueueRunInfoTable                        
            "D" R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd., 
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085 
            Http://www.huawei.com                                       
            E-mail:support@huawei.com "       -- JULY 12, 2004 at 00:00 GMT
               �"This object contains an appropriate value to be used for 
            hwFrClassIndex when creating rows in the 
            hwFrClassCfgInfoTable. Begin with 0.
            "                       0"A table of Fr Class configuration information."                       +"Fr Class Configuration Information Entry."                       ""Index of Fr Class. Begin with 0."                       "Name of Fr Class."                       N"RowStatus. Three actions are used: active,
            createAndGo, destroy"                       8"A table of DCE allowed rate Configuration information."                       4"DCE allowed ratee Configuration Information Entry."                       9"Index of Fr Class. Begin with 0.Equal to hwFrClassIndex"                       �"Packet Direction. 
            value 1,2,3 Used by hwCirAllowValue.            
            inbound (1)
            outbound (2)
            inbound and outbound (3)  
            "                       v"DCE allowed rate (value greater than CIR) 
            Unit : Bits per second. 
            Value : <1-45000000> ."                       N"RowStatus. Three actions are used: active,
            createAndGo, destroy"                       B"A table of Committed Information Rate Configuration information."                       ="Committed Information Rate Configuration Information Entry."                       9"Index of Fr Class. Begin with 0.Equal to hwFrClassIndex"                       N" CIR in packet output direction ,bps. 
            Value : <1000-45000000>."                       N"RowStatus. Three actions are used: active,
            createAndGo, destroy"                       #"A table of QoS Fr Class instance."                       ?"FrClass applied on interface Configuration Information Entry."                       $"Interface Index, equal to ifIndex."                       ,"Index of Fr Class, equal to hwFrClassIndex"                       N"RowStatus. Three actions are used: active,
            createAndGo, destroy"                       #"A table of QoS Fr Class instance."                       ="Fr Class applied on FR Pvc Configuration Information Entry."                       '"Fr Interface Index, equal to ifIndex."                       "Fr DLCI number."                       ,"Index of Fr Class, equal to hwFrClassIndex"                       N"RowStatus. Three actions are used: active,
            createAndGo, destroy"                       <"A table of Running statistics for bandwidth.
            "                       "Bandwidth Running statistics"                       %"Max reserved bandWidth. Unit : Kbps"                       ""Available bandWidth. Unit : Kbps"                           "A table of QoS rtpq instance."                       '"Rtpq Configuration Information Entry."                       *"Fr Class Index, equal to HwFrClassIndex."                       �"                                                                                        
            RTP-PORT(3): start-port: 2000~65535   
            "                       X"                         
            RTP-PORT(3): end-port: 2000~65535
            "                       d"Max bandWidth Value:
            Absolute value: 8~1000000. Unit: Kbps             
            "                       Y"
            Committed Burst Size: 1500~2000000. Unit: byte             
            "                       i"RowStatus for RTPFrClassApply Table. 
            Three actions are used: active, createAndGo, destroy"                       Q"A table of Running statistics for RTPQ Queue
            applied on the FR PVC"                       "Queue statistics entry."                       "Size of Rtpq Queue."                       "Max size of Rtpq Queue."                       "Outputs of Rtpq Queue."                       "Discards of Rtpq Queue."                                  