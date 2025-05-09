q-- =================================================================
-- Copyright (C) 2021 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: flash mangement mib
-- Reference:   huawei enterprise mib
-- Version:     V2.07
-- History:
--             initial version 2002-12-20
-- =================================================================
  �"The status of the specified operation can be one of the follows.
                
                opInProgress(1) : the operation is in process.
                
                opSuccess(2) :  the operation has been completed successfully.
                
                opInvalid(3) : the command is invalid or command-protocol-device 
                       combination is unsupported by the system.
                
                opInvalidProtocol(4) :invalid protocol is specified
                
                opInvalidSourceName(5) :invalid source file name is specified.    
                
                opInvalidDestName(6) :invalid target name is specified.    
                
                opInvalidServerAddress(7) :invalid server address is specified
                
                opDeviceBusy(8) :the device is in use and locked by another process
                
                opDeviceOpenError(9) :invalid device name is specified.
                
                opDeviceError(10) :    device read, write or erase error
                
                opDeviceNotProgrammable(11) :device is read-only but a write or erase operation was specified
                
                opDeviceFull(12) :    device is filled to capacity
                
                opFileOpenError(13) :invalid file name; file not found in partition
                
                opFileTransferError(14) :file transfer was unsuccessful
                
                opFileChecksumError(15) :file checksum in Flash is invalid
                
                opNoMemory(16) :system is running in low on memory
                
                opAuthFail(17) :authentication failure
            
                opUnknownFailure(18) :failure which is unknown
            
                opAbort(19) : transfer operation has been abort

                opInvalidSourceAddress(20) : transfer operation has been abort
                                
               opInvalidSourceInterface(21) : transfer operation has been abort
               opCurrentVersionFileConfilt(22) : conflict between target file and system file"              H"Flash partition upgrade method, ie., method by which
                new files can be downloaded into the partition.
                FLH stands for Flash Load Helper, a feature provided
                on run-from-Flash systems for upgrading Flash. This
                feature uses the bootstrap code in ROMs to help in 
                automatic download.
                This object should be retrieved if the partition 
                status is runFromFlash(2).
                If the partition status    is readOnly(1), the upgrade 
                method would depend on the reason for the readOnly 
                status.    For eg., it may simply be a matter of installing 
                the programming jumper, or it may require execution of a 
                later version of software that supports the Flash chips.
                
                unknown(1)      -     the current system image does not know
                        how Flash can be programmed. A possible
                        method would be to reload the ROM image
                        and perform the upgrade manually.
                rxbootFLH(2)    -     the Flash Load Helper is available to
                        download files to Flash. A copy-to-flash
                        command can be used and this system image
                        will automatically reload the Rxboot image
                        in ROM and direct it to carry out the 
                        download request.
                direct(3)       -     will be done directly by this image.
                "              9"If the flash partition is not programmable, the value will be 
                'readOnly(1)'; If the current image is running from this partition,
                the value will be 'runFromFlash(2)';
                If the flash partition is programmable, the value will be 'readWrite(3) '.
                "                                                                                             !"opFileTransferError description""Huawei Industrial Base
                    Bantian, Longgang
                     Shenzhen 518129
                     People's Republic of China
                     Website: http://www.huawei.com
                     Email: support@huawei.com
                   " "202112170001Z" "202101060001Z" "201909260001Z" "201502100001Z" "201501260001Z" "201412150001Z" "201307090001Z" "200207010000Z" H" Delete 'of the mainboard' from the description of hwFlhSyncSourceFile" %"Add trap node hwFlhStorageFullTrap " �"The HUAWEI-FLASH-MIB contains objects to manage the device flash cards
                and flash card operations. There are no constraints on this MIB.
                " �"The HUAWEI-FLASH-MIB contains objects to manage the device flash cards
                and flash card operations. There are no constraints on this MIB.
                " �"The HUAWEI-FLASH-MIB contains objects to manage the device flash cards
                and flash card operations. There are no constraints on this MIB.
                " �"The HUAWEI-FLASH-MIB contains objects to manage the device flash cards
                and flash card operations. There are no constraints on this MIB.
                " �"The HUAWEI-FLASH-MIB contains objects to manage the device flash cards
                and flash card operations. There are no constraints on this MIB.
                " +"The initial revision of this MIB module ."       -- Jan 06, 2021 at 00:00 GMT
               �"Specifies the total number of flash which the
                system supported.
                
                The MIB should not be loaded if there is no flash 
                on the device, therefore the value of the object is at least 1."                       h"This table gives the properties of all the flashes on the device .
                
                "                       0"
                The entries of hwFlashTable."                       �"The index of hwFlashTable. It has the minimum value of 1, and  
                maximum value of the same as the value of hwFlhSupportNum."                       �"Specifies the total size of the Flash device indexed by hwFlhIndex.
                The value will be zero if the flash is removed for a removable 
                device."                       �"The position of the flash device on the system.This object is 
                an index of entPhysicalTable in ENTITY-MIB . If the value of this object
                is 0, the main processor is indicated."                       X"The flash device name used to refer to the
                device within the system. "                       9"The chip numbers in the flash device.
                "                       Q"Description of the purpose of the flash device on the system.
                "                      �"The system time at which device was initialized.
                For fixed devices, this will be the system's boot up time.
                For removable devices, it will be the time at which 
                the device was inserted. It may be a later time if device was inserted later.
                If a device can be partitioned and repartitioned,
                it will be the time of repartitioning."                       �"The object indicates whether the flash indexed can be removed or not.
                The true(1) value indicates the flash device CAN be removed .The false(2) value
                indicates the flash device CANNOT be removed ."                      M"The object indicates whether the flash indexed can be partitioned or not.
                The true(1) value indicates the flash device CAN be partitioned. The false(2) value 
                indicates the flash device CANNOT be partitioned.The actual partition state depends 
                on the value of hwFlhDevicePartions."                       �"Minimum partition size the device supported.
                If hwFlhDevicePartitionBool is false, the value
                of this object is the same as hwFlhDeviceSize.
                "                       �"The maximum count of partitions which the system supports
                for this Flash device.If hwFlhPartitionBool is false,
                the object value is 1."                       �"The actual number of partitions supported by the system for 
                this Flash device.If hwFlhPartitionBool is false,
                the object value is 1."                           �"Table of Flash device chip properties for each
                initialized Flash device.
                This table is meant primarily for aiding error
                diagnosis.
                "                       "The entry of hwFlhChipTable"                       "Index of hwFlhChipTable."                      "The manufacturer and device code for a chip.
                The device code is in the lower byte.And 
                The manufacturer code is in the Upper byte.
                Unknown chip code is presented as 00:00.            
                
                "                       "
                The description of the flash chip.
                e.g. 'Intel 27F008SA'                
                "                       �"The maximum number of write retries done at any
                single location before declaring a write failure.
                "                      �"This object will provide a cumulative count
                (since last system boot up or initialization) of 
                the number of write retries that were done in the chip.
                If no writes have been done to Flash, the count
                will be zero. Typically, a maximum of 25 retries are 
                done on a single location before flagging a write
                error.
                A management station is expected to get this object
                for each chip in a partition after a write failure
                in that partition. To keep a track of retries for
                a given write operation, the management station would 
                have to retrieve the values for the concerned chips 
                before and after any write operation.
                It is a cumulative count of write retries that were done in the chip.
                "                       �"The maximum number of erase retries done within
                an erase sector before declaring an erase failure.
                "                      �"This object will provide a cumulative count
                (since last system boot up or initialization) of 
                the number of erase retries that were done in the chip.
                Typically, a maximum of 2000 retries are done in a 
                single erase zone (which may be a full chip or a 
                portion, depending on the chip technology) before 
                flagging an erase error.
                A management station is expected to get this object
                for each chip in a partition after an erase failure
                in that partition. To keep a track of retries for
                a given erase operation, the management station would 
                have to retrieve the values for the concerned chips 
                before and after any erase operation.
                Note that erase may be done through an independent
                command, or through a copy-to-flash command.
                "                          g"Table of flash device partition properties for each 
                initialized flash partition. Whenever there is no 
                explicit partitioning done, a single partition spanning
                the entire device will be assumed to exist. There will 
                therefore always be at least one partition on a device.
                "                       �"An entry in the table of flash partition properties 
                for each initialized flash partition. Each entry
                will be indexed by a device number and a partition
                number within the device.
                "                       �"The one of indexes which specifies a partition in system.
                It is the sequence number of partitions.
                "                       �"
                The first chip's sequence number in the 
                partition, by which a chip can be indexed in 
                chip table. 
                "                       �"
                The last chip's sequence number in the 
                partition, by which a chip can be indexed in 
                chip table. 
                "                       �"
                The total space of the flash partition.
                The following should be satisfied:
                hwFlhPartSpace = n*hwFlhMinPartitionSize
                "                       F"The Flash partition's free space.                 
                "                       F"The number of all the file in the flash 
                partition."                       �"
                The Checksum algorithm identifier 
                checksum method which the
                file system uses.
                "                      l"The flash partition status.
                If device is not programmable the value of it will be 'readOnly(1)';
                If the current image is running from this partition, the value of it 
                will be 'runFromFlash(2)';
                If device is programmable the value of it will be 'readWrite(3) '.                
                "                      ="The upgrade method of Flash partition, ie., method by which
                new files can be downloaded into the partition.
                FLH stands for Flash Load Helper, a feature provided
                on run-from-Flash systems for upgrading Flash. This
                feature uses the bootstrap code in ROMs to help in 
                automatic download.
                This object should be retrieved if the partition 
                status is runFromFlash(2).
                If the partition status    is readOnly(1), the upgrade 
                method would depend on the reason for the readOnly 
                status.    For eg., it may simply be a matter of installing 
                the programming jumper, or it may require execution of a 
                later version of software that supports the Flash chips.
                
                unknown(1)      -     the current system image does not know
                        how Flash can be programmed. A possible
                        method would be to reload the ROM image
                        and perform the upgrade manually.
                rxbootFLH(2)    -     the Flash Load Helper is available to
                        download files to Flash. A copy-to-flash
                        command can be used and this system image
                        will automatically reload the Rxboot image
                        in ROM and direct it to carry out the 
                        download request.
                direct(3)       -     will be done directly by this image."                       a"
                The  name of flash partition.
                It was referred by the system."                       t"Indicates whether the partition of flash needed
                to be erased or not before write operation on it."                       T"
                The maximum length of file name in the system.
                "                           H"Table of information for files in a Flash partition.
                "                      u"An entry in the table of Flash file properties 
                for each initialized Flash partition. Each entry
                represents a file and gives details about the file.
                An entry is indexed using the device number,
                partition number within the device, and file 
                number within the partition.
                "                       "The index of the table ."                       U"
                A valid file name supported by the file system.
                "                       �"The file size in bytes, which doesn't include the file header of filesystem.
                The minimum value of it will be 1.
                "                       �"The status maybe follows:
                deleted(1):The file is in recycle.
                checksumWrong(2):The checksum of file is invalid;
                valid(3):A valid file.
                "                       V"
                The file checksum located in the header of file.
                "                       R"
            The file checksum located in the header of file.
                "                           �"A table of Flash copy operation entries. Each
                entry represents a Flash copy operation (to or 
                from Flash) that has been initiated.
                "                      �"A Flash copy operation entry. Each entry consists 
                of a command, a source, and optional parameters such
                as protocol to be used, a destination, a server address,
                etc. 
                
                A management station wishing to create an entry should
                first generate a pseudo-random serial number to be used
                as the index to this sparse table.  The station should
                then create the associated instance of the row status
                object. It must also, either in the same or in successive 
                PDUs, create the associated instance of the command and
                parameter objects. It should also modify the default values 
                for any of the parameter objects if the defaults are not 
                appropriate.
                
                Once the appropriate instances of all the command
                objects have been created, either by an explicit SNMP
                set request or by default, the row status should be set
                to active to initiate the operation. Note that this entire
                procedure may be initiated via a single set request which
                specifies a row status    of createAndGo as well as specifies
                valid values for the non-defaulted parameter objects.
                
                Once an operation has been activated, it cannot be
                stopped. 
                
                Once the operation completes, the management station should
                retrieve the value of the status object (and time if
                desired), and delete the entry.  In order to prevent old
                entries from clogging the table, entries will be aged out,
                but an entry will never be deleted within 5 minutes of
                completing.
                "                       s"
                Specifies the index of an entry. It is a 
                random value when creating an entry."                      <"Specifies the operation to be executed. 
                
                net2FlashWithErase    Copy a file to flash; erase
                            flash before copy.
                            Use the FTP protocol or SFTP protocol.
                net2FlashWithoutErase     Same with net2FlashWithErase.    

                flash2Net        Copy a file from flash using
                            the FTP protocol or SFTP protocol.
                            
                delete      delete file or directory by source file name.
                "                       �"Specifies the protocol used to transfer file.
                The default value of it is ftp. When hwFlhOperProtocol is specified as SFTP, only 
                password authentication-type is valid.

              
                "                       d"
                The address of remote host acting as server for any operation.
                "                       �"
                When use ftp or sftp to transfer files, the user name must be 
                specified by this node.
                "                       �"Remote user password for copy via ftp protocol. Optional.
                This object will be ignored for protocols other than
                ftp and sftp. "                      "Specifies the Source file name to be transferred . 
                It may be located on flash or remote server.
                It may include the file path if it is applicable.
                It must be specified.
                
                "                      A"Specifies the destination file name to be transferred . 
                It may be located on flash or remote server.
                It may include the file path if it is applicable.
                If it is not specified , the destination file name
                is the same as source file name for application."                      �"The status of  operation. 
                The status of the specified  operation can be one of the follows.
                
                opInProgress(1) : the operation is in process.
                
                opSuccess(2) :  the operation has been completed successfully.
                
                opInvalid(3) : the command is invalid or command-protocol-device 
                       combination is unsupported by the system.
                
                opInvalidProtocol(4) :invalid protocol is specified
                
                opInvalidSourceName(5) :invalid source file name is specified.    
                
                opInvalidDestName(6) :invalid target name is specified.    
                
                opInvalidServerAddress(7) :invalid server address is specified
                
                opDeviceBusy(8) :the device is in use and locked by another process
                
                opDeviceOpenError(9) :invalid device name is specified.
                
                opDeviceError(10) :    device read, write or erase error
                
                opDeviceNotProgrammable(11) :device is read-only but a write or erase operation was specified
                
                opDeviceFull(12) :    device is filled to capacity
                
                opFileOpenError(13) :invalid file name; file not found in partition
                
                opFileTransferError(14) :file transfer was unsuccessful
                
                opFileChecksumError(15) :file checksum in Flash si invalid
                
                opNoMemory(16) :system is running in low on memory
                
                opAuthFail(17) :authentication failure
            
         opUnknownFailure(18) :failure which is unknown
            
        opAbort(19) : transfer operation has been aborted

        opInvalidSourceAddress(20) : invalid source IP is specified.
                
        opInvalidSourceInterface(21) : invalid source interface is specified.
        
        opCurrentVersionFileConfilt(22) : conflict between target file and system file"                       �"
                If the value of it is specified 'true',a notification 
                will be generated at the end of the operation.
                Otherwise no notification will be generated.
                "                       `"The progress described as the time taken for
                the operation.
                "                      �"The status of this table entry. 
                When the status is active : 
                (1) In the situation that the specified transfer operation by 
                ftp/tftp is in progress, the transfer operation will be aborted 
                if the status is set to notInService. 
                (2) In any other situations, the specified operation will not be 
                aborted even if the status is set to notInService.
                "                      �"This object specifies the SFTP/FTP server port that is used for file transfer 
                only if the value of hwFlhOperProtocol is sftp/ftp.  
                The default SFTP server port is 22 if no port is specified.  
                The default FTP server port is 21 if no port is specified. 
                If the value of hwFlhOperProtocol is not sftp/ftp, this object is ignored by the 
                implementation. "                      X"The source IP address. When hwFlhOperType is specified as  net2FlashWithErase,
            net2FlashWithoutErase or flash2Net, the source IP address 
            of the client may be specified or not. Default is 0.0.0.0 .
            If the source type is set to both of IP address and interface, 
            the former has the priority."                      T"The name of the source interface.When hwFlhOperType is specified as  
            net2FlashWithErase,net2FlashWithoutErase or flash2Net,the source interface 
            of the FTP/TFTP client may be specified or not. If the source 
            type is set to both of IP address and interface,the former has 
            the priority."                      �"This object specifies the reserved space (in KBs) guaranteed by a host. 
                The value 0 indicates that no space need be reserved. The default value is 0. This 
                object is optional when hwFlhOperType is specified as net2FlashWithErase or 
                net2FlashWithoutErase in the Set operation. This object is unavailable when 
                hwFlhOperType is specified as flash2Net or delete in the Set operation. "                       +"The vpn instance name of the file server."                       )"The total length of the file, in bytes."                       $"The transfer progress of the file."                       ""The failure reason of operation."                       E"The address of remote host acting as Ipv6 server for any operation."                       ?"A table of Flash synchronize operate include copy/delete etc."                       "A Flash synchronize operation entry. Each entry consists 
                of a synchronize command, such as copy,delete etc."                       `"Specifies the index of an entry.
                It is a random value when creating an entry."                       �"Synchronize operation type to be executed. 
                net2FlashCopy    Net operate copy a file from one board to another;"                       �"Synchronize operation range to be executed. 
                designate   Net designate a object to be handled as synchronize destination;
                all        Net make all chassis and all board as handled object;"                       Q"The source board path to be transferred.
                It must be specified."                       �"The source file name to be transferred . 
                It is located on the flash of a chassis.
                It is combine with the hwFlhSyncSourcePath to specify the absolute file name.
                It must be specified."                       V"The destination board path to be transferred.
                It must be specified."                       �"The destination file name to be transferred . 
                It is combine with the hwFlhSyncDestinationPath to specify the absolute file name.
                It must be specified."                       %"The row status of this table entry."                           M"A hwFlhOperNotification is sent only when hwFlhOperEndNotification is true."                 Q"A hwFlhSyncSuccessNotification is sent when the file copy operation successful."                 J"A hwFlhSyncFailNotification is sent when the file copy operation failed."                     ^"This table gives the properties of all the storage devices on the device .
                "                       2"
                The entries of hwStorageTable."                       >"The index of hwStorageTable. It has the minimum value of 1. "                       4"The type of all the storage devices on the device "                       M"Specifies the total size of the storage devices  indexed by hwStorageTable."                       B"The free space of the storage devices.        
                "                       ["The storage devices name used to refer to the
                device within the system. "                       T"Description of the purpose of the storage devices on the system.
                "                               �" 
                The compliance statement for 
                entities that support the huawei Flash MIB.
                "                   O"A collection of objects on  Flash device level information.
                "                 F"A collection of objects on chip level information.
                "                 V"A collection of objects providing on partition level information. 
                "                 F"A collection of objects on file level information.
                "                 @"A collection of objects of flash operations.
                "                 /"The collection of notifications in the module"                     "Description."                         "The index of physical."                       "The Usage Ratio of FLASH."                       "The Threshold of FLASH Usage."                       �"The flash memory usage has exceeded the upper threshold 85%. The system will clear the recycle bin and delete unused software packages, patch files, and log files."                