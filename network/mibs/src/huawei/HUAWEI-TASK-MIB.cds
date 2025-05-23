h-- =================================================================
-- Copyright (C) 2017 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: task mib
-- Reference:   huawei enterprise mib
-- Version:     V2.03
-- History:
--                initial version 2003-07-31
-- =================================================================
  �"The status of the specified task. The parameter have seventeen different value.
            Normally a task may be status of the following:
            Normalready(0): task is ready,
            Block(1): task is blocked,
            Slept(2): task is slept,
            Suspend(4): task is suspended blocked,
            BlockAndSuspend(5): task is suspended blocked,
            SleptAndSuspend(6): task is slept and suspended,
            running(8): task is running,
            Queueblock(17): task is blocked on receiving queue messages,
            QueueblockAndSuspend(21): task is blocked on receiving queue messages and suspended,
            Semaphoreblock(33): task is blocked on taking a semaphore,
            SemaphoreblockAandSuspend(37): task is blocked on taking a semaphore and suspended,
            Eventblock(65): task is blocked on receiving events,
            EventblockAndSuspend(69): task is blocked on receiving events and suspended,
            prioblock(128): task is priblock,
            Preemptready(256): task is preempt ready,
            Writequeueblock(513): task is blocked on sending queue messages,
            WritequeueblockAndSuspend(517): task is blocked on sending queue messages and suspended."                                 y"The MIB module describes active system tasks, including the status 
            and the general information of a task." �"Huawei Industrial Base
              Bantian, Longgang
               Shenzhen 518129
               People's Republic of China
               Website: http://www.huawei.com
               Email: support@huawei.com
             " "201708240000Z" "201708170000Z" "201409250000Z" "200307310000Z" B"V2.03, Modify english description of hwTaskTable,hwKeyTaskTable." "V2.02, Modify hwKeyTaskIndex." >"V2.01, modify hwKeyTaskIndex, hwKeyTaskID and hwKeyTaskName." %"Initial version of this MIB module."       -- 08 24, 2017 at 00:00 GMT
          "This table describes information about tasks on a device,  including the task name, CPU usage, and task running time. 
             This table supports the GET and GET-NEXT operations. In addition, SNMPv2 and SNMPv3 support the GET-BULK operation rather than the SET operation."                       �"Generic information about active tasks on this 
            device. Entries in this table will change when tasks are 
            created and destroyed on the device."                       t"The object indicates some physical information, such as slot number of VIU 
            or RSU board plugged in. "                       $"This object contains the task ID. "                       �"The name associated with this task. If the name is
            longer than 255 characters, it will be truncated to the first
            255 characters."                      �"The status of the specified task. The parameter have seventeen different value.
            Normally a task may be status of the following:
            normalready(0): task is ready,  
            block(1): task is blocked,
            slept(2): task is slept,
            suspend(4): task is suspended blocked,
            blockAndSuspend(5): task is suspended blocked,
            sleepAndSuspend(6): task is slept and suspended,
            running(8): task is running,
            queueblock(17): task is blocked on receiving queue messages,
            queueblockAndSuspend(21): task is blocked on receiving queue messages and suspended,
            semaphoreblock(33): task is blocked on taking a semaphore,
            semaphoreblockAandSuspend(37): task is blocked on taking a semaphore and suspended,
            eventblock(65): task is blocked on receiving events,
            eventblockAndSuspend(69): task is blocked on receiving events and suspended,
            prioblock(128): task is priblock,
            preemptready(256): task is preempt ready,
            writequeueblock(513): task is blocked on sending queue messages,
            writequeueblockAndSuspend(517): task is blocked on sending queue messages and suspended."                       �"Cpu usage information of this task(0%-100%).If a task's cpu usage is more than 90, 
            it means that the task is very busy."                       C"Average elapsed CPU time in millseconds when the task was active."                       b"This table describes information about tasks on a device, including the task name and CPU usage."                       �"Generic information about active tasks on this 
                device. Entries in this table will change when tasks are 
                created and destroyed on the device."                      "Specifies the slot ID of the task. Currently, the MIB provides information only about the main control board. The value of TaskIndex is 0 in centralized system mode; the value of TaskIndex is the slot ID of the main control board in distributed system mode. "                       $"This object contains the task ID. "                       �"The name associated with this task. If the name is
                longer than 255 characters, it will be truncated to the first
                255 characters."                       �"Cpu usage information of this task(0%-100%).If a task's cpu usage is more than 90, 
                it means that the task is very busy."                                   v"The compliance statement for entities which implement
            the huawei Task MIB,Write access is not required."                   �"A collection of objects providing common task 
            monitoring information. This group is mandatory for 
            all huawei devices."                 �"A collection of objects providing common task 
                monitoring information. This group is mandatory for 
                all huawei devices."                            