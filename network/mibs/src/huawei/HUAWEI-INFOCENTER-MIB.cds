y-- =================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: info-center mangement mib
-- Reference:   huawei enterprise mib
-- Version:     V2.14
-- History:
--                initial version 2009-09-08
-- =================================================================
   4"Specify loghost facility which generates messages."              Y"Specify level of message of info-center.
            Currently, following levels of message are provided:
            emergencies(0):
            alerts(1):
            critical(2):
            errors(3):
            warnings(4):
            notifications(5):
            informational(6):
            debugging(7):     
            "                                                                �"The HUAWEI-INFO-CENTER-MIB contains objects to manage the system info-center configuration. 
            It defines the model used to represent configuration data that exists elsewhere 
            in the system and in peripheral devices. The MIB is proper for system configuration.
            NMS can query configuration change log message and operate configuration.
            There are no constraints on this MIB." �"Huawei Industrial Base
              Bantian, Longgang
               Shenzhen 518129
               People's Republic of China
               Website: http://www.huawei.com
               Email: support@huawei.com
             " "202206171537Z" "202012300956Z" "201907081017Z" "201712201754Z" "201708171754Z" "201705162104Z" "201705112018Z" "201605281447Z" "201605271447Z" "201508171544Z" "201412161706Z" "201408051150Z" "201307111640Z" "201307051710Z" "201108081200Z" "Modify notes of mib node." "Modify hwICEnable." "Add hwICLogHostDomainError." "Add hwICLogFileNumThrd." "Add hwICLogFileNumThrd." "Add hwICLogFileNumThrd." ""Add hwICLogFileStorageThreshold." "Add oper(3) and  security(4)." 5"Add hwICLogWriteFail and hwICLogWriteFailCleared . " "Add hwICLogBufferLose." "To compile on linux" "Add hwICInsufficientSpace." +"The initial revision of this MIB module ." +"The initial revision of this MIB module ." +"The initial revision of this MIB module ."       --Jun17, 2022 at 15:37 GMT
           �"The object controls the state of INFO CENTER. If the state is false, the device stops generating or recording messages through INFO CENTER. All the logs, diagnose logs, and traps will not be recorded."                           �"The log host uses the bound source interface to send logs. All log hosts use the same source interface. For details about the value of this parameter, see ifEntry. If no source interface is configured, the value is NULL."                       �"This table lists information center functions, including configuring and deleting syslog hosts and modifying common parameters of syslog hosts."                       :"Information about a configuration loghost in the system."                       !"The ip address type of loghost."                       *"The ip address of the specified loghost."                       +"The vpn instance which the loghost uses. "                       �"The channel which the loghost receives message. The value of this 
            object identifies the index of the channel in the Channel Table.
            The value is referenced from hwICChannelTable."                       �"The operations staff can selectively filter the messages with priority 
            which consists of facility that generates the message and severity of the
            message."                       �"The language of a loghost. If chinese is selected, the information which
            the loghost receives is chinese content."                       "The row status of this table."                           !"A table of INFO CENTER channel."                       #"The channel entry of INFO CENTER."                       "The index of this table."                       X"The name of channel.
             The channel name must be different from each other."                            "A table of INFO CENTER module."                       "The module entry of syslog."                       "The index of this table."                       "The name of module."                           �"The entries in this table can be created, modified, or deleted. The entries indicate that the log control status on the current channel. When the status of the log is off, the level control does not take effect."                       "The log entry of INFO CENTER."                       "The switch state of log."                       "The level of log message."                       !"The status of this table entry."                           "The logfile type."                       "The logfile name."                       &"Storage space occupied by log files."                       "The logfile number."                       "The logfile max number."                           -"The notification for logfile storage limit."                 %"The notification for logfile aging."                 *"The notification for insufficient space."                 +"The notification for logfile buffer lose."                 %"Log written to the log file failed."                 <" Log  written successfully to logfile after writting fail."                 :" Alarm threshed for storage space occupied by log files."                 -" The notification for logfile number limit."                 7"Error in resolving the domain name of the log server."                         L"The compliance statement for systems supporting the HUAWEI-INFOCENTER-MIB."                   "The infocenter group."                 "The infocenter trap group."                                