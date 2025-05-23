0-- =================================================================
-- Copyright (C) 2005 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:HUAWEI-BRAS-RUI-MIB
-- Reference:
-- Version: V1.0
-- History:
--     
-- =================================================================
                                     "Description." )"The MIB contains objects of module RUI."        -- April 18, 2005 at 13:34 GMT
                   )"Peer backup enable.

                "                       /"Peer backup server table.

                "                       0"Peer backup server table.

                 "                       X"IP address of the peer backup server.
                
                             "                       X"IP address of the local backup server.
                
                            "                       N"Port of the TCP connection.
                
                             "                       t"Number of events re-transmitting the detect packet,default is 8. 
                
                             "                       r"The interval of detecting tcp connection,default is 20 seconds.
                
                             "                       G"Row admin status,only Add or Del.
                
                "                       p"Remote backup profile configuration table.
                                
                                "                       p"Remote backup profile configuration table.
                                
                                "                       R"Remote backup profile index.
                        
                        "                       Q"Remote backup profile name.
                        
                        "                       i"Configure peer IP address in remote backup profile.
                        
                        "                       `"Configure VrrpID in remote backup profile.
                        
                        "                       "Configure BackupID in remote backup proflie ,need configure PeerIP first.
                        
                        "                       F"Row admin status,only Add or Del.
                
               "                       w"Remote backup profile configuration extend table.
                                
                                "                       w"Remote backup profile configuration extend table.
                                
                                "                       J"Ip pool bound Index.
                        
                        "                       ]"Ip pool bound by remote backup profile.
                        
                        "                       u"Domain bound by remote backup profile, need bind ip pool first.
                        
                        "                       F"Row admin status,only Add or Del.
                
               "                               T"The compliance statement for systems supporting 
                the this module."                   #"The RUI peer backup enable group."                 "The peer backup server group."                 ""The remote backup profile group."                 *"The RUI peer backup enable extern group."                            