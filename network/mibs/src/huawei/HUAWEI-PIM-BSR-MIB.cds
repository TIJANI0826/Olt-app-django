�-- ============================================================================
-- Copyright (C) 2007 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI-PIM-BSR-MIB.my , this Mib module for management of 
--              the Bootstrap Router (Bsr) mechanism for PIM routers.
-- Reference:  
-- Version: V1.0
-- History:
--    created by wangyanwei 63315 2007-04-16
--    
-- ============================================================================
                        	"The Mib module for management of IP Multicast, including
            multicast routing, data forwarding, and data reception.
            Huawei Technologies co.,Ltd . Supplementary information may
            be available at:
            http://www.huawei.com"D" R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd., 
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085 
            Http://www.huawei.com                                       
            E-mail:support@huawei.com " "200704160000Z" *"The initial revision of this Mib module."       -- 16 April 2007
          �"The (conceptual) table listing Bsr-specific information
               about PIM group mappings learned via C-RP advertisements
               or created locally using configurations. This table is
               maintained only on the Elected Bsr.

               An Elected Bsr uses this table to create Bootstrap
               Messages after applying a local policy to include some
               or all of the group mappings in this table."                       Q"An entry (conceptual row) in the
                hwPimBsrElectedBsrRpSetTable."                       I"The Inet address type of the IP multicast group
               prefix."                      �"The IP multicast group address which, when combined
               with hwPimBsrElectedBsrGrpMappingGrpAddr, gives the
               group prefix for this mapping.  The InetAddressType is
               given by the hwPimBsrElectedBsrGrpMappingAddrType object.

               This address object is only significant up to
               hwPimBsrElectedBsrGrpMappingGrpAddr bits. The
               remainder of the address bits are zero.  This is
               especially important for this field, which is part of
               the index of this entry.  Any non-zero bits would
               signify an entirely different entry."                      "The multicast group prefix length that, when combined
               with hwPimBsrElectedBsrGrpMappingGrpAddr, gives the group
               prefix for this mapping.  The InetAddressType is given by
               the hwPimBsrElectedBsrGrpMappingAddrType object.  If
               hwPimBsrElectedBsrGrpMappingAddrType is 'ipv4' or 'ipv4z',
               this object must be in the range 4..32.  If
               hwPimBsrElectedBsrGrpMappingAddrType is 'ipv6' or 'ipv6z',
               this object must be in the range 8..128."                       �"The IP address of the RP to be used for groups within
               this group prefix. The InetAddressType is given by the
               hwPimBsrElectedBsrGrpMappingAddrType object."                       �"The priority for RP. Numerically higher values for
               this object indicate lower priorities, with the value
               zero denoting the highest priority." !"I-D.ietf-pim-sm-Bsr section 4.1"                     "The holdtime for RP" !"I-D.ietf-pim-sm-Bsr section 4.1"                     �"The minimum time remaining before this entry will be
               aged out.  The value zero indicates that this entry will
               never be aged out."                       �"If this object is TRUE, this group range with this
               RP is a BIDIR-PIM group range. If it is set to FALSE,
               it is a PIM-SM group range."                               o"The compliance statement for PIM routers that implement
               the Bootstrap Router (Bsr) mechanism."                   l"A collection of objects for managing the Bootstrap
               Router (Bsr) mechanism for PIM routers."                                                