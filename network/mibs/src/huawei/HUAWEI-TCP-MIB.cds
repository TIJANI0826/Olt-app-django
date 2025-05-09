�-- =================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: The HUAWEI-TCP-MIB provides information about TCP. 
--              Now only trap for MD5 authentication failures is provided 
--              
-- Reference:
-- Version:     V1.04
-- History:
--              xujin,2004.6.26,publish 
-- =================================================================
                    "The HUAWEI-TCP-MIB provides information about TCP. 
                Now only trap for MD5 authentication failures is provided,
                which include local address, local port, remote address, remote 
                port. When MD5 authentication fails, the trap will send." �"Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com" "202209051548Z" "202102010908Z" "201711100908Z" "201708170908Z" "200406090908Z" i"
                            Delete null OBJECTS table of hwTCPBindPort.
                            " P"
                            Add hwTCPBindPort.
                            " U"
                            Modify the description.
                            " U"
                            Modify the description.
                            " T"
                            V1.00, Inital version.
                            "       -- Sep 5, 2022 at 15:48 GMT
          2"This variable indicates which protocol use MD5 authentication.
                If protocol is BGP, this variable will be the BGP string;
                If protocol is LDP, this variable will be the LDP string;
                If protocol is unknown, this variable will be the Unknown protocol string."                       �"This variable indicates which VPN the TCP connection belongs to.
                If the TCP connection belongs to public net, this variable is null."                           �"This trap indicates that the MD5 authentication fails.
                the information include local address, port, 
                remote address, port, protocol and VRF name.
                When MD5 authentication fails, this trap will be sent."                 �"This trap indicates that the TCP port was bound to socket.
                the information include task name, socket id and port.
                When the TCP port was bound to socket, this trap will be sent."                         ]"The compliance statement for entities which 
                implement the Huawei TCP MIB."                   C"A collection of objects providing mandatory TCP trap information."                     c"These objects are required for entities
                which support notification applications."                            