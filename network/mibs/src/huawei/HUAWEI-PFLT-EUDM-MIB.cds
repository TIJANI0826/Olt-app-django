�--  =======================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: HUAWEI-PFLT-EUDM-MIB
-- Reference:
-- Version:     V1.0
-- History:
--  
--  V1.20 2005-05-30 Wei Rixi(22510) added mplsVpnVrfName as table index,
--              changed the region of ApplyZoneID(hwNatEudmZoneApplyZoneID1
--              and hwNatEudmZoneApplyZoneID2) from 1~16 to 0~128.
--              Added fields to HwAspfEudmAppEnableEntry and hwAspfEudmAppEnableGroup.
--  V1.00 2003-03-18 Yang Yinzhu(28193)  initial version
-- =======================================================================
   "Description."               "Description."                     �"
            V1.00
            The HUAWEI-SLOG-EUDM-MIB contains objects to manage the security
            log for firewall product.
            "5"
            R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com
            "        -- April 11, 2003 at 09:00 GMT
           8"This table define the default action in the interzone."                       ."Define the default action when no match acl."                       "The ID of first zone."                       "The ID of second zone."                       8"The default action for inbound direction of interzone."                       9"The default action for outbound direction of interzone."                       F"This table define the packet filter policy applied to the interzone."                       ""Define the packet filter policy."                        "The ID of first security zone."                       !"The ID of second security zone."                       R"The type of acl applied to the interzone on the inbound direction.
            "                      #"
            The number of acl for inbound direction,
            This value is valid when hwPFltPolicyInAclType is aclTypeNum only.
            
            When do SET action, the hwPFltEudmPolicyInAclNum and hwPFltEudmPolicyInAclName
            can only specify one.
            "                      #"
            IThe name of acl for inbound direction,
            This value is valid when hwPFltPolicyInAclType is aclTypeName only.
            
            When do SET action, the hwPFltEudmPolicyInAclNum and hwPFltEudmPolicyInAclName
            can only specify one.
            "                       E"The type of acl applied to the interzone on the outbound direction."                      '"
            The number of acl for outbound direction,
            This value is valid when hwPFltPolicyOutAclType is aclTypeNum only.
            
            When do SET action, the hwPFltEudmPolicyOutAclNum and hwPFltEudmPolicyOutAclName
            can only specify one.
            "                      '"
            IThe name of acl for outbound direction,
            This value is valid when hwPFltPolicyOutAclType is aclTypeName only.
            
            When do SET action, the hwPFltEudmPolicyOutAclNum and hwPFltEudmPolicyOutAclName
            can only specify one.
            "                                   "Description."                 "Description."                                