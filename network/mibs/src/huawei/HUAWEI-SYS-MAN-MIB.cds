
-- =====================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: Huawei Configuration management MIB
-- Reference:   HUAWEI Enterprise MIB
-- Version:     V2.54
-- History:
--  2022-10-26  v2.54  heyaner add hwHATraps for HA
--  2022-04-02  v2.53  liujunjie modify description of node hwSmartUpgradeUserDataRetentionPeriodHasExpired, hwSmartUpgradeUserDataRetentionPeriodHasExpiredResume, hwTpmChipFault and hwTpmChipFaultClear.
--  2021-11-08  v2.52  luowenbin add node hwPreviousPackage
--  2021-10-18  v2.51  luxiaodong add node hwPackageOperationType, hwPackageType, hwPackageVersion, hwPreviousVersion, hwCurrentVersion and notification hwPackageOperationSuccess, hwPackageVersionDowngrade
--  2021-09-17  v2.50  renxinwei add node hwSecurityRiskType and notification hwSecurityRisk, hwSecurityRiskClear
--  2021-04-14  v2.49  wangchenglin modify the order of node HWPatchErrorType
--  2021-03-10  v2.48  caiyanze add node hwSysImageSoftwareName to hwSysImageTable
--  2021-03-02  v2.47  zhoukailong modify hwStartupSecureVersionConfurationTrap name to hwStartupSecureVersionTrap
--  2020-08-17  v2.45  suyaran modify hwPatchInstallFail and hwPatchInstallFailClear parameter.
--  2020-07-23  v2.44  yangkepiao modify hwLoadPatchTable description and hwPatchOperateDestType description and hwSoftCrlLoadTable remark
--  2020-06-20  v2.43  caozisheng add hwSmartUpgradeUserDataRetentionPeriodTrap.
--  2020-06-02  v2.42  maominxian modify hwSysCurImageIndex description.
--  2020-05-25  v2.41  huqiuyue modify hwSysReloadScheduleTable, hwLoadPatchTable and hwPatchTable description.
--  2020-05-25  v2.40  sunjian add hwStartupSecureVersionConfurationTrap.
--  2020-04-26  v2.39  zhahuaiyu change the right of the hwSyncBoardName and hwSyncAction node to accessible-for-notify.
--  2020-02-18  v2.38  zhaochunlin add hwTrustVerifyTable, hwTrustemTrap.
--  2019-11-04  v2.37  wuzule modify hwApplication, hwApplicationFault, hwApplicationFaultClear and discard the 2.36 version changes.
--  2019-10-31  v2.36  wuzule add hwApplications, hwApplicationFail, hwApplicationFailResume.
--  2019-09-09  v2.35  lianjunwen modify hwSysImageReason.
--  2019-09-09  v2.33  suyaran add hwSysPackageVerifyFailedResume.
--  2019-08-23  V2.32  nixianhua modify modify hwOMUSyncFailAlarm, hwOMUSyncFailResume.
--  2019-03-14  V2.31  duxiangbo  Add hwSysImageDamagedResume.
--  2019-02-15  V2.30  linxianfu  Add hwSysPackageVerifyFailed.
--  2019-01-23  V2.29  xuyuming add hwTpmChipFault for TrustStartup
--  2018-08-23  V2.28  jiaxiaguang  add hwSysColdPatchNotEffectNotification and hwSysColdPatchNotEffectClearNotification
--  2017-02-05  V2.27  zhangquanquan  add hwSysPatchDamagedNotification and hwSysPatchDamagedClearNotification
--  2017-12-20  V2.26  Jiangyaguang  modify hwSysReloadScheduleTable log
--  2017-12-20  V2.25  nixianhua add hwOMUSyncFailAlarm, hwOMUSyncFailResume 
--  2017-10-31  V2.24  fengyongfei add hwBoardCommunicationLinkFaultAlarm,hwBoardCommunicationLinkFaultResume
--  2017-10-26  V2.23  yaojunda add hwPackageName,hwInnerSSLCerts,hwPatchInstall,hwPatchInstallFailSlot,hwPatchPackageError,hwInnerSSLCertsInvalidEarlyWarning,hwInnerSSLCertificateInvalid
--  2017-10-17  V2.22  huangenli add hwSysImageDamagedNotification
--  2017-09-04  V2.21  luxiaodong modify description of hwSysReloadScheduleTable,hwSysImageTable,hwSysCFGFileTable,hwTpmStatusTable
--  2017-08-17  V2.20  luxiaodong modify description of hwSysDelayReboot,hwPatchErrorTrap,hwPatchUpdateTrap
--  2017-04-05  V2.19  zhangquanquan modify HWPatchErrorType
--  2017-01-25  V2.18  xuxiangdong modify TrustStartup
--  2017-01-05  V2.17  Hanxian modify hwCodeSign for software code signature
--  2016-12-20  V2.16  Hanxian add hwCodeSign for software code signature
--  2016-09-08  V2.15  Zhangquanquan add hwTpmStaticMeasureAlarm for TrustStartup
--  2015-03-10  V2.14  Lin Bing Modified hwPatchFailReason for patch
--  2015-01-12  V2.13  chenruirui Add hwSysEvmTraps for evm
--  2014-09-15  V2.12  xuetao Modified hwSysRebootReason for cfm
--  2014-09-12  V2.11  xuetao Modified hwSysCfgFileName for cfm
--  2014-09-03  V2.10  Song Chuanheng Modified hwIssuState for issu
--  2014-07-28  V2.09  Zhang Bin Modified hwPatchErrorType for patch
--  2014-07-23  V2.08  Xu Yuming Modified hwPatchFailReason for patch
--  2014-07-08  V2.07  Wang Feng    Add hwSysWlanApUpgradeAssistantPackageNotMatchNotify for wlan ap upgrade  
--  2014-06-03  V2.06  Li Shanghong  Modified hwSystemBoardExlude/hwSystemBoardExludeClear to hwSystemBoardExclude/hwSystemBoardExcludeClear 
--  2014-05-22  V2.05  Zhang Xiudong  Add nodes for android upgrade
--                                    Add hwSysReloadAndroidFile to hwSysReloadScheduleEntry (1 OBJECT IDENTIFIER)
--                                    Add hwSysAndroidFile,hwSysAndroidFileNum,hwSysAndroidFileTable,hwSysAndroidFileEntry,hwSysAndroidFileIndex,hwSysAndroidFileName,hwSysAndroidFileSize,hwSysAndroidFileLocation,hwSysAndroidFileReason
--  2014-03-27  V2.04  Wang Feng    Add nodes for wlan ap upgrade
--                                  Add hwSysWlanApUpgrade to huaweiSystemManMIBObjects (1 OBJECT IDENTIFIER)
--                                  Add hwSysWlanApUpgradeCmd, hwSysWlanApUpgradeStatus, hwSysWlanApUpgradeNotifications to hwSysWlanApUpgrade (3 OBJECT IDENTIFIER)
--  2014-03-18  V2.03  Cheng Hailiang Add hwIssuPatchFile leaf into HwSysUpgradeEntry.
--  2014-03-17  V2.02  Liu WenJuan  Add two trap nodes hwSystemBoardExlude and hwSystemBoardExludeClear to huaweiSystemManMIBNotifications table.
--  2013-10-21  V2.01  Luo Dengwei  Add two trap nodes hwSysPafChangeNotification and hwSysLicenseChangeNotification to huaweiSystemManMIBNotifications table.
--  2011-09-23  v1.13   hujian           Added hwSysVoiceFileTable,hwSysVoiceFileNum,hwSysVoiceLicenseFile,hwSysCurVoiceFileIndex
--  2011-08-23  v1.12   niwei           Added hwSysSwitchoverStateMultiTable 
--  2011-04-26  V1.11   Zhang Yong      Modified syntax of hwSysReloadReason, changed from size (1..255) to size (0..255).
--  2005-04-21  V1.10   Zhang Xianping  Added traps for disk fault.
--  2003-05-28  V1.00   Yu Bo           Initial version for first baseline.
-- =====================================================================
   ="           
                description.
                "                                                                �"The HUAWEI-SYS-MAN-MIB contains objects to manage the system.
            The module defines the information about system, such as system
            time, the current configuration file and system image file, system
            reload actions, and notifications. By querying the system time,
            configuration files and system image files, NMS can reboot the device
            in the specified time and the specified configuration and system image." �"Huawei Industrial Base
              Bantian, Longgang
               Shenzhen 518129
               People's Republic of China
               Website: http://www.huawei.com
               Email: support@huawei.com
             " "202210261425Z" "202204021026Z" "202111081026Z" "202110181218Z" "202109171145Z" "202104141425Z" "202103102231Z" "202103021615Z" "202008291416Z" "202008171640Z" "202007231640Z" "202006201121Z" "202006022014Z" "202005291106Z" "202005251400Z" "202004261016Z" "202002191016Z" "201911041628Z" "201910311628Z" "201909241628Z" "201909201628Z" "201909091924Z" "201908231524Z" "201903141629Z" "201901251629Z" "201901231639Z" "201808231139Z" "201802051139Z" "201801301139Z" "201712201139Z" "201710311139Z" "201710261008Z" "201710190000Z" "201708310000Z" "201708170000Z" "201704050000Z" "201701250000Z" "201701250000Z" "201612200000Z" "201609080000Z" "201503100000Z" "201501120000Z" "201409150000Z" "201409120000Z" "201409030000Z" "201407280000Z" "201407230000Z" "201407080000Z" "201406030000Z" "201405220000Z" "201403270000Z" "201403180000Z" "201403170000Z" "201310210000Z" L"add node hwHATraps, hwComponentBackupFail and hwComponentBackupFailResume." �"modify description of node hwSmartUpgradeUserDataRetentionPeriodHasExpired, hwSmartUpgradeUserDataRetentionPeriodHasExpiredResume, hwTpmChipFault and hwTpmChipFaultClear." "add node hwPreviousPackage" �"add node hwPackageOperationType, hwPackageType, hwPackageVersion, hwPreviousVersion, hwCurrentVersion and notification hwPackageOperationSuccess, hwPackageVersionDowngrade." T" add node hwSecurityRiskType and notification hwSecurityRisk, hwSecurityRiskClear." -" modify the order of node HWPatchErrorType." 6" add node hwSysImageSoftwareName to hwSysImageTable." 5" modify hwStartupSecureVersionConfurationTrap name." "" add hwSysNetconfCfgRecoverFail." C" modify hwPatchInstallFail and hwPatchInstallFailClear parameter." l" modify hwLoadPatchTable description and hwPatchOperateDestType description and hwSoftCrlLoadTable remark." 0"add hwSmartUpgradeUserDataRetentionPeriodTrap." ("modify hwSysCurImageIndex description." Q"modify hwSysReloadScheduleTable, hwLoadPatchTable and hwPatchTable description." ,"add hwStartupSecureVersionConfurationTrap." Y"change the right of the hwSyncBoardName and hwSyncAction node to accessible-for-notify." ("add hwTrustVerifyTable, hwTrustemTrap." i"modify hwApplication, hwApplicationFault, hwApplicationFaultClear and discard the 2.36 version changes." A"add hwApplications, hwApplicationFail, hwApplicationFailResume." "modify hwSysImageReason." %"Modify description of hwPatchTable." %"Add hwSysPackageVerifyFailedResume." 1"modify hwOMUSyncFailAlarm, hwOMUSyncFailResume." "Add hwSysImageDamagedResume." "Add hwSysPackageVerifyFailed." &"Add hwTpmChipFault for TrustStartup." W"Add hwSysColdPatchNotEffectNotification and hwSysColdPatchNotEffectClearNotification." K"Add hwSysPatchDamagedNotification and hwSysPatchDamagedClearNotification." &"modify hwSysReloadScheduleTable log." ."Add hwOMUSyncFailAlarm, hwOMUSyncFailResume." M"Add hwBoardCommunicationLinkFaultAlarm,hwBoardCommunicationLinkFaultResume." �"Add hwPackageName,hwInnerSSLCerts,hwPatchInstall,hwPatchInstallFailSlot,hwPatchPackageError,hwInnerSSLCertsInvalidEarlyWarning,hwInnerSSLCertificateInvalid." $"Add hwSysImageDamagedNotification." d"modify description of hwSysReloadScheduleTable,hwSysImageTable,hwSysCFGFileTable,hwTpmStatusTable." L"modify description of hwSysDelayReboot,hwPatchErrorTrap,hwPatchUpdateTrap." "modify HWPatchErrorType." "modify TrustStartup." 0"modify hwCodeSign for software code signature." -"add hwCodeSign for software code signature." /"Add hwTpmStaticMeasureAlarm for TrustStartup." '"Modified hwPatchFailReason for patch." "Add hwSysEvmTraps for evm." 4"Modified hwSysRebootReason. Add new reboot reason." \"Modified hwSysCfgFileName description. hwSysCfgFileName is a string of 5 to 64 characters." Z"Add two hwIssuState: issuRollBackByUserCancel, issuRollBackByExceptional to hwIssuState." D"Add one hwPatchErrorCode : patchMisoperation to hwPatchErrorType ." '"Modified hwPatchFailReason for patch." L" Add hwSysWlanApUpgradeAssistantPackageNotMatchNotify for wlan ap upgrade." j"Modified hwSystemBoardExlude/hwSystemBoardExludeClear to hwSystemBoardExclude/hwSystemBoardExcludeClear."  "Add nodes for android upgrade."  "Add nodes for wlan ap upgrade." 2"Add hwIssuPatchFile leaf into HwSysUpgradeEntry." o"Add two trap nodes hwSystemBoardExlude and hwSystemBoardExludeClear to huaweiSystemManMIBNotifications Table." |"Add two trap nodes hwSysPafChangeNotification and hwSysLicenseChangeNotification to huaweiSystemManMIBNotifications Table."       -- Oct. 26, 2022  GMT
               5"This object indicates the local time of the device."                           }"The current status of system. A configuration file and an image 
            file are used to describe the current status."                       G"An entry of hwSysCurTable. It is indexed by hwSysCurEntPhysicalIndex."                       7"The value of this object identifies the system index."                       �"The value of this object identifies the index of the 
            configuration file in the configuration file list.
            The value is referenced from hwSysCFGFileTable.
            The value ranges from 1 to 2147483647.
            "                      z"The value of this object identifies the index of the current image file in the image file list.
            The value is referenced from hwSysImageTable.
            If the current image file cannot be found in the hwSysImage table, the value is the maximum index value of the image file in the table plus 1.
            The value ranges from 1 to 2147483647.
            "                       q"The value of this object identifies 
            the index of the PAF file in the PAF file list.
            "                       y"The value of this object identifies 
            the index of the license file in the license file list.
            "                       u"The value of this object identifies 
            the index of the patch file in the patch file list.
            "                       �"The value of this object identifies the index of the 
            configuration file in the configuration file list.
            The value is referenced from hwSysCFGFileTable.
            The value ranges from 1 to 2147483647.
            "                          5"The value of this object identifies 
            the record number used when the device restarts.
            The value ranges from 0 to 2147483647.
            After the system restarts, the value returns to 0.
            0: initial value.
            65536: main board schedule method.
            "                      �"The value of this object identifies restart types.
             1: reloadUnavailable
             2: reloadOnSchedule, indicating periodical restart
             3: reloadAtOnce, indicating immediate restart without considering hwSysReloadScheduleTime
             4: reloadCancel, indicating that all the planned restart activities are cancelled. If hwSysReloadSchedule 
                is invalid or the rows that hwSysReloadScheduleEntry and hwSysReloadSchedule point to are not activated, 
                all the restart activities are ignored and an inconsistent value is returned.
            When the restart of the system is complete or no restart activities exist, the value of this object is reloadUnavailable(1).
            "                      �"This table is used to create a device restart instance. You can configure the device to start immediately or at a specified time. With it, you can set the information such as startup configuration file, image file, and restart interval. This table supports the GET and GET-NEXT operations. SNMPv2 and SNMPv3 support the GET, GET-NEXT, GET-BULK.
             Creation Restriction: You can create entries in this table. 
             Modification Restriction: The entries of this table can be modified.
             Deletion Restriction: The entries of this table can be deleted.
             Access Restriction: The entries in this table can be read without restriction."                       $"Entry of hwSysReloadScheduleTable."                       u"The value of this object identifies the index of the instance. 
            The value ranges from 0 to 2147483647."                      `"This object indicates the index of the restarting entity.
            The value is referred to from entPhysicalTable.
            1. When get/get-next, 1 means active main board, 2 means slave main board,
               65535 means other board.
            2. When set, 2 means slave main board, other values mean active main board.
            "                      *"The value of this object identifies the configuration file used after the restart.
            The value is limited by hwSysCFGFileTable. 
            The value ranges from 0 to 2147483647.
            The default value is 0, which means the configuration file remains unchanged.
            "                       �"The value of this object identifies the image file used after the restart.
            The value is limited by hwSysImageTable.
            The value ranges from 1 to 2147483647.
            "                       �"This object indicates the cause of the restart.
            The value is a string of 0 to 255 characters.
            After the system restarts, the character string is deleted.
            "                      "This object indicates the time of the restart.
            The only valid value of this object is an 8-byte string which indicates the local time of the switch.
            The maximum scheduled time is 30 days from the current system clock time. If the value set is earlier 
            than the value of hwSysLocalClock or beyond the maximum scheduled time limit, a bad value error occurred.
            The value of all-zero octet strings indicates system restart at once if the reload action is reloadOnSchedule(1).
            "                      �"If one of values of hwSysReloadEntity, hwSysReloadCfgFile and hwSysReloadImage is invalid, 
            the value of hwSysReloadRowStatus cannot be set to 'active'.
            A valid entry means the specified element is available in the current system. Reload an entity 
            indexed by hwSysReloadEntity with the startup configuration file and the image may be not allowed. Herein the entry is invalid.
            "                       J"The value of this object identifies the PAF file used after the restart."                       N"The value of this object identifies the license file used after the restart."                       L"The value of this object identifies the patch file used after the restart."                      �"The value of this object identifies the running status of the patch at the next startup. 
            That is, whether the loaded patch is in the Run state at the next startup.
            run(1): indicates that the loaded patch is in the Run state at the next startup.
            unused(255): indicates that the loaded patch is in the original state at the next startup.
            "                       3"This object indicates the object to be restarted."                       �"This object indicates the index of the board needs to be restarted.
             The get/get-next result is 'unused'. but, you can't use 'unused' 
             to set.
            "                       N"The value of this object identifies the license file used after the restart."                      ""The value of this object identifies the android file used after the restart.
            The value is limited by hwSysAndroidFileTable. 
            The value ranges from 0 to 2147483647.
            The default value is 0, which means the android file remains unchanged.
            "                      �"The value of this object identifies the restart of the master and slave boards.
            Values are as follows
            unused(1): indicates that this value is not used. Generally, this value is read.
            rebootAllRoute(2): indicates that the integrated device is restarted.
            rebootSlave(3): indicates that the slave board is restarted.
            slaveSwitch(4): indicates that the switchover between the main and slave boards is performed.
            "                      I"The value of this object identifies whether the switchover between the main and the slave boards is enabled.
            enable(1): indicates that the switchover between the main and slave boards is enabled.
            disable(2): indicates that the switchover between the main and slave boards is not enabled.
            "                       6"This object indicates the cause of the last restart."                       -"A slave switchover enable parameters table."                       !"Entry of hwSysSlaveSwitchTable."                       <"The value of the object identifies the index of the table."                       8"The value of the object identifies the chassis number."                      C"Operation type. The object has the following values:
            unused(1): means the default value.
            slaveswitch(2): perform force switchover.
            slaveswitchlock(3): enable the force switchover, 
            this value should be used with the object of hwSysSlaveSwitchEnableStatus.
            "                       �"The enable status of switchover for AMB 
            (Active Main Board) and SMB (Standby Main Board).
            enable(1): enable the force switchover.
            disable(2): disable the force switchover.
            "                       '"The source slot for slave switchover."                       ,"The destination slot for slave switchover."                      �"A delay after which the device is restarted. 
			Similar to the effect achieved when you set hwSysReboot to rebootAllRoute(2), this function delays device restart. 
			The value ranges from 0 to 43200, in minutes. If the value is 65535, delayed restart is cancelled. 
			loadCancel indicates that all the planned restart activities are cancelled.  
			If hwSysReloadSchedule is invalid, or the row where hwSysReloadScheduleEntry and hwSysReloadSchedule are directed are not activated, all the restart activities are ignored, and inconsistent values are returned. If the system restart is completed or no restart activity exists, the value of the object is reloadUnavailable (1). "                           �"The value of this object identifies the number of image files.
            The object calculates the number of image files given by hwSysImageTable.
            The value ranges from 0 to 2147483647.
            "                       �"This table describes software package list on the device. This table supports the GET and GET-NEXT operations. SNMPv2 and SNMPv3 support the GET-BULK operation. This table does not support the SET operation."                       �"A system image entry. Each entry consists of information of
            a system image.
            hwSysImageIndex exclusively decides an image file."                       B"The value of this object identifies the index of the image file."                       �"This object indicates the name of the image file.
            A file name containing path and suffix is a string of 4 to 64 characters.
            "                       �"The value of this object identifies the size of the image file.
            The value ranges from 0 to 2147483647, in bytes. The size depends 
            on the actual file and is limited by the physical storage device.
            "                       a"This object indicates the location of the image file, namely the path.           
            "                       D"The value of this object identifies the version of the image file."                       H"The value of this object identifies the error cause of the image file."                       1"The software name of the software package file."                           �"The value of this object identifies the number of configuration files.
            The object calculates the number of configuration files given by hwSysCFGFileTable.
            The value ranges from 0 to 2147483647.
            "                       �"This table describes the configuration file list of the system. The list supports GET and GET-NEXT operations. SNMPv2 and SNMPv3 also support the GET-BULK operation. The SET operation is not supported. Currently, only the control board is supported."                       �"A configuration file entry. Each entry consists of information of
            a configuration file.
            hwSysCFGFileIndex exclusively decides a configuration file."                       J"The value of this object identifies the index of the configuration file."                      "This object indicates the name of the configuration file.
            Currently, Huawei products support two formats of configuration files, namely, .CFG and .ZIP.
            A file name containing path and suffix is a string of 5 to 64 characters.
            "                       �"The value of this object identifies the size of the configuration file.
            The value ranges from 0 to 2147483647.
            "                       Q"This object indicates the location of the configuration file, namely, the path."                       B"This object indicates the error cause of the configuration file."                           L"The value of this object identifies the number of PAF files in the system."                       &"A table of paf files in this system."                       �"A paf file entry. Each entry consists of information of
            a paf file.
            hwSysPafFileIndex  exclusively decides a configuration file."                       >"The value of this object identifies the index of this table."                       1"This object indicates the name of the PAF file."                       ?"The value of this object identifies the size of the PAF file."                       5"This object indicates the position of the PAF file."                       4"This object indicates the version of the PAF file."                           P"The value of this object identifies the number of license files in the system."                       *"A table of license files in this system."                       �"A license file entry. Each entry consists of information of
            a license  file.
            hwSysLicenseFileIndex exclusively decides a configuration file."                       >"The value of this object identifies the index of this table."                       5"This object indicates the name of the license file."                       5"This object indicates the size of the license file."                       9"This object indicates the position of the license file."                               J"The value of this object identifies the number of patches in the system."                       �"Clear the patch records.
            unused(1): unused.
            resetPatchHistory(2): clears the hwPatchHistoryTable record.
            resetPatchError(3): clears the hwPatchErrorTable record."                       &"Set the size of hwPatchHistoryTable."                       �"The value of this object determines whether to generate the trap of HUAWEI-SYS-MAN-MIB.
            enable(1): Trap is enabled.
            disable(2): Trap is not enabled."                       k"The value of this object identifies the maximum number of recorded errors supported by hwPatchErrorTable."                       3"This object indicates the patch ID on the device."                       :"This object indicates the latest patch ID on the device."                       ;"This object is an index that specifies patch fail reason."                       "This object is Package Name."                       A"This object is an index that specifies cold patch alarm reason."                       "Patch file query table."                       +"Defines an entry in the hwPatchFileTable."                       >"The value of this object identifies the index of this table."                       1"This object indicates the name of a patch file."                       1"This object indicates the size of a patch file."                       5"This object indicates the position of a patch file."                       6"This object indicates the version of the patch file."                      �"The load table of the patch file.
            Load the patch file to the memory:
            hwSlotIndex: The slot ID of the destination device to be loaded by the patch file,
            hwPatchFileIndex: The index of the patch file,
            
            If hwSlotIndex is 128, it indicates all slots of the device.
            Creation Restriction: You can create entries in this table. 
            Modification Restriction: The entries of this table can be modified.
            Deletion Restriction: The entries of this table can be deleted.
            Access Restriction: The entries in this table can be read without restriction."                       +"Defines an entry in the hwLoadPatchTable."                       J"This object indicates the type of the board to be loaded with the patch."                       K"This object indicates the index of the board to be loaded with the patch."                       �"Patch loading state:  
                loading(1):Patch is loading.
                success(2):Patch loading succeeded.
                failure(3):Patch loading failed.
                none(4):Patch and board do not match."                       -"This object identifies the status of a row."                          �"Running status transfer and query of the patch.
            If hwSlotIndex is 128, it indicates all slots of the device.
            If hwPatchNumMax is 65535, it indicates all patches of the specified slot.
            If hwPatchNumMax is 0, it indicates the NP patch of the specified slot. 
            If hwPatchNumMax is in range from 1 to 200, it indicates the C patch of the specified slot.
            Creation Restriction: You can create entries in this table. 
            Modification Restriction: The entries of this table can be modified.
            Deletion Restriction: The entries of this table can be deleted.
            Access Restriction: The entries in this table can be read without restriction."                       '"Defines an entry in the hwPatchTable."                       <"The value of this object identifies the index of the slot."                       /"This object indicates the index of the patch."                       3"This object indicates the name of the patch file."                       6"This object indicates the version of the patch file."                       5"This object indicates the description of the patch."                       M"The value of the object identifies the version number of the host software."                       R"The value of this object identifies the number functions contained in the patch."                       C"The value of this object identifies the length of the patch code."                       C"The value of this object identifies the length of the patch data."                      1"The value of this object identifies the patch type.
            hotCommon(1): indicates the common hot patch.
            hotTemporary(2): indicates the temporary hot patch.
            coolCommon(3): indicates the common cool patch.
            coolTemporary(4): indicates the temporary cool patch."                       <"This object indicates the time when a patch file is built."                       @"This object indicates the time when a patch file is activated."                      A"The value of this object identifies the operation status of a patch.
            Run (1): indicates that the patch status is Run.
            Active(2): indicates the patch status is Active.
            Deactive(3): indicates the patch status is Deactive.
            Delete(4): indicates that the patch is deleted."                      "status of the patch.
            patchRunning(1): indicates that current status of the patch is Run.
            patchActive(2): indicates that current status of the patch is Active.
            patchDeactive(3): indicates that current status of the patch is Deactive."                       q"Patch operate object type,it combine with the hwPatchOperateDestIndex 
            to note the operate object."                       �"Patch operate object index,it combine with chassis,the value of the hwPatchOperateDestType 
            to note the operate object. hwPatchOperateDestIndex is value such as ccc1, clc2 etc."                       <"The statistics information of the patch area on each slot."                       ,"Defines an entry in the hwPatchStateTable."                       D"The value of this object identifies the maximum number of patches."                       A"The value of this object identifies the number of idle patches."                       M"The value of this object identifies the size of the code in the patch area."                       M"The value of this object identifies the size of the data in the patch area."                       R"The value of this object identifies the size of the used code in the patch area."                       R"The value of this object identifies the size of the used data in the patch area."                       G"The value of this object identifies the total number of used patches."                       Q"The value of this object identifies the total number of used temporary patches."                       N"The value of this object identifies the total number of used common patches."                       _"The value of this object identifies the number of patches in the Run state in the patch area."                       b"The value of this object identifies the number of patches in the Active state in the patch area."                       d"The value of this object identifies the number of patches in the Deactive state in the patch area."                       "Patch history table."                       ."Defines an entry in the hwPatchHistoryTable."                       /"This object indicates the index of the table."                       J"The value of the object identifies the version number of the image file."                       ?"The value of this object identifies the version of the patch."                       B"The value of the object identifies the slot number of the patch."                       G"The value of this object identifies the start ID of the loaded patch."                       E"The value of this object identifies the end ID of the loaded patch."                       7"The value of this object identifies the patch status."                       <"This object indicates the start time of running the patch."                       :"This object indicates the end time of running the patch."                       ,"The error record table of patch operation."                       ,"Defines an entry in the hwPatchErrorTable."                       5"This object indicates the index of the patch error."                       H"This object indicates the number of the slot related to a patch error."                       P"This object indicates the index of the patch file when the patch has an error."                       K"This object indicates the index of the patch when the patch has an error."                       4"This object indicates the flag of the patch error."                           )"Boot ROM startup parameter query table."                       )"Defines an entry in the hwBootRomTable."                       S"The value of this object identifies the index of the BootROM table.
            "                       ?"This object indicates the name of the BootROM startup device."                       J"The value of this object identifies the number of the BootROM processor."                       4"The object indicates the name of the BootROM host."                       4"The object indicates the name of the BootROM file."                       H"The object indicates the IP address of the BootROM Ethernet interface."                       ?"The object indicates the IP address of the BootROM backplane."                       :"The object indicates the IP address of the BootROM host."                       ="The object indicates the IP address of the BootROM gateway."                       4"The object indicates the name of the BootROM user."                       ,"The object indicates the BootROM password."                       6"The object indicates the name of the BootROM target."                       2"The object indicates the BootROM startup script."                       T"The value of the object identifies the baud rate for transmitting the XModem data."                       "Boot ROM version."                           "ISSU upgrade table."                       ,"Defines an entry in the hwSysUpgradeTable."                       "Set system issu table index."                       "Set system issu upgrade mode."                       "The name of the image file."                       "The name of the paf file."                       "The name of the license file."                       "The name of the patch file."                       "System issu upgrade state."                       X"System issu upgrade condition check.
             The default check result is normal."                            "System file Index query table."                       )"Defines an entry in the hwBootRomTable."                       I"The value of this object is an index that indicates the type of a file."                       V"This object is an index that indicates the name of a file on the main control board."                       �"The value of this object identifies the index of a file in the specified table. 
            If the value is 0, it indicates that this file does not exist in the specified table."                           5"The value of the device reboot times.
            "                       $"A reboot information record table."                       $"Entry of hwSysReloadScheduleTable."                       &"The index of hwSysRebootRecordTable."                        "The reason of system's reboot."                      y"The time at which the reboot action occurred.
            we will only take octet strings   
            with length 8 for this object which indicates the   
            local time of the switch. The maximum scheduled     
            time is 30 days from the current system clock time. 
            
                field  octets  contents                  range
                  1      1-2   year                      0..65536
                  2       3    month                     1..12
                  3       4    day                       1..31
                  4       5    hour                      0..23
                  5       6    minutes                   0..59
                  6       7    seconds                   0..60
                            (use 60 for leap-second)
                  7       8    deci-seconds              0..9
            "                           "Set system check start."                       "Get system check state."                           ("Get switchover state of single-chassis"                       %"Entry of hwSysSwitchoverStateTable."                       /"This object indicates the index of the table."                       C"The value of this object identifies the slot number of the board."                       <"The value of this object identifies the type of the board."                       K"The value of this object descries the real-time information of HA status."                       '"Get switchover state of multi-chassis"                       *"Entry of hwSysSwitchoverStateMultiTable."                       /"This object indicates the index of the table."                       5"The value of this object identifies the chassis id."                       C"The value of this object identifies the slot number of the board."                       <"The value of this object identifies the type of the board."                       K"The value of this object descries the real-time information of HA status."                           �"The value of this object identifies the number of configuration files.
            The object calculates the number of configuration files given by hwSysCFGFileTable.
            The value ranges from 0 to 2147483647.
            "                       0"A table of configuration files in this system."                       �"A configuration file entry. Each entry consists of information of
            a configuration file.
            hwSysCFGFileIndex exclusively decides a configuration file."                       J"The value of this object identifies the index of the configuration file."                      "This object indicates the name of the configuration file.
            Currently, Huawei products support two formats of configuration files, namely, .CFG and .ZIP.
            A file name containing path and suffix is a string of 4 to 64 characters.
            "                       �"The value of this object identifies the size of the configuration file.
            The value ranges from 0 to 2147483647.
            "                       Q"This object indicates the location of the configuration file, namely, the path."                               i"The value of this object identifies the ap upgrade mode.
                The value ranges from 1 to 3."                       {"The value of this object identifies the filename of the ap upgrade file.
                The value ranges from 1 to 127."                       G"The value of this object identifies server ip address in ipv4 format."                       m"The value of this object identifies the username of server.
                The value ranges from 0 to 31."                       m"The value of this object identifies the password of server.
                The value ranges from 0 to 63."                           �"The value of this object identifies the status of the upgrade or the last result of the upgrade.
                The value ranges from 0 to 10."                       x"The value of this object identifies the progress of file downloading.
                The value ranges from 0 to 100."                       v"The value of this object identifies the progress of file storaging.
                The value ranges from 0 to 100."                           3"This notification occurs when ap begin to update."                 F"This notification occurs when ap has updated successfully or failed."                 ;"This notification occurs when ap uboot not match version."                 O"This notification occurs when ap upgrade-assistant-package not match version."                     �"The value of this object identifies the number of Android files.
            The object calculates the number of android files given by hwSysAndroidFileTable.
            The value ranges from 0 to 2147483647.
            "                       *"A table of android files in this system."                       �"A android file entry. Each entry consists of information of
            a android file.
            hwSysAndroidFileIndex exclusively decides a android file."                       D"The value of this object identifies the index of the android file."                       �"This object indicates the name of the android file.
            Currently, Huawei products support one format of android files, namely, .BIN.
            A file name containing path and suffix is a string of 4 to 64 characters.
            "                       �"The value of this object identifies the size of the android file.
            The value ranges from 0 to 2147483647.
            "                       K"This object indicates the location of the android file, namely, the path."                       <"This object indicates the error cause of the android file."                           e"This table is used to set the trusted-startup function and query the status of the trusted-startup."                       +"Defines an entry in the hwTpmStatusTable."                       #"The index of the physical entity."                       *"The textual name of the physical entity."                       ""Tpm version of hwTpmStatusTable."                       '"Tpm manufacturer of hwTpmStatusTable."                       K"Tpm status of hwTpmStatusTable, value can be active, inactive or unknown."                       �"Set tpm status:
            noSetting(1): No setting tpm status. 
            success(2): Setting tpm status succeeded.
            failure(3): Setting tpm status failed.
            setting(4): Setting tpm status is processing."                       #"Trust-startup report query table."                       4"Defines an entry in the hwTrustStartupReportTable."                       #"The index of the physical entity."                       /"This object indicates the index of the table."                       *"The textual name of the physical entity."                       +"Report item of hwTrustStartupReportTable."                       ."Report tpm-pcr of hwTrustStartupReportTable."                       1"Tpm pcr benchmark of hwTrustStartupReportTable."                       w"Verify result of hwTrustStartupReportTable, value can be ok, error, unknown,update,okAndUpdate or errorAndUpdate now."                       0"A table of trustem certificate in this system."                       r"An inner Trustem certificate entry. Each entry consists of information of
        an inner Trustem certificate."                       C"The value of this object identifies the index of the Certificate."                       B"The value of this object identifies the name of the Certificate."                            "Software crl info query table."                       -"Defines an entry in the hwSoftCrlInfoTable."                       >"The value of this object identifies the index of this table."                       "The slot ID of board."                       "Publisher of the CRL."                       "The issue date of the CRL."                       "The status of the CRL."                        "Software crl file query table."                       -"Defines an entry in the hwSoftCrlFileEntry."                       >"The value of this object identifies the index of this table."                       0"The name of crl files in MMB's home directory."                       "Software crl load table."                       -"Defines an entry in the hwSoftCrlLoadEntry."                       %"The action of loading software crl."                      �"The result of Loading software crl:
			loadSuccess(0): Succeeded in loading the CRL.
			fileNotExist(1): The file of CRL does not exist on the main control board.
			fileNotNew(2): The CRL file is not the latest.
			publisherNotSame(3): The publisher of the CRL file to be updated is inconsistent with that of the CRL file on the device.
			nextStartupSoftwareCheckFailed(4): The code signature verification of the next startup software package failed. Update the software package.
			crlLoadFailed(5): Loading the CRL failed.
			crlFormatError(6): The CRL format is error.
			loading(7): Loading.
			crlNameInvalid(8): The file name is invalid."                           2"A table of inner SSL certificate in this system."                       d"An inner SSL certificate entry. Each entry consists of information of
		an inner SSL certificate."                       9"Certificate:1.Default Certificate.2.Latest certificate."                       "remain days."                       �"Alarm Reason:
            1.The inner SSL certificate was damaged.
            2.The inner SSL certificate expired.
            3.The inner SSL certificate was damaged and expired."                           3"This object indicates the name of the patch file."                       6"This object indicates the version of the patch file."                       ;"This object is an index that specifies patch fail reason."                           ."A table of application fault in this system."                       Y"An application fault entry. Each entry consists of information of an application fault."                       "application type."                       ""application chassis and slot id."                       �"Fault reason type.
            1. StartFailed means application start failed more than 10 times.
            2. AbnormalExit means application abnormal exit more than 30s."                       "Risk type."                           �"This object indicates the notification sent when the system clock changes. 
            When the system clock changes, this trap is triggered. For example, 
            the system clock is changed through command lines.
            "                 1"This object indicates the restart notification."                 �"When the hard disk on master board cannot be read and written because of a certain error, 
            the hard disk on master board is unregistered and the notification is sent.
            "                 �"When the hard disk on slave board cannot be read and written because of a certain error, 
            the hard disk on slave board is unregistered and the notification is sent.
            "                     �"Notification about a patch operation failure. This trap is reported when patch installation or patch status configuration fails. 
			The trap contents include hwPatchErrorSlot, hwPatchErrorPatchIndex, hwPatchErrorCode, and hwPatchErrorPatchFileName."                 ="The patch is not run within 24 hours after it is activated."                 ""The patch operation is restored."                 �"Notification about a trap status change. This trap is reported when patch installation or patch status configuration succeeds."                 ."The patch package install fail notification."                 4"The patch package install fail clear notification."                 '"The patch package error notification."                 -"The patch package error clear notification."                 �"When the cfcard on master board can't be read and written because
            of some error, the Cfcard on master board will be unregistered and 
            the notification is sent.
            "                 �"When the cfcard on slave board can't be read and written because
            of some error, the Cfcard on slave board will be unregistered and 
            the notification is sent.
            "                 k"This object indicates that the hwSysSlaveSwitchChassisNum 
            chassis is successfully switched."                 g"This object indicates that the hwSysSlaveSwitchChassisNum 
            chassis fails to be switched."                 E"When the ISSU upgrade over, it will send success or failed message."                 ."The patch package install fail notification."                 4"The patch package install fail clear notification."                 0"The patch package upgrade success notification"                 ~"This object notifies that some error occurs when the configuration file is specified as the next startup configuration file."                 �"The image file upgrade fail notification. The first hwSysImageName indicates the current image file,
            and the second hwSysImageName indicates the next startup image file."                 �"This object indicates the notification sent when the system PAF file changes.The hwSysPafFileName indicates system PAF file,
            and the hwSysReloadEntity indicates the board type(1 means main board,2 means slave main board)."                 �"This object indicates the notification sent when the system license file changes.The hwSysLicenseFileName indicates the system license file,
            and the hwSysReloadEntity indicates the board type(1 means main board,2 means slave main board)."                 1"The board(s) excluded during software upgrading"                 ;"The board(s) excluded retrieved during software upgrading"                         �"The value of this object identifies the number of Android files.
		The object calculates the number of android files given by hwSysAndroidFileTable.
		The value ranges from 0 to 2147483647.
		"                       �"The value of this object identifies the number of Android files.
		The object calculates the number of android files given by hwSysAndroidFileTable.
		The value ranges from 0 to 2147483647.
		"                       �"The value of this object identifies the number of Android files.
		The object calculates the number of android files given by hwSysAndroidFileTable.
		The value ranges from 0 to 2147483647.
		"                           ;"The board(s) excluded retrieved during software upgrading"                 ;"The board(s) excluded retrieved during software upgrading"                 ;"The board(s) excluded retrieved during software upgrading"                 ;"The board(s) excluded retrieved during software upgrading"                 ;"The board(s) excluded retrieved during software upgrading"                 @"Results of static integrity measurement mismatch during a boot"                 G"Results of static integrity measurement resume matching during a boot"                 )"The image file in the board is damaged."                     n"The inner SSL certificate will expire. This warning is generated 60 days before the SSL certificate expires."                 )"The inner SSL certificate was upgraded."                 q"The inner SSL certificate was invalid. This alarm is generated when the certificate file is damaged or expires."                 )"The inner SSL certificate was repaired."                     9"This alarm is generated when a slot encounters a fault."                 >"This alarm is cleared when the fault in a slot is rectified."                     F"This alarm is generated when the OMU data synchronization timed out."                 N"This alarm is cleared when the OMU data synchronization failure was removed."                 "Board name."                       "Next action."                       3"The patch package running on a board was damaged."                 9"The damaged patch package running on a board recovered."                 G"The running status of the cold patch is different from that expected."                 I"The running status of the cold patch becomes the same as that expected."                 ""A HTM fault occurred on a board."                 +"The HTM fault on the board was rectified."                 %"The software package verify failed."                 4"The damaged image file in the board was rectified."                 ("Verify the software package succeeded."                     :"This alarm is application start failed or abnormal exit."                 L"This alarm is cleared when the application start successfully or undeploy."                     ?"This alarm is generated when the trustem certificate expires."                 /"Notification that the alarm has been cleared."                 I"This alarm is generated 30 days before the trustem certificate expires."                 /"Notification that the alarm has been cleared."                     "Board name."                       X"The alarm is generated when the secure boot version configuration needs to be updated."                 N"This alarm is cleared when the secure boot version configuration is updated."                     R"The alarm is generated when the smart-upgrade data retention period has expired."                 ?"This alarm is cleared when the smart-upgrade data is updated."                 +"Restore netconf rdb cfg have some errors."                 F"This alarm is generated when the system has insecure configurations."                 G"This alarm is cleared when the system has no insecure configurations."                         %"List the operation of the software."                        "List the type of the software."                       &"The version of the software package."                       /"The version of the previous software package."                       ."The version of the current software package."                       ."The version of the current software package."                          "Notification about a software package operation success. This trap is reported when software package installation, uninstallation, upgrade, or reboot succeeds. The trap content includes hwPackageOperationType, hwPackageType, hwPackageName, and hwPackageVersion."                 �"Notification about a software package version downgrade. This trap is reported when the software package version is downgraded. The trap content includes hwPreviousPackage, hwPreviousVersion, hwPackageName and hwCurrentVersion."                         U"Name of the component whose data is backed up on the active and standby components."                       M"ID of the process for backing up data of the active and standby components."                       @"Block ID for backing up data of active and standby components."                           ["This alarm is generated when data backup between the active and standby components fails."                 e"This alarm is cleared when the data of the active and standby components is successfully backed up."                         f"The compliance statement for entities which implement
            the Huawei system management MIB."                   <"A collection of objects providing mandatory system reload."                 U" A collection of objects providing mandatory system clock
            information."                 T"A collection of objects providing mandatory system image
            information."                 b"A collection of objects providing mandatory system configureation
            file information."                 ("A collection of system current status."                 "A collection of notification."                     6"A collection of notification about system hard disk."                     "Description."                 "Patch operation error."                     "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 3"A collection of notification about system cfcard."                     !"A collection of system upgrade."                 !"A collection of system upgrade."                 '"A collection of system device checks."                 b"A collection of objects providing mandatory system configureation
            file information."                 )"A collection of system wlan ap upgrade."                 0"A collection of system wlan ap upgrade status."                 7"A collection of system wlan ap upgrade notifications."                     ["A collection of objects providing mandatory system android
            file information."                 <"A collection of objects providing EVM system trap objects."                            