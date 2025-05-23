q-- =================================================================
-- Copyright (C) 2009 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI SYS CLOCK MIB
-- Reference:   huawei enterprise mib
-- Version:     V1.0
-- History:
--             initial version 2009-07-25
-- =================================================================
    C"HUAWEI-SYS-CLOCK-MIB is used to configure and query time information, 
                 such as the system time, time zone, and daylight saving time.
                 Root object: iso(1).org(3).dod(6).internet(1).private(4).enterprises(1).
                 huawei(2011).huaweiMgmt(5).hwDatacomm(25).hwSysClockMIB(205) ""Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com
                 " "200907250000Z" +"The initial revision of this MIB module ."       -- July 25, 2009 at 00:00 GMT
           q"This object is used to set and query the local time that is in the format of 
         'YYYY-MM-DD,HH:MM:SS'. "                       |"This object is used to configure and query the system UTC time that is in the 
         format of 'YYYY-MM-DD,HH:MM:SS'. "                           �"This object indicates the alarm reported when the system time changes. 
                 In addition, the new system time is recorded."                         �" 
                The compliance statement for 
                entities that support the huawei Clock MIB.
                "                   O"A collection of objects on Clock setting level information.
                "                 /"The collection of notifications in the module"                                