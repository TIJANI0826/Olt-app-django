�-- ============================================================================
-- Copyright (C) 2020 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- Description:  The mib is used for configuring time range. 
--               When configuring the ACL rule, if you need to specify the time 
--               for the ACL rule to take effect, you need to run this command 
--               to configure a time range before specifying the time. After that,
--               you can specify the time for an ACL to take effect by referring
--               the time range name when configuring the ACL rule.
-- Reference:  
-- Version: V1.04
-- ============================================================================
                                                    �"The mib is used for configuring time range.
            When configuring the ACL rule, if you need to specify the time 
            for the ACL rule to take effect, you need to run this command 
            to configure a time range before specifying the time. After that,
            you can specify the time for an ACL to take effect by referring
            the time range name when configuring the ACL rule." �"Huawei Industrial Base
             Bantian, Longgang
             Shenzhen 518129
             People's Republic of China
             Website: http://www.huawei.com
             Email: support@huawei.com
            " "202008180000Z" "202004260000Z" "201711220000Z" "201103220000Z" "200304110000Z" ,"V1.04, modified the format of description." 2"V1.03, modified the rangeof hwTrngPeriodicTable." �"V1.02, modified the description of hwTrngCreateTimerangeTable,
                                                hwTrngAbsoluteTable and hwTrngPeriodicTable."t"V1.01, modified the description of hwTimerangePeriodicEndTimes.
		              modified the description of hwTrngCreateTimerangeTable, 
                      hwTrngAbsoluteTable and hwTrngPeriodicTable .
					  modified the errors of the MIB file.
					  modified the description of leaves.
					  modified the datatype definition and the format of the MIB script." -"V1.00, initial revision of this MIB module."                  �"Describes a time range. 
             When configuring an ACL rule, set its effective time. To do so, configure a time range first. 
             After the configuration, the effective time is specified by referencing the time range 
             when an ACL rule is being configured.
             An ACL time range can be a relative time range and an absolute time range. 
            "                      �"Describes a time range. 
             When configuring an ACL rule, set its effective time. To do so, configure a time range first. 
             After the configuration, the effective time is specified by referencing the time range 
             when an ACL rule is being configured.
             An ACL time range can be a relative time range and an absolute time range. 
             The index of this entry is hwTrngIndex.
            "                       L"Uniquely identifies a time range.
             Range: 1-256
            "                      "Indicates the character string of a time range name. 
             It is used to identify different time ranges. 
             The character string consists of 1-32 characters of letters and digits. 
             No other characters can be included.
            "                      �"Describes whether the current time range is valid, that is, 
             whether the current time is within the specified time range. 
             Options:
             1. true(1)  -if the current time is within the specified time range, 
                          the value is true(1), which indicates validity.
             2. false(2) -if the current time is not within the specified time range, 
                          the value is false(2), which indicates invalidity. 
            "                      ["Indicates the row status. 
             Options:
             1. active(1)      -when this leaf is queried, the value is fixed to active(1).
             2. createAndGo(4) -add a time range
             3. destroy(6)     -delete a time range
             It is used for adding or deleting a time range. 
             To add a time range, you must bind hwTrngName 
             and set hwTrngCreateRowStatus to createAndGo(4). 
             To delete a time range, set hwTrngCreateRowStatus to destroy(6). 
             When this leaf is queried, the value is fixed to active(1).
            "                      !"Describes an absolute time range. 
             An absolute time range refers to the time range without a period. 
             The time range is active from the specified start time and date to the end time and date. 
             Otherwise, the time range is inactive.
            "                      �"Describes an absolute time range. 
             An absolute time range refers to the time range without a period. 
             The time range is active from the specified start time and date to the end time and date. 
             Otherwise, the time range is inactive.
             The indexes of this entry are hwTrngAbsoluteNameIndex and hwTrngAbsoluteSubIndex. 
            "                       �"Uniquely identifies a time range.
             Range: 1-256
             The specified time range must be created in hwTrngCreateTimerangeTable. 
            "                       V"Uniquely identifies an absolute time range.
             Range: 1-12 
            "                      �"Indicates the start time of an absolute time range.
             It is an 8-byte hexadecimal numeral, where, the first two bytes indicate the year, the third byte indicates the month, the fourth byte indicates the day, the fifth byte indicates the hour, the six byte indicates the minute, and the seventh and eighth digits are reserved, which are filled in 0.
             For example, if the start time is 2010-1-10,8:10, the value is presented as 0x07 0xDA 0x01 0x0A 0x08 0x0A 0x00 0x00. 
             The time range that the device can identify is 1970/01/01 00:00-2099/12/31 23:59. 
             Therefore, the time value must be within the time range. 
            "                      <"Indicates the end time of an absolute time range. 
             The format is the same as that of hwTrngAbsoluteStartTime. 
             The value of the end time must be larger than that of the start time. 
             If the value is not specified, the system uses 2099/12/31 23:59 by default. 
            "                      �"Indicates the row status. 
             Options:     
             1. active(1)      -when this leaf is queried, the value is fixed to active(1).
             2. createAndGo(4) -add an absolute time range
             3. destroy(6)     -delete an absolute time range
             It is used for adding or deleting an absolute time range. 
             To add an absolute time range, enter hwTrngAbsoluteStartTime and 
             set hwTrngAbsolueRowStatus to createAndGo(4). 
             hwTrngAbsoluteEndTime is optional. 
             To delete an absolute time range, set hwTrngAbsolueRowStatus to destroy(6). 
             When this leaf is queried, the value is fixed to active(1). 
            "                      �"Describes a relative time range. 
             A relative time range refers to the time range with a period. 
             When a time range is already created, only the specific time is specified 
             but the date is set to a day from Monday to Sunday. 
             The time range is active at the specified time and date. 
             Otherwise, the time range is inactive. 
            "                      �"Describes a relative time range.
             A relative time range refers to the time range with a period. 
             When a time range is already created, only the specific time is specified 
             but the date is set to a day from Monday to Sunday. 
             The time range is active at the specified time and date. 
             Otherwise, the time range is inactive. 
             The indexes of this entry are hwTrngPeriodicNameIndex and hwTrngPeriodicSubIndex. 
            "                       �"Uniquely identifies a relative time range.
             Range: 1-256  
             The specified time range must be created in hwTrngCreateTimerangeTable. 
            "                       T"Uniquely identifies a relative time range.
             Range: 1-32
            "                      �"Indicates the day of week within the periodic time range. 
             The values are as follows: 
             Sunday: 0x01
             Monday: 0x02
             Tuesday: 0x04
             Wednesday: 0x08
             Thursday: 0x10
             Friday: 0x20
             Saturday: 0x40
             If the value is set to Sunday and Monday, 
             perform the | operation to the values of Sunday and Monday, 
             and the value is 0x03, and so on.
            "                      �"Indicates the start time of a periodic time range.
             The format is the same as that of hwTrngAbsoluteStartTime in hwTrngAbsoluteTable. 
             The periodic time needs only the hour and minute values, 
             and thus only the fifth and sixth bytes are used, where, 
             the fifth byte indicates the hour value of the 
             start time and the sixth byte indicates the minute value. 
             Other bytes are reserved and are filled in 0.
             For example, if the start time is 08:30, 
             the value is presented as 0x00 0x00 0x00 0x00 0x08 0x1E 0x00 0x00. 
             The time must be from 00:00 to 23:59. 
            "                      u"Indicates the end time of a periodic time range. 
             The format is the same as that of hwTrngPeriodicStartTime. 
             The value of the end time must be larger than that of the start time. 
             The value must be from 00:00 to 23:59. 
             The 7th byte is used only in the case of 23: 59: 60 to indicate the time 24: 00.
            "                      �"Indicates the row status.
             Options:    
             1. active(1)      -when this leaf is queried, the value is fixed to active(1).
             2. createAndGo(4) -add a relative time range
             3. destroy(6)     -delete a relative time range
             It is used for adding or deleting a relative time range. 
             To add a relative time range, enter hwTrngPeriodicStartTime and hwTrngPeriodicEndTime, 
             and set hwTrngPeriodicRowStatus to createAndGo(4). 
             To delete a relative time range, set hwTrngAbsolueRowStatus to destroy(6). 
             When this leaf is queried, the value is fixed to active(1).
            "                               a"The compliance statement for entities which 
             implement the Huawei Time-range MIB."   J"The status of createAndWait, notInservice and notReady are not required." J"The status of createAndWait, notInservice and notReady are not required." J"The status of createAndWait, notInservice and notReady are not required."                 E"A collection of objects providing mandatory time-range information."                            