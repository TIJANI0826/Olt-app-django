2-- =================================================================
-- Copyright (C) 2017 by HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description:HUAWEI MAC AUTHEN MIB
-- Reference:
-- Version: V1.06
-- History:
--    v1.01
--    modified by z00196108  2013-8-7
--    v1.02
--    modified by z00196108  2013-10-23
--    v1.03
--    modified by q00228201  2014-1-13
--    v1.04
--    modified by h00280725  2015-6-22
--    v1.05
--    modified by c00350813  2016-3-18
-- =================================================================
                     o"This MIB describes objects used for mac-authentication,including
            configuring mac-authentication." �"Huawei Industrial Base
			Bantian, Longgang
			Shenzhen 518129
			People's Republic of China
			Website: http://www.huawei.com
			Email: support@huawei.com
			" "201709192248Z" "201603181536Z" "201506221604Z" "200912151800Z" "201308071111Z" "201310231221Z" "201401131221Z" o"This MIB describes objects used for mac-authentication,including
            configuring mac-authentication."  "Modify hwMacAuthenModeUsername" '"Modify range of hwMacAuthenMaxUserNum" *"The initial revision of this MIB module." "Modify quiet-period." &"Modify hwMacAuthenTimerOfflineDetect" "Modify quiet-period."                   x"The Global MAC authenticate. Enable this before you want to enable
             other interfaces MAC authentication. "                       )"Specify MAC authentication mode config."                       "Special the fixed password. "                       "Special the fixed username.  "                       '"Specify domain server configuration. "                       "Specify timer configuration."                       "Specify timer configuration."                       "Specify timer configuration."                       >"Specify timer configuration of guest vlan reauthentication. "                       -"The MAC authentication configuration table."                       9"An entry in the MAC authentication configuration table."                       #"The Index of L2-Switch Interface."                       :" Whether to enable MAC authentication on this interface."                       :" Specify guest vlan configuration information for ports."                       "The max number of users. "                       0"Specify domain server configuration for ports."                       3"Specify MAC authentication mode config for ports."                       '"Special the fixed username for ports."                       '"Special the fixed password for ports."                       "The type of port password. "                       "The type of global password. "                           >"The number of ahthenticate users is reached the max number. "                         >"The compliance statement for systems supporting this module."                   '"The mac-authen's Configuration group."                 &"The mac-authen's Notification group."                                