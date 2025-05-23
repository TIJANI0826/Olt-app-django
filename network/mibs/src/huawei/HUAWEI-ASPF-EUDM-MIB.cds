z-- =======================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: Huawei ASPF MIB, this MIB will for firewall only
-- Reference:
-- Version:     V1.10
-- History:
--  
--  V1.20 2005-05-30 Wei Rixi(22510) added mplsVpnVrfName as table index,
--              changed the region of ApplyZoneID(hwNatEudmZoneApplyZoneID1
--              and hwNatEudmZoneApplyZoneID2) from 1~16 to 0~128.
--              Added fields to HwAspfEudmAppEnableEntry and hwAspfEudmAppEnableGroup.
--  V1.10 2004-06-30 Xin Jianfeng(37631) altered the region of 
--                  hwAspfEudmEnableJavaAcl & hwAspfEudmEnableActiveXAcl to 
--                  0|2000~2999
--  V1.00 2003-03-18 Yang Yinzhu(28193)  initial version
-- =======================================================================
                         �"
            The HUAWEI-ASPF_EUDM-MIB contains objects to
            manage the ASPF(Application Specific Packet Filter)
            configuration for firewall.
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- April 11, 2003 at 09:00 GMT
           �"
            This table contains some switches,
            these switches denotes which application protocol to be inspected.
            This table is used for the device with security zone.
            "                       Z"
            Each table entry define the configuration in one inter zone.
            "                       {"
            The internal ID of first security zone,
            This is index.
            0: Any zone.
            "                       �"
            The internal ID of second security zone, this is index.
            ID2 must not less than ID1.
            0: Any zone.
            "                       )"The inspecting switch for FTP protocol."                       *"The inspecting switch for SMTP protocol."                       *"The inspecting switch for RSTP protocol."                       *"The inspecting switch for H323 protocol."                       *"The inspecting switch for HTTP protocol."                       !"The inspecting switch for JAVA."                       L"The acl number to specify the hosts from which the packet to be inspected."                       $"The inspecting switch for ActiveX."                       L"The acl number to specify the hosts from which the packet to be inspected."                       !"The inspecting switch for PPTP."                       $"The inspecting switch for NetBios."                        "The inspecting switch for MSN."                       "The inspecting switch for QQ."                        "The inspecting switch for SIP."                       X"The user define acl number to specify the hosts from which the packet to be inspected."                       $"The aging time of the user define."                        "The inspecting switch for IDO."                        "The inspecting switch for ILS."                                   Q"The object group contains the ASPF application inspecting switches mib objects "                                