<-- =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:HUAWEI-BRAS-VSM-MIB DEFINITIONS
-- Reference:
-- Version: V1.0
-- History:
--     
-- =================================================================
                                     )"The MIB contains objects of module VSM."I"
                NanJing Institute,Huawei Technologies Co.,Ltd.
                HuiHong Mansion,No.91 BaiXia Rd.
                NanJing, P.R. of China
                Zipcode:210001
                 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com "        -- April 18, 2005 at 13:34 GMT
           "Flow query time length."                       $" VSM service policy configuration."                      " Service policy entry,
                service policy name is identified as key word, direct a service policy when create, and don't allow to change.
                Index item is hwVsmServicePolicyName node. The table is used for configuration of service policy.
                Operation restriction description£º
                1. must input service policy name when created.
                2. if a service is being used for users, can't be deleted.
                3. if a service is being used by domain, can't be deleted."                       m" The service policy name, is key word, must direct a service policy when create, and don't allow to change."                       l"The account scheme name, is key word, must direct a service policy when create, and don't allow to change."                       �" In traffic policy name£¬optional, if bind, must direct an acl policy name.
                  If the acl policy policy ACL has been bound by a service policy, it can't be bound by another service policy.
                "                       5" The idle cut time, 0 means invalid, units: minute."                       V" The idle cut data flow, units: KByte/min, range: 0~100*1024*60/8.
                "                       @" The row administrator status, supporting add, delete, modify."                       �" The out traffic policy name£¬optional, if bind, must direct an acl policy name.
                  If the acl policy policy ACL has been bound by a service policy, it can't be bound by another service policy.
                "                       �" The service policy type :                
                  vas(0): normal policy;
                  daa(1): destination add account policy.
                "                       I" 
                The QOS profile of tariff level 1.
                "                       J" 
                 The QOS profile of tariff level 2.
                "                       I" 
                The QOS profile of tariff level 3.
                "                       I" 
                The QOS profile of tariff level 4.
                "                       I" 
                The QOS profile of tariff level 5.
                "                       I" 
                The QOS profile of tariff level 6.
                "                       I" 
                The QOS profile of tariff level 7.
                "                       I" 
                The QOS profile of tariff level 8.
                "                       �" 
                The Account switch of tariff level 1.  
                acct-on  (1)     
                acct-off (2)
                "                       �" 
                The Account switch of tariff level 2.
                acct-on  (1)     
                acct-off (2)
                "                       �" 
                The Account switch of tariff level 3.
                acct-on  (1)     
                acct-off (2)
                "                       �" 
                The Account switch of tariff level 4.
                acct-on  (1)     
                acct-off (2)
                "                       �" 
                The Account switch of tariff level 5.
                acct-on  (1)     
                acct-off (2)
                "                       �" 
                The Account switch of tariff level 6.
                acct-on  (1)     
                acct-off (2)
                "                       �" 
                The Account switch of tariff level 7.
                acct-on  (1)     
                acct-off (2)
                "                       �" 
                The Account switch of tariff level 8.
                acct-on  (1)     
                acct-off (2)
                "                       '" The VSM value-added-service detail. "                       s" Value-added-service detail entry,
                      VSM value-added-service detail, service ID is key word."                       N" 
                The value-added-service ID table index.
                "                       " The user ID."                       K" The service flow number, maximum 16 flows per service.
                "                      �" The value-added-service source:
                  vsmSourceDefault(0):   local; 
                  vsmSourceSig(1):       from sig server;
                  vsmSourceIptn(2):      from IPTN server;
                  vsmSourceRadius(3):    from Radius server;
                  vsmSourceBod(4):       from BOD server;
                  vsmSourceCopsNet(5):   from COPS net policy content;
                  vsmSourceCopsNetPm(6): from cops user poicy name;
                  vsmSourceCopsUser(7):  from COPS net policy content;
                  vsmSourceCopsPm(8):    from COPS user policy name;
                  vsmSourceBmi(9):       from BMI server;
                  vsmSourceIpBod(10):    from Liangchuang BOD server."                       c" 
                 The slot number corresponding slot of service, table index.
                "                       n"
                 The value-added-service policy name, optional, if not used , fill '--'.
                "                       \"
                 The account method, it may be Local,None,Radius,Cops.
                "                       f" 
                 The account start time, optional, if don't account, fill '--'.
                "                       x"
                 The account server name show accounting server name. If don't account, show '--'.
                "                       q"
                 The two level account server name, optional, if don't account, show  '--'.
                "                       z"
                 The physical information account server name, optional, if don't exist, show  '--'.
                "                       m"
                 The value-added-service idle cut time, 0 means invalid, units: minute.
                "                       |"
                 The value-added-service idle cut data flow, units: kbyte/min, range: 0~100*1024*60/8.
                "                       X"
                 The value-added-service up packet number(64 bit).
                "                       V"
                 The value-added-service up byte number(64 bit).
                "                       Z"
                 The value-added-service down packet number(64 bit).
                "                       X"
                 The value-added-service down byte number(64 bit).
                "                       G"
                 The download policy server name.
                "                       ?"
                 The account server type.
                "                           "" The Accounting service Enable. "                       #" The Accounting service Disable. "                               T"The compliance statement for systems supporting 
                the this module."                   "Flow query time length group."                 "The service policy group."                 %"The VSM value service policy group."                            