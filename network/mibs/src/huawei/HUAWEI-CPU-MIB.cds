K-- =================================================================
-- Copyright (C) 2018 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: the huawei cpu mib from huawei-device-mib
-- Reference:
-- Version:     V1.04
-- History:
--    
-- =================================================================
                         "huawei device  mib." �"Huawei Industrial Base
            Bantian, Longgang
            Shenzhen 518129
            People's Republic of China
            Website: http://www.huawei.com
            Email: support@huawei.com
            " "201801240000Z" "201708170000Z" "201610270000Z" "201610200000Z" "201407260000Z" "Add new node of hwCpuDevEntry" 7"Change hwMultiCpuDevIndex, hwMultiCpuDuty DESCRIPTION" ."Add the range of hwMultiCpuDevTable elements" %"Add new table of hwMultiCpuDevTable" "V1.00, initial version."               �"
            This table provides the information of CPU usage statistics of device 
            in the period of last 5 seconds, 1 minute,or 5 minutes.
            "                      $"
            The Entries of hwCpuDevTable.                
            
            The hwCpuDevTable is indexed by hwFrameIndex, hwSlotIndex and hwCpuDevIndex.
            
            hwFrameIndex  - the index of frame of the device. for example, hwFrameIndex 
            equals 0 in NE16.
            hwSlotIndex   - the slot number of the device, the MAX value varies with 
            different devices.
            hwCpuDevIndex - for the purpose of extension.In single CPU devices (NE16,eg.),
            hwCpuDevIndex equals 0."                       �"
            The object is used only for the purpose of extension. 
            For single-CPU devices, the value of this object equals 0.
            "                       f"
            The value of this object identifies the average CPU occupancy of a board or an entity."                       �"
            The value of this object identifies the average CPU occupancy of a board or an entity 
            in the last one minute before you access the object. "                       �"
            The value of this object identifies the average CPU occupancy of a board or an entity  
            in the last five minutes before you access the object. "                       A"
                Duration of CPU running(s).
                "                       ="
                Number of CPU overload.
                "                       B"
                Duration of CPU overload(s).
                "                       ?"
                Number of CPU congestion.
                "                       D"
                Duration of CPU congestion(s).
                "                       �"
                This table provides the information of multiple CPUs usage statistics of device 
                in the period of last 5 seconds, 1 minute,or 5 minutes.
                "                      �"The Entries of hwMultiCpuDevTable.                
				
				The hwMultiCpuDevTable is indexed by hwFrameIndex, hwSlotIndex and hwMultiCpuDevIndex.
				
				hwFrameIndex  - the index of frame of the device. for example, hwFrameIndex 
				equals 0 in NE16.
				hwSlotIndex   - the slot number of the device, the MAX value varies with 
				different devices.
				hwMultiCpuDevIndex - for the purpose of extension.
				"                       7"
				This object indicates the CPU core index.
				"                      A"
                                                                            The value of this object identifies the current CPU occupancy of a board or an entity.
			                  This object indicates the average CPU usage within 5s.
                                                                            "                       �"
				The value of this object identifies the average CPU occupancy of a board or an entity  
				in the last one minutes before you access the object.
				"                       �"
				The value of this object identifies the average CPU occupancy of a board or an entity  
				in the last five minutes before you access the object.
				"                      