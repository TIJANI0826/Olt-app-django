d-- =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:The HUAWEI-SYSLOG-MIB DEFINITIONS provides information about system log
-- Reference:
-- Version: V1.0
-- History:
--     
-- =================================================================
                                 )"The MIB contains objects of system log." �"Floor 5, Block 4, R&D Building,
                Huawei Longgang Production Base,
                Shenzhen,  P.R.C.
                http://www.huawei.com
                Zip: 518129
                "              !"
                The board supports the configuration of switch group of system log server.
                The configuration mode can be bit-domain setting, board is numbered 1 to 18, correspondingly to the bit of BIT1 to BIT18, 1 means enable, 0 means disable.     
                "                       B"
                The system log server table.
                "                       O"
                The entry of the system log server table.
                "                       I"
                The IP address of system log server
                "                       �"
                The name of policy group selected by the system log server, one server can only use one policy server group.
                "                       M"
                The row status, used to add and delete.
                "                       !"The policy group control table."                       *"The entry of policy group control table."                       ?"
                The name of policy group.
                "                       K"
                The row status of policy group, used to add and delete."                       L"
                The system server policy config table.
                "                       C"
                The entry of system server policy config table."                       L"
                The index of system log policy config.
                "                       @"
                The description of policy.
                "                       c"
                Filtrating the system log information of different user type.
                "                       K"
                The board which policy taking effect.
                "                      	"
                The selection of ISP, the null character means tracing operation log of all ISP.
                More than one ISP can be separated by character ';', for example, if the policy can support 2 ISPs, it can express as ISP1; ISP2.
                "                       N"
                The selection of system log filter type.
                "                       �"
                The server group which the policy belongs to. 
                When one policy belongs to more than one policy server group, name of policy server group can be separated by character ';'.
                "                       M"
                The row status, used to add and delete.
                "                               T"The compliance statement for systems supporting 
                the this module."                   +"The system log administrate status group."                 "The system log server group."                 "The system log policy group."                 %"The system log policy config group."                