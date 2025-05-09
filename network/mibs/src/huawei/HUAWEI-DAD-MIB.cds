�--  =================================================================
-- Copyright (C) 2016 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: HUAWEI DAD MIB, this mib will maintain information of DAD 
--              protocol for datacomm product.  
-- Reference:
-- Version:     V1.02
-- History:
--  
--  V1.00 2011-09-14 initial version
-- =================================================================
   k"Each port is uniquely identified by a port number. The port number ranges from 0
                to 575."                 ^"This MIB contains private managed object definitions for dual-active
            detection." �"Huawei Industrial Base
			 Bantian, Longgang
			 Shenzhen 518129
			 People's Republic of China
			 Website: http://www.huawei.com
			 Email: support@huawei.com
            " "201607111230Z" "201601201658Z" $"Updated to include support for DAD" $"Updated to include support for DAD"                   7"Notify the NMS that dual-active scenario is detected."                 5"Notify the NMS that dual-active scenario is merged."                 Q"Notify the NMS that the protocol status of the dual-active port change to down."                 w"Notify the NMS that the protocol status of the dual-active port change to up, or the dual-active port does not exist."                         Y"The compliance statement for SNMP entities which implement
        the HUAWEI-DAD-MIB."                  "The collection of notifications used to indicate that the HUAWEI-DAD-MIB
        data is consistent and indicate the general status information.
        This group is mandatory for agents which implement the DAD
        and have the capability of receiving DAD frames."                     4"Enter the description of the created OBJECT-GROUP."                         )"The interface name of dual-active port."                                  