$--=================================================================
-- Copyright (C) 2022 by HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description:HUAWEI MACSEC MIB
-- Reference:
-- Version: V1.06
-- History:
-- =================================================================
     -"This MIB describes objects used for MACsec." �"Huawei Industrial Base
				Bantian, Longgang
				Shenzhen 518129
				People's Republic of China
				Website: http://www.huawei.com
				Email: support@huawei.com" "202207211521Z" "202202231521Z" "202011232003Z" "201804231622Z" "201711031622Z" "201603101013Z" "201603101013Z" "Delete useless comments." n"Modify MAX-ACCESS of  hwMacsecRcvRspTimeoutIfIndex,hwMacsecRcvRspTimeoutRole,hwMacsecRcvRspTimeoutLocalPort." Q"Add NOTIFICATION-TYPE of hwMACsecIfName, hwMACsecFailReason,hwMACsecFailNotify." �"Add NOTIFICATION-TYPE of hwMACsecPortCipherPeer, hwMACsecPortCipher,hwCipherSwitchFailAlarm,hwMACsecCipherSwitchReason, hwMACsecCipherSwitchFailReason." N"Add NOTIFICATION-TYPE of hwMacsecRcvRspTimeout, hwMacsecRcvRspTimeoutResume." a"Modify MAX-ACCESS of  hwMACsecPortRole ,hwMACsecPortName,hwMACsecPortOldCKN,hwMACsecPortNewCKN." -"This MIB describes objects used for MACsec."       -- 07/21, 2022
           ("The port's MACsec configuration table."                       -"An entry in the MACsec configuration table."                       "The interface index."                       �"Indicates the MKA role of the port.
				Options: 
				1. nonkeyserver(1) -indicates the MKA role of the port is supplicant.
				2. keyserver(2)    -indicates the MKA role of the port is key server. "                       "The port name."                       "The using CKN of this port."                        "The configed CKN of this port."                       $"The configed Cipher Suite of peer."                       )"The configed Cipher Suite of this port."                       "The interface name."                       7"The reason that MACsec failed to run on an interface."                       #"No heartbeat response alarm list."                       3"An entry in the no heartbeat response alarm list."                       "Interface index."                       "Device role."                       "Local port."                               "The reason of CKN switching."                       %"The reason of CKN switching failed."                       '"The reason of Cipher Suite switching."                       ."The reason of Cipher Suite switching failed."                       "Failed to switch the CKN."                 #"No heartbeat response alarm list."                 *"No heartbeat response alarm resume list."                 $"Failed to switch the cipher suite."                  "Failed to run on an interface."                     >"The compliance statement for systems supporting this module."               !"The MACsec module's Bind group."                 )"The MACsec module's Notification group."                                