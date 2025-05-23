�--  =================================================================
-- Copyright (C) 2015 by HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: Huawei NETSTREAM MIB File for environment
-- Reference:   
-- Version:     V2.01
-- History:
-- 
--  2005-10-26  V1.00   Zhang Xiaomeng(ht09867), Initial Version 
--  2015-08-01  V2.00   d00296290
--  2015-08-06  V2.01   d00296290, add node for template refresh
-- =================================================================
                     {"The private mib file includes the general extent information of 
             the device.hwDatacomm(25).htNetStream(110)" �"Huawei Industrial Base
              Bantian, Longgang
               Shenzhen 518129
               People's Republic of China
               Website: http://www.huawei.com
               Email: support@huawei.com
             " "201507250000Z" "Initial version"                   ~"The object is the time stamp, which describes the last time that
             the netStreamIfIndex table has been changed. "                      P"This table contains tow rows, one of the two elements indicates 
             the interface index which is distributed by VRP, named 
             netStream32BitIndex and occupies 32 bits.Another indicates the
             interface index of netstream character, which named 
             netStream16BitIndex and occupies 16 bits."                       �"Information about a replaceable unit physical entity. Each entry 
             provides objects of a replaceable unit to help an NMS identify 
             and characterize the entry in this table."                       K"NetStream16BitIndex indicates the interface index of netstream character."                       P"NetStream32BitIndex indicates the interface index which is distributed by VRP."                       <"The object used to trigger netstream resend all templates."                               �"The object indicates if the hwNetStreamIfIndexTable has been changed 
             when interface is deleted,created and board is inserted and drawed."                 p"The object indicates if there is enough index to be distributed,
             which is on the managed object."                 ."The object indicates if the session is full."                         '"The HUAWEI Netstream extension Table."                 !"The HUAWEI Netstream trap info."                         l"The compliance statement for SNMPv2 entities which implement the HUAWEI 
        Netstream extension MIB."                          