�--==================================================================
-- Copyright (C) 2006 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: This mib defines all objects to manager Notification 
--                packets    which not contained in NOTIFICATION-LOG-MIB
--                [RFC3014].
-- Reference: rfc3014  rfc3413
-- Version: V1.0
-- History:
-- WangKe   2006-11-22
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types are imported
--
-- ==================================================================
                    l"The HUAWEI-ALARM-RELIABILITY-MIB contains all objects 
                to manager Notification packets, it mainly contains    
                following parts:    
                1) The number of pending Inform packets.
                2) The default retry number.
                3) The timeout apply to all target hosts.                
                ""VRP Team Huawei Technologies co.,Ltd. 
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei.com
                Zip:100085
                " "200612142010Z" *"The initial revision of this MIB module."                  +"If a pending inform packet receives the response 
                packet and its request-id is equal to pending 
                packet's, this pending packet is discarded at 
                once. otherwise, it will try to retransmit the 
                Inform packet after snmpTargetAddrTimeout[RFC3413], 
                repeat this operation snmpTargetAddrRetryCount
                [RFC3413] numbers if a response is not received 
                for a generated message. After this, this pending 
                packet will be discarded."                       �"This object specifies a default number of retries 
                to be attempted when a response is not received for 
                a generated message. Note that, this number will 
                apply on all the target host"                      �"This object should reflect the expected maximum round 
                trip time for communicating with the target hosts. When 
                a message is send to the target hosts, and response (if
                expected) are not received within this time period, an
                implementation may assume that the response will not be
                delivered. Note that this time interval will apply to all
                target host."                               T"The compliance statement for systems supporting 
                the this module."                   ("The group of operating inform packets."                            