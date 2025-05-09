y-- ============================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: The HUAWEI-LOAD-BACKUP-MIB provides information about load and backup 
-- Reference:  
-- Version: V3.00
-- History:
-- 
-- ============================================================================
                                         "Huawei load and backup mib." �"Floot 5 ,Block 4, R&D Building,
                Huawei Longgang Production Base,
                Shenzhen,  P.R.C.
                http://www.huawei.com
                Zip:518057
                "                   ?"
                The load parameter table.
                "                       F" 
                The load parameter table entry.
                "                       ?"
                The IP address of server.
                "                       8"
                The load protocol.
                "                       4"
                The file name.
                "                      �"
                Load content: 
                
                enum                 explanation                  
                **********************************************
                program(1),        -- program file
                configuration(2),    -- configuration file¡¡
                patch(3),        -- patch file
                shellMacro(4),
                resLocal(5),
                resGeneral(6),
                cpeDrive(7),
                programDatabase(8),    -- database file         
                programBios(9),        -- bios file             
                programApp(10),        -- application program   
                logicFpga(11),        -- fpga logic file          
                logicCpld(12),        -- Cpld  logic file     
                logicPci(13),        -- pci logic file        ¡¡
                logicAfc(14),        -- afc logic file        
                programMicroCode(15),    -- micro code file       
                programFirmware(16),    -- application program of pinch board 
                programHelp(17),
                programDataFlow(18),    -- flow file of card management point
                programBootFile(19),    -- Boot program file of board 
                logciPa(20),        -- Boot program file of board start 
                webExp(21),        -- web exp file       web exp
                webNev(22),        -- web nev file       web nev
                webHelp(23),        -- web help file      web 
                programBsp(24),        -- bsp program file   bsp
                configurationIni(40),    -- configuration file of ini formatini 
                configurationEfs(41),    -- configuration file with the header of efs  
                configurationCli(42),    -- configuration file of command line format  
                programCurrent(45),    -- the program being run  
                programOther(46),    -- the program that has not been run presently
                license(49),             -- license file     
                programchipset(50),     -- AC5 chipset load     
                               
                "                       J"
                The board type the system supports. 
                "                       5"
                The port index.
                "                       ="
                The Process of loading.
                "                       �"
                The load user name£¬which is necessary in FTP mode 
                and unnecessary in TFTP mode. 
                "                       �"
                The load user name,which is necessary in FTP mode ,
                which is necessary in FTP mode 
                and unnecessary in TFTP mode. 
                "                       A"
                The backup parameter table.
                "                       G"
                The backup parameter table entry.
                "                       >"
                The IP address of Server
                "                       W"
                Load protocol:tftp and MODEM currently supported.
                "                       4"
                The file name.
                "                       9"
                The backup content.
                "                       ?"
                The Process of backuping.
                "                       �"
                The backup user name£¬which is necessary in FTP mode 
                and unnecessary in TFTP mode. 
                "                       �"
                The backup user name,which is necessary in FTP mode ,
                which is necessary in FTP mode and unnecessary in TFTP mode. 
                "                       ?"
                The type of backup board.
                "                               F"
                The back up failure alarm trap. 
                "                 C"
                The load failure alarm trap. 
                "                 R"
                The backup success notification.            
                "                 H"
                The load success notification.    
                "                 O"
                Save configuration to flash failure trap.
                "                 X"
                Save configuration to flash success notification .
                "                 M"
                The configuration  changed event alarm.
                "                         6"
                The load result.
                "                       R"
                Definition node of the backup failure cause.
                "                       n"
                The failure cause definition node of the memory running copy and resume.
                "                           H"
                The configuration changed cause.  
                "                           �"The running configuration in the system has been backup to flash or disk,
                or been restored from .
                "                           O"
                The operation and enquiry table of patch.
                "                       U"
                The operation and enquiry table entry of patch.
                "                       7"
                The patch number.
                "                       ?"
                The description of patch.
                "                       H"
                The number of functions in patch. 
                "                       ?"
                The length of patch code.
                "                       ?"
                The length of patch data.
                "                       8"
                The type of patch.
                "                       ="
                The operation of patch.
                "                       ;"
                The station of patch.
                "                       S"
                The table of statistics information of patch.
                "                       Y"
                The table entry of statistics information of patch.
                "                       I"
                The maximum patch number of system.
                "                       F"
                The capacity of patch code area.
                "                       F"
                The capacity of patch data area.
                "                       ?"
                The used patch code area.
                "                       ?"
                The used patch data area.
                "                               T"The compliance statement for systems supporting 
                the this module."                   #"The load parameter group objects."                 %"The backup parameter group objects."                 &"The trap event causes group objects."                 +"The load and backup result group objects."                 *"The load and backup traps group objects."                     +"The load and backup config group objects."                  "The patch table group objects."                 %"The patch statistics group objects."                