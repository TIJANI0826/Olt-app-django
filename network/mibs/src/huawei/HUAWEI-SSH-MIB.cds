+-- ==================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- Description: This mib which contains objects manages the 
--              SSH server and SSH client configuration. 
-- Reference:  
-- Version: V2.45
-- ==================================================================
-- ==================================================================
-- 
-- Varibles and types are imported
--
-- ==================================================================
                                     {"This mib which contains objects manages the 
                SSH server and SSH client configuration. 
                "�"Huawei Industrial Base                
                          Bantian, Longgang                     
                          Shenzhen 518129                       
                          People's Republic of China            
                          Website: http://www.huawei.com        
                          Email: support@huawei.com             
                         " "202208110000Z" "202112270000Z" "202112080000Z" "202110300000Z" "202110130000Z" "202110110000Z" "202108260000Z" "202106240000Z" "202106200000Z" "202105280000Z" "202103310000Z" "202101180000Z" "202011230000Z" "202007140000Z" "202007100000Z" "202006130000Z" "201912040000Z" "201905230000Z" "201905230000Z" "201902280000Z" "201808040000Z" "201807110000Z" "201806070000Z" "201711220000Z" "201711100000Z" "201708230000Z" "201708170000Z" "201705170000Z" "201703140000Z" "201701240000Z" "201409260000Z" "201406300000Z" "201405060000Z" "201011090000Z" "201008250000Z" "201006170000Z" "201004180000Z" "201003030000Z" "201001290000Z" "200609050000Z" 3"V2.45, delete sensitive information from seninfo." ,"V2.44, modify hwSSHServerTimeOut to 1,300." ""V2.43, modify hwSSHUserAuthType." <"V2.42, modify hwSSHUserAssignKeyType, hwSSHSessionKeyType." ""V2.41, modify hwSSHUserAuthType." ("V2.40, modify hwSSHClientPublicKeyAlg." #"V2.37, modify hwSSHServerTimeOut." ("V2.38, add x509rsa2048sha256, ed25519." _"V2.37, modify hwRSAPublicKeyCode, hwRSALocalHostPublicKeyCode, hwRSALocalServerPublicKeyCode." ;"V2.36, modify hwSSHServerCipherAlg, hwSSHClientCipherAlg." E"V2.35, modify hwSSHServerKeyExchangeAlg, hwSSHClientKeyExchangeAlg." ("V2.34, modify hwSSHServerPublicKeyAlg."�"V2.33, add hwSSHServerAlg, hwSSHServerCipherAlg, hwSSHServerHmacAlg, 
                         hwSSHServerKeyExchangeAlg, hwSSHServerDhMinLen, hwSSHServerPublicKeyAlg,
                         hwSSHClientAlg, hwSSHClientCipherAlg, hwSSHClientHmacAlg, hwSSHClientKeyExchangeAlg,
                         hwSSHClientPublicKeyAlg .
                         modify hwSSHServerTimeOut." ""V2.32, modify hwSftpServerName ." %"V2.31, modify hwSSHSessionKeyType ." "V2.30, Add hwSftpClient." "V2.29, Add alarm." "V2.28, modify hwSSHUserTable." @"V2.27, Add X509V3RSA, X509V3RSAandPASSWORD key authentication." �"V2.26, the description of hwSSHUserTable, hwSSHServerSessionTable, hwRSAPublicKeyTable, hwSSHServerInfoTable,
						hwSSHUserAuthType,hwSSHUserServiceType were modified and supplemented." /"V2.25, modify hwRSAPublicKeyName range 1..40 " #"V2.24, add SM2 key authentication" 1"V2.23, modify hwSNetConfMaxUserNum range 0..20 " -"V2.22, delete index of hwRSAPublicKeyTable;" K"V2.21, modify  hwSSHServerInfoTable    OID:1.3.6.1.4.1.2011.5.25.118.2.2;" 1"V2.20, delete index of hwSSHServerSessionTable."|"V2.19, 
                          1.modify hwStelnetServerEnable               OID:1.3.6.1.4.1.2011.5.25.118.1.1;
                          2.modify hwSftpServerEnable                    OID:1.3.6.1.4.1.2011.5.25.118.1.2;
                          3.modify hwSNetConfServerEnable         OID:1.3.6.1.4.1.2011.5.25.118.1.15;
                          4.modify hwStelnetIPv4ServerEnable       OID:1.3.6.1.4.1.2011.5.25.118.1.21;
                          5.modify hwStelnetIPv6ServerEnable       OID:1.3.6.1.4.1.2011.5.25.118.1.22;
                          6.modify hwSftpIPv4ServerEnable             OID:1.3.6.1.4.1.2011.5.25.118.1.23;
                          7.modify hwSftpIPv6ServerEnable             OID:1.3.6.1.4.1.2011.5.25.118.1.24;
                          8.modify hwSCPIPv4ServerEnable            OID:1.3.6.1.4.1.2011.5.25.118.1.25;
                          9.modify hwSCPIPv6ServerEnable            OID:1.3.6.1.4.1.2011.5.25.118.1.26;
                          10.modify hwSNetConfIPv4ServerEnable         OID:1.3.6.1.4.1.2011.5.25.118.1.27;
                          11.modify hwSNetConfIPv6ServerEnable         OID:1.3.6.1.4.1.2011.5.25.118.1.28;
                          12.modify hwSSHFirstTimeAuthEnable            OID:1.3.6.1.4.1.2011.5.25.118.2.1;
                          13.modify hwSSHUserName                              OID:1.3.6.1.4.1.2011.5.25.118.1.11.1.2;" G"V2.18, Modify the type of mib-node according to the field type in DOM" �"V2.17, 
                         1.Add hwSNetConfIPv4ServerEnable          OID:1.3.6.1.4.1.2011.5.25.118.1.27;
                         2.Add hwSNetConfIPv6ServerEnable          OID:1.3.6.1.4.1.2011.5.25.118.1.28;"H"V2.16, 
                           1.Add hwSSHIPv4ServerPort                OID:1.3.6.1.4.1.2011.5.25.118.1.19;
                           2.Add hwSSHIPv6ServerPort                OID:1.3.6.1.4.1.2011.5.25.118.1.20;
                           3.Add hwStelnetIPv4ServerEnable        OID:1.3.6.1.4.1.2011.5.25.118.1.21;
                           4.Add hwStelnetIPv6ServerEnable        OID:1.3.6.1.4.1.2011.5.25.118.1.22;
                           5.Add hwSftpIPv4ServerEnable             OID:1.3.6.1.4.1.2011.5.25.118.1.23;
                           6.Add hwSftpIPv6ServerEnable             OID:1.3.6.1.4.1.2011.5.25.118.1.24;
                           7.Add hwSCPIPv4ServerEnable            OID:1.3.6.1.4.1.2011.5.25.118.1.25;
                          8.Add hwSCPIPv6ServerEnable            OID:1.3.6.1.4.1.2011.5.25.118.1.26." 5"V2.15, default value in the description is updated."I"V2.14, 
                          1. Modify the value range of the node hwSSHServerTimeOut, hwSSHServerPort,hwSftpMaxUserNum,
                             hwSftpOnLineUserNum,hwSSHUserName,hwSSHUserSftpDirectory,hwSSHServerName,hwSSHServerAssignKey.
                          2. Modify the description of the node hwSSHServerTimeOut,hwSSHServerPort,hwSftpMaxUserNum,hwSSHUserName,
                             hwSSHUserAuthorizationCMD,hwSSHSftpUserNumExceedMax.
                          3. Add the following enums of the hwSSHUserAuthType:authDSA(6),authDSAandPASSWORD(7),authAny(8),authECC(9),
                             authECCandPASSWORD(10).
                          4. Add the following enums of the hwSSHUserServiceType:servicetypeSNetConf(5),servicetypeSftpSNetConf(6),
                             servicetypeSTelnetSftp(7),servicetypeSTelnetSNetConf(8).
                          5. Add the following enums of the hwSSHSessionConnectType:none(0),vty15(16),vty16(17),vty17(18),vty18(19),
                             vty19(20),vty20(21).
                          6. modified 'MAX-ACCESS read-only' to 'MAX-ACCESS read-write' of hwSftpMaxUserNum.
                          7. Add hwSSHUserAssignKeyType in hwSSHUserTable.
                          8. Add hwSSHSessionKeyType, hwSSHSessionConnectionIndex, hwSSHSessionCtosCompress, hwSSHSessionStocCompress 
                             in hwSSHServerSessionTable.
                          9. Add hwSNetConfMaxUserNum, hwSNetConfServerEnable, hwSSHKeepAliveEnable, hwSCPServerEnable, hwSCPMaxUserNum
                             in hwSSHServer.
                          10. Add hwSSHServerAssignDSAKey and hwSSHServerAssignECCKey in hwSSHServerInfoTable.
                          11. Add hwSSHKeepAliveInterval and hwSSHKeepAliveMaxCount in hwSSHClient.
                         " �"V1.08, 
                          1. Add hwRSAPublicKeyFingerprint in hwRSAPublicKeyTable.
                          2. Add hwRSALocalKeyTable." G"V1.07, The description of this MIB is modified according to the tool." `"V1.06, modified the contact-info and the revision history. Modified the description of leaves." �"V1.05, the description of hwSSHServerTimeOut, hwSSHServerPort, hwSSHServerKeyTimeOut, hwSSHUserTable, 
                          hwSSHUserEntry, hwSSHUserAuthType and hwSSHUserServiceType were modified and supplemented." b"V1.04, DT requirements were implemented and the syntax and semantics of SIMPLETEST were changed." b"V1.03, DT requirements were implemented and the syntax and semantics of SIMPLETEST were changed." '"V1.02, hwRSAPublicKeyTable was added." "V1.00, completed the draft."                  -"
                The object specifies whether the SSH stelnet server is enable.
                Options:
               1. enable(1) -The SSH stelnet server is enable.
               2. disable(2)-The SSH stelnet server is disable.
               The default value is disable.
                "                      "
                The object specifies whether the sftp server is enable. 
                Options:
                1.enable(1) -the sftp server is enable.
                2.disable(2)-the sftp server is disable.
                The default value is disable.
                "                     -- DEFVAL { 2 }
J"
                The object specifies whether the SSH server is compatible with SSH1.x.
                The default is 2.
                Options:
                1. enable(1) -indicates that the version compatibility function of the SSH server is enabled 
                              so that the SSH server is compatible with the SSHv1.x client.
                2. disable(2)-indicates that the version compatibility function of the SSH server is disabled 
                              and therefore the SSH server is incompatible with the SSHv1.x client.
                "                       �"The object specifies the time when SSH authentication times out.
                The unit is the second and the default is 60 seconds."                       �"
                The object specifies authentication-retry times for SSH user. 
                Default: 3
                "                       g"The object specifies port number for SSH server supporting.
                The default value is 22."                       �"
                The interval of updating the SSH server key pair.    
                By default, value is 0 hour, which means server key can't be updated forever.
                Range: 0-24
                Unit: hour
                "                      &"
                The object specifies whether send trap information to NMS.
                Options:
                1.enable(1) -Only when its value enable, allowed to send trap informations to NMS.
                2.disable(2)-Can not to send trap informations to NMS.
                "                       r"The object specifies the max number of sftp user that sftp server supporting.
                The default is 5."                       �"
                The object specifies the number of sftp user that has been connected to sftp server currently.
                "                       q"
                This table is used for querying and setting the information about SSH user.
                "                       �"
                This table is used for querying and setting the information about SSH user.
                The index of this entry is hwSSHUserIndex.                 
                "                       W"
                The object specifies the index of hwSSHUserTable.
                "                       U"The object specifies the name of a SSH user. The maximum length of the node is 255."                       �"
                The object specifies is a peer public key for a SSH user.
                This peer public key on the SSH server must exist and associate with hwRSAPublicKeyName.
                "                      j"
                The object specifies the authentication type of SSH user.
                The default authentication type is authPASSWORD.
                Options: 
                1. authNULL(1)           -No authenticate.
                2. authPASSWORD(2)       -Password authentication.
                3. authRSA(3)            -RSA key authentication.
                4. authRSAorPASSWORDorED25519(4)  -Password or RSA key or ED25519 key authentication.
                5. authRSAandPASSWORD(5) -Password and RSA key authentication.
                6. authDSA(6)           -DSA key authentication.
                7. authDSAandPASSWORD(7) -Password or DSA key authentication.
                8. authAny(8)            -Any  authentication.
                9. authECC(9)            -ECC key authentication.
                10.authECCandPASSWORD(10) -Password and ECC key authentication.
				11.authSM2(11)			  -SM2 key authentication.
				12.authSM2andPASSWORD(12) -Password and SM2 key authentication.
                13. authX509V3RSA(13)            -X509V3RSA key authentication.
                14. authX509V3RSAandPASSWORD(14)  -Password and X509V3RSA key authentication.
                15. authED25519(15)             -ED25519 key authentication.
                16. authED25519andPASSWORD(16)  -Password and ED25519 key authentication.
                "                      K"
                The object specifies the service type of SSH user. 
                Options: 
                1. servicetypeNULL(1)    -default service type.
                2. servicetypeSTELNET(2) -The service type of the SSH user is STELNET.
                3. servicetypeSFTP(3)    -The service type of the SSH user is SFTP.
                4. servicetypeALL(4)     -The service type of the SSH user is all. 
                5. servicetypeSNetConf(5)       -The service type of the SSH user is SNetConf.
                6. servicetypeSftpSNetConf(6)    -The service type of the SSH user is Sftp and SNetConf.
                7. servicetypeSTelnetSftp(7)     -The service type of the SSH user is STelnet and Sftp.
                8. servicetypeSTelnetSNetConf(8) -The service type of the SSH user is STelnet and SNetConf.
				"                       �"The object specifies the working directory for the sftp user. 
                The total length of absolute path is 128,the length of single directory is 128."                      �"
                The object specifies the authorization type of SSH user. When authorizationAAA is specified,
                the SSH user will be authorizated by HWTACACS server. The default authorization is authorizationNULL,
                indicating SSH user doesn't need to be authorizated by HWTACACS server.
                Options:
                1.authorizationNULL(1)-The default authorization is authorizationNULL,indicating SSH user 
                                       doesn't need to be authorizated by HWTACACS server.
                2.authorizationAAA(2) -When authorizationAAA is specified,the SSH user will be 
                                       authorizated by HWTACACS server. 
                "                      K"
                The object specifies the status of this entry.
                When the status is active(1), hwSSHUserAssignKey, hwSSHUserAuthType, 
                hwSSHUserServiceType, hwSSHUserSftpDirectory, and hwSSHUserAuthorizationCMD's 
                value in the entry are allowed to be modified.
                "                      "The object specifies the public key type of SSH user.
				Options:
				1. keyTypeNULL(0) -The public key type of SSH user is NULL.
				2. keyTypeRSA(1)-The public key type of SSH user is RSA.
				3. keyTypeDSA(2)-The public key type of SSH user is DSA
				4. keyTypeECC(3)-The public key type of SSH user is ECC
				5. keyTypeSM2(5)-The public key type of SSH user is SM2
				6. keyTypePKI(6)-The public key type of SSH user is PKI.
				7.keyTypeED25519(7)-The public key type os SSH user is ED25519.
				"                       �"
                The object shows current session information of the SSH server which includes username,
                version information, retry times of online users currently.
                "                      "
                The object shows current session information of the SSH server which includes username,
                version information, retry times of online users currently.
                The index of this entry is hwSSHSessionIndex.                
                "                       `"
                The object specifies the index of hwSSHServerSessionTable.
                "                       �"
                The object specifies the name of a SSH user,
                which has started a session.
                "                      1"
                The object specifies the line number supports a connection of SSH 
                user which is in connection with SSH server.
				Options:
				1.none(0) -No specifies the line number.
				2.vty0(1) -The line number is 1.
				3.vty1(2) -The line number is 2.
				4.vty2(3) -The line number is 3.
				5.vty3(4) -The line number is 4.
				6.vty4(5) -The line number is 5.
				7.vty5(6) -The line number is 6.
				8.vty6(7) -The line number is 7.
				9.vty7(8) -The line number is 8.
				10.vty8(9) -The line number is 9.
				11.vty9(10) -The line number is 10.
				12.vty10(11) -The line number is 11.
				13.vty11(12) -The line number is 12.
				14.vty12(13) -The line number is 13.
				15.vty13(14) -The line number is 14.
				16.vty14(15) -The line number is 15.
				17.vty15(16) -The line number is 16.
				18.vty16(17) -The line number is 17.
				19.vty17(18) -The line number is 18.
				20.vty18(19) -The line number is 19.
				21.vty19(20) -The line number is 20.
				22.vty20(21) -The line number is 21.	
                "                       �"
                The object specifies the version information of a SSH 
                user which is in connection with SSH server.
                "                       �"
                The object specifies the state of a SSH user 
                which is in connection with SSH server.
                Options:
                1.started(1)-indicates the state is start.
                "                       h"
                The object specifies SSH user's retrying times in authentications.
                "                       Z"
                The object specifies the cipher of custom to server.
                "                       Z"
                The object specifies the cipher of server to custom.
                "                       X"
                The object specifies the hmac of custom to server.
                "                       X"
                The object specifies the hmac of server to custom.
                "                       L"
                The object specifies the key exchange.
                "                       b"
                The object specifies the authentication type of SSH session.
                "                       ["
                The object specifies the service type of SSH session.
                "                      |"The object specifies the public key type of SSH session.
				Options:
				1.keyTypeRSA(1) -The public key type of SSH session is RSA.
				2.keyTypeDSA(2) -The public key type of SSH session is DSA.
				3.keyTypeECC(3) -The public key type of SSH session is ECC.
				4.keyTypeSM2(5) -The public key type of SSH session is SM2.
				5.keyTypePKI(6) -The public key type of SSH session is PKI.
				6.keyTypeRSASHA256(7) -The public key type of SSH session is RSA_SHA2_256.
				7.keyTypeRSASHA512(8) -The public key type of SSH session is RSA_SHA2_512.
				8.keyTypeED25519(9) -The public key type of SSH session is ED25519.
				"                       �"The object specifies the line number supports a connection of SSH user which is in connection with SSH(STelnet/Sftp/SNetConf) server."                       I"The object specifies the Compression algorithm of SSH client to server."                       I"The object specifies the Compression algorithm of SSH Server to client."                       �"
                A table of configuration about RSA Public Key.
                hwRSAPublicKeyName is the name of RSA Public Key.              
                "                       �"
                A table of configuration about RSA Public Key.
                The index of this entry is hwRSAPublicKeyName.  
                hwRSAPublicKeyName is the name of RSA Public Key.
                "                       V"
                The object specifies the name of RSA Public Key.
                "                      6"
                The object specifies is RSA Public Key Code that in the format of der, the maximum length of the node is 4096.             
                When the RSA public key is created, the index value is the name of the public key, which uses the ASCII code.
                The public key value must be generated through a tool. Firstly, use the PUTTYGEN.EXE tool to generate the matching 
                public key and private key. Then, use the sshkey.exe tool to convert the generated public key to the required public key value.
                "                      �"
                The object specifies the status of this table entry.
                When the status is active(1), hwRSAPublicKeyName, hwRSAPublicKeyCode's
                value in the entry are allowed to be modified.  
                createAndGo(4) is supplied to create a new instance of a conceptual row.
                destroy(6) is supplied to delete the instances associated with an existing conceptual row.        
                "                       �"
                The object specifies the fingerprint of RSA Public Key Code,
                that including the public key algorithm, length and fingerprint.
                "                       z"The object specifies the max number of SNetConf user that SNetConf Server supporting.
                The default is 5."                      "The object specifies whether the SSH SNetConf Server is enable.
				Options:
                1. enable(1) -The SSH SNetConf Server is enable.
                2. disable(2)-The SSH SNetConf Server is disable.					
                The default is disable(2).
				"                      6"The object specifies whether the KeepAlive functionality on SSH Server is enable.
				Options:
                1. enable(1) -The KeepAlive functionality on SSH Server is enable.
                2. disable(2)-The KeepAlive functionality on SSH Server is disable.			
                The default is 1.
				"                       �"The object specifies whether the SSH SCP Server is enable.
				Options:
                1. enable(1) -The SSH  SCP server is enable.
                2. disable(2)-The SSH  SCP server is disable.				
                The default is 2.
				"                       p"The object specifies the max number of SCP user that SCP Server supporting.
                The default is 2."                       l"The object specifies port number for SSH IPv4 server supporting.
                The default value is 22."                       l"The object specifies port number for SSH IPv6 server supporting.
                The default value is 22."                      ?"
                The object specifies whether the SSH stelnet IPv4 server is enable.
                Options:
                1. enable(1) -The SSH stelnet IPv4 server is enable.
                2. disable(2)-The SSH stelnet IPv4 server is disable.
                The default value is disable.
                "                      7"
                The object specifies whether the SSH stelnet IPv6 server is enable.
                Options:
                1. enable(1) -The stelnet IPv6 server is enable.
                2. disable(2)-The stelnet IPv6 server is disable.
                The default value is disable.
                "                      '"
                The object specifies whether the sftp IPv4 server is enable.
                Options:
                1.enable(1) -The sftp IPv4 server is enable
                2.disable(2)-The sftp IPv4 server is disable.
                The default value is disable.
                "                      ("
                The object specifies whether the sftp IPv6 server is enable.
                Options:
                1.enable(1) -the sftp IPv6 server is enable.
                2.disable(2)-the sftp IPv6 server is disable.
                The default value is disable.
                "                       �"The object specifies whether the SCP IPv4 Server is enable.
				Options:
                1.enable(1) -the SCP IPv4 Server is enable.
                2.disable(2)-the SCP IPv4 Server is disable.				
                The default value is disable.
				"                       �"The object specifies whether the SCP IPv6 Server is enable.
				Options:
                1.enable(1) -the SCP IPv6 Server is enable.
                2.disable(2)-the SCP IPv6 Server is disable.
                The default value is disable."                      @"
                The object specifies whether the SSH SNetConf IPv4 server is enable.
                Options:
                1.enable(1) -the SSH SNetConf IPv4 server is enable.
                2.disable(2)-the SSH SNetConf IPv4 server is disable.
                The default value is disable.
                "                      B"
                The object specifies whether the SSH SNetConf IPv6 server is enable.
                Options:
                1. enable(1) -The SSH SNetConf IPv6 server is enable.
                2. disable(2)-The SSH SNetConf IPv6 server is disable.
                The default value is disable.
                "                       "The insecure algorithm list."                          �"
                List of the SSH server cipher algorithm.
                Through this list, the index can be configured in batches in the format of bit-domain string.
                It can be configured as follows: to configure the index n, set the nth in the bit string to 1, 
                that is,......000100......For example, to configure the index 1, set the first character of 
                the string to 1, and issue 0100 0000, namely, # 0x40 (note that the value of the bit type 
                starts from 0). For example, to configure the index 8, set the eighth character of the string 
                to 1, and issue 0000 0000 1000 0000, namely, # 0x00 0x80.
                "                       �"
                List of the SSH server hmac algorithm.
                Through this list, the index can be configured in batches in the format of bit-domain string.
                "                       �"
                List of the SSH server key exchange algorithm.
                Through this list, the index can be configured in batches in the format of bit-domain string.
                "                       �"
                This object indicates the length of DH.
                Options:
                1.modulus1024(1),
                2.modulus2048(2),
                3.modulus3072(3),
                4.modulus4096(4).
                "                       �"
                List of the SSH server public key algorithm.
                Through this list, the index can be configured in batches in the format of bit-domain string.
                "                          {"The object specifies whether the SSH client
                supports first-time-authentication.
                Options:
                1.enable(1) -indicates the SSH client supports first-time-authentication.
                2.disable(2)-indicates the SSH client does not support first-time-authentication.
                The default value is disable.
                "                       �"
                A table of configuration about the relation
                between the SSH server and the rsa peerkey.
                "                       �"
                A table of configuration about the relation
                between the SSH server and the rsa peerkey.
                The index of this entry is hwSSHServerIndex.
                "                       ]"
                The object specifies the index of hwSSHServerInfoTable.
                "                       T"
                The object specifies the name of a SSH server.
                "                       �"
                The object specifies a peer public key for a 
                SSH server. This peer public key must exist.
                "                       �"
                The object specifies the status of this entry.
                When the status is active,  
                hwSSHServerAssignKey's value in the entry is 
                allowed to be modified.
                "                       ^"The object specifies a DSA peer public key for a SSH server.This peer public key must exist."                       ^"The object specifies a ECC peer public key for a SSH server.This peer public key must exist."                       ^"The object specifies a SM2 peer public key for a SSH server.This peer public key must exist."                       �"The object specifies KeepAlive Timeout interval on SSH Client.
                The default is 0. 0 specify no KeepAlive packet should be sent to Server."                       {"The object specifies maximum KeepAlive packet to send to SSH Server before disconnect.
                The default is 3."                       "The insecure algorithm list."                          �"
                List of the SSH client cipher algorithm. However, the blowfishcbc algorithm is not supported.
                Through this list, the index can be configured in batches in the format of bit-domain string.
                It can be configured as follows: to configure the index n, set the nth in the bit string to 1, 
                that is,......000100......For example, to configure the index 1, set the first character of 
                the string to 1, and issue 0100 0000, namely, # 0x40 (note that the value of the bit type 
                starts from 0). For example, to configure the index 8, set the eighth character of the string 
                to 1, and issue 0000 0000 1000 0000, namely, # 0x00 0x80.
                "                       �"
                List of the SSH client hmac algorithm.
                Through this list, the index can be configured in batches in the format of bit-domain string.
                "                       �"
                List of the SSH client key exchange algorithm.
                Through this list, the index can be configured in batches in the format of bit-domain string.
                "                       �"
                List of the SSH client public key algorithm.
                Through this list, the index can be configured in batches in the format of bit-domain string.
                "                           �"This notification was sent when the total number of sftp users requesting sftp service
                exceeds max user number configured."                 ["This notification was sent when the insecure algorithm was configured for the SSH server."                 ["This notification was sent when the insecure algorithm was configured for the SSH client."                 ["This notification was sent when the insecure algorithm was configured for the SSH server."                 ["This notification was sent when the insecure algorithm was configured for the SSH client."                         {"
                The compliance statement for systems supporting 
                the HUAWEI-SSH-MIB.
                "                   E"
                The SSH server attribute group.
                "                 ;"
                The SSH user's group.
                "                 E"
                The SSH server's session group.
                "                 G"
                The SSH client's attribute group.
                "                 A"
                The SSH serverInfo's group.
                "                 A"
                The SSH Notification group.
                "                         s"
                The object specifies the local host RSA Public Key Code in the format of der.
                "                       �"
                The object specifies the fingerprint of the local host RSA Public Key Code,
                that including the public key algorithm, length and fingerprint.
                "                       u"
                The object specifies the local server RSA Public Key Code in the format of der.
                "                       �"
                The object specifies the fingerprint of the local server RSA Public Key Code,
                that including the public key algorithm, length and fingerprint.
                "                          L"The object specifies whether the sftp server authentication switch.
                Options:
                1.disable(1) -indicates the sftp server authentication switch disable.
                2.enable(2)-indicates the sftp server authentication switch enable.
                The default value is enable.
                "                       �"
                A table of configuration about the relation between the ip address
                and the sftp server public key name.
                "                       �"
                A table of configuration about the relation between the ip address
                and the sftp server public key name.
                The index of this entry is hwSftpServerName.
                "                       J"
                The IPv4 or IPv6 of the SFTP server.
                "                       ["
                The object specifies the sftp server public key type.
                "                       �"
                The object specifies a sftp server public key name .
                This public key name must exist.
                "                      "
                Row operation object.
                createAndGo(4)is supplied to create a new instance of a conceptual row.  
                destroy(6)is supplied to delete the instances associated with an existing conceptual row.
                "                                  