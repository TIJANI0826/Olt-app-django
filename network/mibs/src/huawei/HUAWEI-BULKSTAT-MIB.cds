"--==================================================================
-- Copyright (C) 2013 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI SSH MIB
-- Reference:
-- Version: V1.0
-- History:
-- <author>,  <date>,  <contents>
-- ZhengYuting   2006-11-22
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types are imported
-- 
-- ==================================================================
                     f"The MIB module for creating and deleting bulk files of
                SNMP data for file transfer.""Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com
                 " "201307011339Z" "200611221414Z" +"The initial revision of this MIB module ." +"The initial revision of this MIB module ."       -- July 1, 2013 at 13:39 GMT
           B"The value of this object identifies whether BulkStat is enabled."                       P"The value of this object identifies the collection capability in five minutes."                       a"The value of this object identifies the maximum number of statistics files that can be created."                       c"The value of this object identifies the number of statistics files that are configured currently."                       _"The value of this object identifies the number of statistics objects configured in all files."                       �"The object specifies whether to send trap information to NMS.
                It's allowed to send trap information to NMS only when the value is enable.
                The default value is disable."                       �"The value of this object identifies the index of the next available hwBulkStatDefineObjectTable.
                If there is no available index, the value will be filled with 0."                      M"Bulk file management table, providing create/modify/delete operations.
                To create a bulk file, you need create a related record in this table, and add object nodes in the hwBulkStatDefineObjectTable.
                If you delete a bulk file, the related objects in the hwBulkStatDefineObjectTable will be deleted."                       %"Entry of hwBulkStatDefineFileTable."                       �"The value of this object identifies the indexes of statistics files. 
                The maximum index number is equal to that of the bulk files allowed to create."                       D"The value of this object identifies the name of a statistics file."                       L"The value of this object identifies the storage mode of a statistics file."                       F"The value of this object identifies the format of a statistics file."                       S"The value of this object identifies the interval for collecting statistics files."                       R"The value of this object identifies the interval for uploading statistics files."                      B"This object indicates the primary URL the statistics file is uploaded to.
                It should be in the forms of below:
                ftp://user:password@host/folder/bulkstat1
                sftp://user:password@host/folder/bulkstat1
                tftp://10.1.0.1/tftpboot/user/bulkstat1
                "                      D"This object indicates the secondary URL the statistics file is uploaded to.
                It should be in the forms of below:
                ftp://user:password@host/folder/bulkstat1
                sftp://user:password@host/folder/bulkstat1
                tftp://10.1.0.1/tftpboot/user/bulkstat1
                "                       g"The value of this object identifies the retransmission times of the statistics file during uploading."                       N"The value of this object identifies the time for reserving statistics files."                      "The value of this object identifies status of statistics files.There are three available values: stopped, ready, and running. For running state, it is read-only. For the other two, they are read-create, but can not be set to running, and set duplicatedly."                       �"The value of this object identifies the last file collection timestamp of the latest successful statistics file uploading.
                The value is in seconds."                       x"The value of this object identifies the last file collection timestamp of the latest failed statistics file uploading."                       b"The value of this object identifies the index of the next available hwBulkStatDefineObjectTable."                       D"This object indicates the row status of the statistics file table."                       �"Object management table in the bulk file,
                providing add/modify/delete operations.
                Prerequisite for the operation is that the 
                bulk file is listed in the hwBulkStatDefineFileTable."                       '"Entry of hwBulkStatDefineObjectTable."                       9"The value of this object identifies statistics objects."                       F"The value of this object identifies the types of statistics objects."                       9"This object indicates the OID of the statistics object."                       A"This object indicates the start index of the statistics object."                       T"The value of this object identifies the number of instances of statistics objects."                       @"This object indicates the row status of the statistics object."                           K"An alarm is generated when the collected statistics files are incomplete."                 I"An alarm is generated when the incomplete statistics files are resumed."                 ?"An alarm is generated when the link for file uploading fails."                 Q"An alarm is generated when the link for file uploading recovers from the fault."                 Q"An alarm is generated when the file fails to be uploaded and then is discarded."                         \"The compliance statement for systems supporting 
                the HUAWEI-BULKSTAT-MIB."                   "The bulkstat attribute group."                 "The bulk file's group."                 "The bulkstat object's group."                 "The notification group."                                