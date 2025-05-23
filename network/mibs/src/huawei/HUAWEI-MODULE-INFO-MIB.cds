�--  ====================================================================
-- Copyright (C) 2005 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: Huawei Module information MIB Definition
-- Reference:   
-- Version:     V1.0
-- History:
--              huruoheng create first version v1.0
-- =====================================================================
                     �"
            The HUAWEI-MODULE-INFO-MIB contains objects to describe
            the module information.Such as module BOM description string.
            "B"R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd., 
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085 
            Http://www.huawei.com                                       
            E-mail:support@huawei.com"                   D"This table contains the Module Information about slot and subslot."                       "An entry in this table."                       �"
            Object to index the table.It can be integer up from 1.
            For example: 3 means the entry is a module from No.3 slot
            and it can be slot or subslot.
            "                      �"
            Sub Object to index the table.It can be integer up from 1.
            
            For example: 
            
            hwModuleIndex=1    hwSubModuleIndex=5
            That means this entry is the fifth subslot on slot No.1
            
            hwModuleIndex=2    hwSubModuleIndex=0
            That means this entry is the second slot,and not a subslot.
            "                       �"The identity of the Bill of Material about this replaceable 
            unit which coded by vendor. This node is mapping to 'ITEM' 
            in the information file.
            "                       j"The English description of the Bill of Material about this 
            replaceable unit.
            "                       h"The local description of the Bill of Material about this 
            replaceable unit.
            "                       C"The date when this physical entity is Manufactured.
            "                       Q"The code of the place where this physical entity is Manufactured.
            "                       E"The string code of CLEI which was granted by America.
            "                       ="The maintenance log of this replaceable unit.
            "                       4"The Version of Archives Information.
            "                       ;"The Serial number of this replaceable unit.
            "                                  