N-- =================================================================
-- Copyright (C) 2019 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: the huawei memory mib from huawei-device-mib
-- Reference:
-- Version:     V1.02
-- History:
--    
-- =================================================================
     �"
            This mib module defines the memory information. NMS can query memory
            utilization statistics from device by the mib.
            " �"Huawei Industrial Base
            Bantian, Longgang
            Shenzhen 518129
            People's Republic of China
            Website: http://www.huawei.com
            Email: support@huawei.com
            " "201909180000Z" "201708170000Z" "201407260000Z" �"V1.02,
	                1.Modify the hwMemoryDevSize type, from Unsigned32 to Counter64.
	                2.Modify the hwMemoryDevFree type, from Unsigned32 to Counter64.
	                 " "V1.01, change DESCRIPTION." "V1.00, initial version."               �"
            This table provides the information of all memory utilization statistics
            of device. It contains the total size, the free size, the used size, and
            so on.
            "                      9"
            The Entries of hwMemoryDevTable.
                            
            The table is indexed by hwFrameIndex, hwSlotIndex and hwMemoryDevModuleIndex,
            
            hwFrameIndex  - the index of frame of the device. for example, hwFrameIndex
            equals 0 in NE16.
            hwSlotIndex   - the slot number of the device, the MAX value varies with
            different devices.
            hwMemoryDevModuleIndex - for the purpose of extension.In single CPU devices
            (NE16,eg.), its value equals 0.
            "                      "
            This object indicates the 32-byte memory size of managed objects, in bytes. 
            The value is the sum of hwMemoryDevFree and hwMemoryDevRawSliceUsed. 
            Each board has a memory, and the memory size varies with the product.
            "       R--SYNTAX Integer32 (1..65535)
-- VRPV8R1 Capability 20100828 modify value scope
               �"
            The object indicates the total size of the memory in bytes,
            which is on the managed object.
            "                       X"
            The object indicates the free size of the memory in bytes.
            "                       b"
            The object indicates the used size of the raw slice memory in bytes.
            "                       �"
            The object indicates the largest number of contiguous bytes
            from the memory that are currently unused on the managed object.
            "                       �"
            This object indicates the number of memory allocation failures. 
            The default value is 0.
            "                       �"
            This object indicates the number of memory allocation failures due to memory exhaustion. 
            The default value is 0.
            "                       �"
            Indicates the total size of the memory module incase of excessing 4G
            which is on the managed object, in bytes.
            "                       �"
            This object indicates the 64-byte idle memory size, in bytes. 
            The value is always less than hwMemoryDevSize64.
            "                       �"
            This table provides the inquiry of buffer utilization statistics
            of device. The type of the buffer is classified by size: 32 bytes,
            64 bytes,...,etc.
            "                      �"
            The Entries of hwBufferTable.

            The hwBufferTable is indexed by hwFrameIndex, hwSlotIndex,
            hwBufferModuleIndex and hwBufferSize.
            
            hwFrameIndex  - the index of frame of the device. for example, hwFrameIndex
            equals 0 in NE16.
            hwSlotIndex   - the slot number of the device, the MAX value varies with
            different types of devices.
            hwBufferModuleIndex - for the purpose of extension.In single CPU devices
            (NE16,eg.),hwBufferModuleIndex equals 0.
            hwBufferSize  - the size in bytes of the buffer,such as 32 bytes,64 bytes,
            ...,etc.
            "                       �"
            The object is used only for the purpose of extension,In single CPU
            devices (NE16,eg.),hwBufferModuleIndex equals 0. 
            "                       �"
            The object indicates the size of the buffers in bytes, such as 32 bytes,
            64 bytes,...,etc.
            "                       �"
            This object indicates the total number of buffers. 
            The value varies with the line card and buffer size. 
            It is a part of the memory. The value ranges from 32 to 4096.
            "                      8"
            This object indicates the number of buffers currently occupied. 
            The value varies with the line card and buffer size. 
            It is a part of the memory. The value ranges from 32 to 4096, in kbits. 
            The value is always less than hwBufferCurrentTotal.
            "                                          