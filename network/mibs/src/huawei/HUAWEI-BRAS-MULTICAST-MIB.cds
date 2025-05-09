o--  ==================================================================
-- Copyright (C) 2007 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI BRAS Management MIB
-- Reference:
-- Version:     V1.0
-- History:
--              V1.0 YangChangMao, 2007-06-14, publish
-- ==================================================================
                     Q"The HUAWEI-BRAS-MULTICAST-MIB contains objects to
                manage BRAS."'"R&D NanJing, Huawei Technologies co.,Ltd.
                Huihong Bld.,NO.91 Baixia Rd., 
                Bai-Xia District Nanjing P.R. China
                Zip:210001 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com"       -- May 12, 2007 at 12:00 GMT
           1"A table of setting multicast program bandwidth."                       ,"Setting multicast program bandwidth entry."                        "Start of multicast list index."                       1"Type of multicast program bandwidth configured."                       C"Bandwidth of multicast program.
             units:Kbps(kbit/s)."                       N"Detect interval of dynamic bandwidth statistics.
             units:second."                       "Ratio of bandwidth variation."                       Y"used to manage the creation and deletion of multicast virtual adjust band setting rows."                       4"A table of displaying multicast program bandwidth."                       "Bandwidth display entry."                       "Index of multicast list."                       &"Source address of multicast program."                       %"Group address of multicast program."                       B"Bandwidth of multicast program.
             units:Kbps(kbit/s)"                               `"The compliance statement for systems supporting 
                the HUAWEI-DATACOMM-OID-MIB."                   "The hwMulticast group."                            