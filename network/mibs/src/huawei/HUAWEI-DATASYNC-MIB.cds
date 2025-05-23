%--==================================================================
-- Copyright (C) 2015 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI DATASYNC MIB
-- Reference:
-- Version: V2.03
-- History:
-- <author>,  <date>,  <contents>
-- fengchong   2009-03-17
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types are imported
--
-- ==================================================================
  �"A date-time specification.

            field  octets  contents                  range
            -----  ------  --------                  -----
              1      1-2   year*                     0..65536
              2       3    month                     1..12
              3       4    day                       1..31
              4       5    hour                      0..23
              5       6    minutes                   0..59
              6       7    seconds                   0..60
                           (use 60 for leap-second)
              7       8    deci-seconds              0..9
              8       9    direction from UTC        '+' / '-'
              9      10    hours from UTC*           0..13
             10      11    minutes from UTC          0..59

            * Notes:
            - the value of year is in network-byte order
            - daylight saving time in New Zealand is +13

            For example, Tuesday May 26, 1992 at 1:30:15 PM EDT would be
            displayed as:

                             1992-5-26,13:30:15.0,-4:0
            Note that if only local time is known, then timezone
            information (fields 8-10) is not present."                                                 "Modified hwCfgChgTerminalID.""Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com
                " "201507161349Z" "201507161349Z" "201409041710Z" "200903171027Z" "Add hwCfgChangeDetailNotify." "Add hwCfgLastSaveFailNotify ." ;"The MIB module for Data sync between host and netmanager." +"The initial revision of this MIB module ."                  S"The value of this object identifies the ID of the current configuration change. 
                The value ranges from 0 to 65535. After the ID of the configuration change reaches
                the maximum value, the value of the ID starts from 1 again. 
                After the device is restarted, the value of the ID becomes 0."                       a"The value of this object identifies the cycle count of the index of configuration change table."                       V"The value of this object identifies the maximum number of entries in hwCfgChgTable. "                       9"Specifies the time of system confiuration was baseline."                           �"This table is used to record configuration changes. 
                In this table, you can find the configuration change based on the specific index."                       "Entry of hwCfgChgTable."                       �"The value of this object identifies the configuration change ID. 
                When configuration is changed, the sequence id will plus 1."                       6"This object indicates the configuration change time."                       1"This object indicates the type of the terminal."                       6"The value of this object identifies the terminal ID."                       6"This object indicates the configuration change type."                      ("This object indicates the name of the view in which the configuration change occurs.
                For the command operation, the object is the name of the view in which the command is run.
                For the SNMP operation, the object is the OID of the MIB table or the scalar object."                       �"The value of this object identifies the ID of the configuration change command.
                For the SNMP operation, the value is 0."                      B"This object indicates detailed configuration change information.
                For the command operation, the object is the command line.
                For the SNMP operation, the object is the index of the MIB table.
                When there are multiple indexes, the format of index1.index2.index3 is adopted."                       N"This object indicates the username in which the configuration change occurs."                       �"This table is used to enable the NMS to send the collecting script to the device to trigger the collection, 
                and then monitor the collection status."                       "Entry of hwCollectTable."                       ;"The value of this object identifies the collection index."                       1"The value of this object identifies the NMS ID."                       m"This object indicates the instruction for the collection operation.
                Default value is stop."                       �"This object indicates the name of the script file. T
                he length of the file name ranges from 1 character to 255 characters."                       �"This object indicates the name of the result file. 
                The length of the file name ranges from 1 character to 255 characters."                       ."This object indicates the collection status."                       '"This object indicates the row status."                           r"This trap is generated when a configuration change occurs 
            on the device within a specified period."                 A"The last save operation failed, please check the configuration."                 J"This trap is generated when a configuration change occurs on the device."                         @"A collection of objects on DataSync ScalarObjects Information."                 >"A collection of objects on Configuration Change Information."                     N"A collection of objects on synchronization Configuration Notify Information."                         _"The compliance statement for 
                entities that support the huawei DataSync MIB."             -- this module
            