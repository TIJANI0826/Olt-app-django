v-- =================================================================
-- Copyright (C) 2004 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description:This mib file is used for management of huawei BGP Accounting. 
-- Reference:
-- Version: V1.0
-- History:
-- peigangqiang,2005.4.6,publish 
-- =================================================================
   �"invalid(0)
                inbound(1)
                outbound(2)
                inbound-and-outbound(3)            
                "               k"
                invalid(0)
                source(1)
                destination(2)
                "                                 �"The HUAWEI-BGP-ACCOUNTING-MIB contains objects to 
                Manage configuration and Monitor running state 
                for BGP Accounting feature."\" R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com "       -- May 10, 2007 at 00:00 GMT
           V"The hwBgpAcctCfgTable provides the configuration of
                BGP Accounting."                       �"Each HwBgpAcctCfgEntry provides BGP accounting 
                configuration for traffic of interest on an ingress and/or 
                egress interface. "                       $"Interface Index, equal to ifIndex."                       �"An integer value greater than 0, that uniquely identifies
                BGP accounting based on source address or destination address. 
                1 is source ,2 is destination, and the defaule value is 2"                       �"An integer value greater than 0, that uniquely identifies
                BGP accounting the inbound traffic or outbound traffic. 
                1 is inbound ,2 is outbound, and 3 is both inbound and outbound"                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       �"The hwBgpAcctStatTable provides BGP accounting statistics 
                for ingress and egress traffic on an interface. This data could be used for 
                purposes like billing."                      8"Each hwBgpAcctStatEntry provides statistics 
                for traffic of interest on an ingress and/or egress interfaces.
                                
                The statistics include ingress packet counts, ingress octet
                counts, egress packet counts and egress octet counts. Entries 
                are created when traffic-type is configured on an interface.
                Entries are deleted automatically when the user 
                removes the corresponding traffic-type configuration from an
                interface."                       $"Interface Index, equal to ifIndex."                      Z"An integer value greater than 0, that uniquely identifies
                a traffic-type. The traffic-type means the traffic coming into an interface 
                can be differentiated into different types. It is up to the user to
                give meaning to and configure the various traffic-types on an 
                interface."                       f"The total number of packets received for a particular
                traffic-type on an interface."                       e"The total number of octets received for a particular
                traffic-type on an interface."                       i"The total number of packets transmitted for a particular
                traffic-type on an interface."                       h"The total number of octets transmitted for a particular
                traffic-type on an interface."                               f"The compliance statement for entities that implement 
                ip bgp-accouting on a router."                   ~"Required objects to provide hwBgpAcctMIB objects configuration 
                information. hwBgpAcctCfgGroup is optional."                 "Required objects to provide hwBgpAcctMIB objects configuration 
                information. hwBgpAcctStatGroup is optional."                            