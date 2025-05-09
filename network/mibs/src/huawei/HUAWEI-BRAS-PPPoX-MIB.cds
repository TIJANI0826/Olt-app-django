2-- =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:HUAWEI-BRAS-PPPoX-MIB
-- Reference:
-- Version: V1.0
-- History:
--     
-- =================================================================
     )"The MIB contains objects of module PPP." �"Floor 5, Block 4, R&D Building,
                Huawei Longgang Production Base,
                Shenzhen,   P.R.C.
                http://www.huawei.com
                Zip:518057
                "                   8"PPP configuration information table.
                "                       "Description."                       !"Vt index.
                    "                       ."PPP authentication method.
                "                       ("Config PPP overtime.
                "                       C"Config interval of sending ECHO packet(second).
                "                       -"Config retransmission times of ECHO packet."                       8"Config CHAP authentication username.
                "                       V"Config CHAP authentication password(only support simple password).
                "                       7"Config PAP authentication username.
                "                       U"Config PAP authentication password(only support simple password).
                "                       8"
                Service name one .
                "                       8"
                Service name two .
                "                       :"
                Service name three .
                "                       9"
                Service name four .
                "                       9"
                Service name five .
                "                       8"
                Service name six .
                "                       :"
                Service name seven .
                "                       :"
                Service name eight .
                "                       ~"Config servicename kind of match.
                1 exact match.
                2 fuzzy match(default).
                "                       -"
                AcName.
                "                       Q"PPP VT and interface binding configuration information table.
                "                       "Description."                       $"Interface index.
                "                       "Vt index.
                "                               T"The compliance statement for systems supporting 
                the this module."                   "The ppp config group."                 "The ppp VT Bind group."                            