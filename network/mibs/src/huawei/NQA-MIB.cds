�-- =================================================================
-- Copyright (C) 2006 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: Network Quality Analyse MIB. 
-- Reference:
-- Version:     V1.1
-- History:
--              V1.0 liyonggang 2006.6.7,publish 
--              V1.1         
--                  modified by liyonggang
-- =================================================================
   "Select test type"               "LLDP interface ID sub type"               ?"Selection of destination addresses when MACPing is performed."               "Represents a boolean value."               "Paras for specified test."              
9"This TC describes the format of a port identifier string.
                Objects of this type are always used with an associated
                LldpPortIdSubtype object, which identifies the format of the
                particular LldpPortId object instance.
                
                If the associated LldpPortIdSubtype object has a value of
                'interfaceAlias(1)', then the octet string identifies a
                particular instance of the ifAlias object (defined in IETF
                RFC 2863).  If the particular ifAlias object does not contain
                any values, another port identifier type should be used.
                
                If the associated LldpPortIdSubtype object has a value of
                'portComponent(2)', then the octet string identifies a
                particular instance of the entPhysicalAlias object (defined
                in IETF RFC 2737) for a port or backplane component.
                
                If the associated LldpPortIdSubtype object has a value of
                'macAddress(3)', then this string identifies a particular
                unicast source address (encoded in network byte order
                and IEEE 802.3 canonical bit order) associated with the port
                (IEEE Std 802-2001).
                
                If the associated LldpPortIdSubtype object has a value of
                'networkAddress(4)', then this string identifies a network
                address associated with the port.  The first octet contains
                the IANA AddressFamilyNumbers enumeration value for the
                specific address type, and octets 2 through N contain the
                networkAddress address value in network byte order.
                
                If the associated LldpPortIdSubtype object has a value of
                'interfaceName(5)', then the octet string identifies a
                particular instance of the ifName object (defined in IETF
                RFC 2863).  If the particular ifName object does not contain
                any values, another port identifier type should be used.
                
                If the associated LldpPortIdSubtype object has a value of
                'agentCircuitId(6)', then this string identifies a agent-local
                identifier of the circuit (defined in RFC 3046).
                
                If the associated LldpPortIdSubtype object has a value of
                'local(7)', then this string identifies a locally
                assigned port ID."                                                                                                                                 ("HUAWEI service quality detect funcion."Z"R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com"       "-- January 09, 2006 at 17:39 GMT
           ^"The NQA version (for example, 1.1). 
                It can be used for version management."                       �"Indicates the switch of enabling NQA client.
                 (The value range: enable:1; disable:2.The default value is enable(1))"                       �"Clears all the enabled test configurations.
                (The value range: enable:1; disable:2. The default value is disable(2))"                       q"The time of the last configuration error. 
                (0 indicates that the configuration does not fail)."                       p"The time of the last configuration error.
                (0 indicates that the configuration does not fail)."                       2"The total number of current configuration tests."                       u"The maximum number of concurrent active requests
                 that are allowed within an agent implementation."                       d"The maximum number of requests
                 that are allowed within an agent implementation. "                       �"Selects the version of jitter test. 
                (The value range: old version:1, new version:2. The default value is old version(1))"                      �"Test type that the current device supports.
                Data structure of the type is in the format of bits. 
                Each bit represents a test type. 
                The mappings between bits and tests are as follows:
                icmp(0),
                tcp(1),
                udp(2),
                http(3),
                ftp(4),
                jitter(5),
                snmp(6),
                trace(7),
                lspPing(8),
                lspTrace(9),
                dns(10),
                dhcp(11),
                dlsw(12),
                pwe3Ping(13),
                pwe3Trace(14),
                mPing(15),
                mTrace(16),
                macPing(17),
                macTunnelPing(18),
                lspJitter(19),
                icmpJitter(20),
                pathJitter(21),
                pathMtu(22),
                pppoe(23),
                vplsmPing(24),
                vplsmacPing(25),
                vplsmacTrace(26),
                vplsMTrace(27),
                gmacping(28),
                gmactrace(29),
                mactrace(30),
                vplspwping(31),
                vplspwtrace(32)
The value #0x00 indicates don't suppourt all testtypes."                      ="Test type that the current device supports.
             Data structure of the type is in the format of bits. 
             Each bit represents a test type. 
             tcpServer(0),
             udpServer(1),
             icmpServer(2)
             The value #0x00 indicates don't suppourt all servertypes."                           ("A table of NQA monitoring definitions."                       ,"Defines an entry in the nqaAdminCtrlTable."                      T"To facilitate the provisioning of access control by a
                security administrator using the View-Based Access
                Control Model for tables in which multiple users may 
                need to independently create or modify entries, 
                the initial index is used as an 'ownerindex'. 

                When used in conjunction with such a security policy
                all entries in the table belonging to a particular user
               (or group) will have the same value for this initial
               index.  For a given user's entries in a particular
               table, the object identifiers for the information in
               these entries will have the same subidentifiers (except
               for the 'column' subidentifier) up to the end of the
               encoded owner index."                       n"The name of a test.  This is locally unique,
                within the scope of an nqaAdminCtrlOwnerIndex."                       9"A string which is the description of the test instance."                        "The type of the test instance."                       8"Specifies the interval when the test instance repeats."                      "Specifies the duration to wait for the completion of test 
                 instance. The default value of DHCP-type and FTP-type test 
                 instance is 15s, The default value of PPPoE-type test 
                 instance is 30s, and that of other types is 3s."                       �"Represents the threshold of RTD (Round Trip Delay). If the 
                 RTT violates the threshold, the corresponding counter will 
                 increase. It applies to any type of test instance."                      "Represents the threshold of OWD (One Way Delay) from source 
                 to destination. If the OWD violates the threshold, the 
                 corresponding counter will increase. It applies only to 
                 jitter-type test instances."                      "Represents the threshold of OWD (One Way Delay) from 
                 destination to source. If the OWD violates the threshold, 
                 the corresponding counter will increase. It applies only 
                 to jitter-type test instances."                      �"To set the value of this object can create or delete the 
                specified test instance and the records belonging to it. 
                Before deleting a test instance, the custom must make sure 
                that the status of the test instance is inactive through 
                nqaScheduleOperStatus. The value can be set to 
                'CreateAndGo (4)', 'Destroy (6)' and 'Active (1)'." Z"See definition of RowStatus in RFC 2579, 'Textual
              Conventions for SMIv2.'"                     "Set parameter for a test. "                       )"set parameter in the nqaAdminParaTable."                       -"Represents the address type of destination."                       ("Represents the address of destination."                       ,"Represents the port number of destination."                       ("Represents the address type of source."                       #"Represents the address of source."                       '"Represents the port number of source."                       �"Specifies the maximum value of TTL. The value cannot be set to 0 unless the test-type is pwe3ping, the lsp-version is rfc4379, and the ttl-copymode is pipe."                       %"Specifies the initial value of TTL."                       �"The storage type for this conceptual row. Conceptual rows 
                 having the value 'permanent' need not allow write-access 
                 to any columnar objects in the row."                      �"The value of this object indicates the maximum number of 
                 consecutive timeouts allowed before terminating a remote 
                 traceroute request. A value of 255 (maximum hop 
                 count/possible TTL value) indicates that the function 
                 of terminating a remote traceroute request when a specific 
                 number of successive timeouts are detected is disabled."                       �"This object enables setting of Don't Fragment (DF) flag in 
                 the IP header for a probe. Use of this object enables 
                 performing a manual PATH MTU test."                       #"The size of data field in packet."                       �"Represents the characters used for filling the data field. 
                 This object is used together with the corresponding object, 
                 nqaAdminParaDataSize."                      &"Specified the source interface or tunnel, from which probes 
                 of the test instance are sent. The object applies to DHCP, 
                 jitter, icmpjitter, ICMP, lspping or lsptrace type test instance.
                 The value zero implies that the object is disabled."                      ?"The purpose of this object is to optionally enable bypassing 
                the route table. If enabled, the remote host will bypass the 
                normal routing tables and send directly to a host on an attached 
                network. If the host is not on a directly-attached network, an 
                error is returned. This option can be used to perform the 
                ping/traceroute operation to a local host through an interface 
                that has no route defined (e.g., after the interface was dropped 
                by routed)."                       E"Enables an application to specify implementation dependent options."                       �"Specifies the number of packets sent by the test instance, or times 
                 of probe repeated, in which may send several packets. The second case 
                 applies to jitter-type test instances."                      L"Switch of notification. Determine whether and how to send notifications 
                for the test instance:
                - probeFailure(0)     - Generate a PathChange notification when the current 
                  path varies from a previously determined path.
                - testFailure(1)    - Generate a TestFailed notification when the full 
                  path to a target can't be determined.
                - testCompletion(2) - Generate a TestCompleted notification when the path 
                  to a target has been determined.
                - overRtdThreshold(3)  - Generate a Overthreshold of RTD notification when 
                  the statistic results exceed threshold.
                - overOwdThresholdSd(4)  - Generate a Overthreshold of OWD-SD notification 
                  when the statistic results exceed threshold.
                - overOwdThresholdDs(5)  - Generate a Overthreshold of OWD-DS notification 
                  when the statistic results exceed threshold.
                The value #0x00 indicates disable all notifications."                      X"Specifies the condition when to trigger an nqaProbeFailed notification. 
                  When the number of consecutive failed probes violates the threshold indicated 
                  by nqaAdminParaTrapProbeFailureFilter, a notification will be created. This 
                  object is used together with nqaAdminParaTrapGeneration."                      �"Specifies the condition when to trigger an nqaTestFailed notification. When 
                  the number of failed tests violates the threshold indicated by 
                  nqaAdminParaTrapTestFailureFilter, a notification will be created. There are 
                  usually several probes in each test. This object is used together with 
                  nqaAdminParaTrapGeneration."                       �"Specifies the Differentiated Services (DS) field in the IP packet. The DS 
                  field is defined as the Type Of Service (TOS) octet in IPv4 header or as 
                  the Traffic Class octet in IPv6 header."                       +"Specifies the address type of DNS server."                       &"Specifies the address of DNS server."                       �"Specifies the operation of FTP or HTTP type test instance. The 
                  operations of FTP-type test instance include get and put. The 
                  operations of HTTP-type test instance include get and post."                        "Specifies the version of HTTP."                       g"A string that specifies the HTTP operation which will be sent 
                  to the HTTP server."                       E"Specifies the scale over which the test will be regarded as failed."                       ,"Specifies the user name of the FTP server."                       7"Specifies the password of the user of the FTP server."                       r"Specifies the full name of the file which will be transmitted 
                  by the FTP-type test instance."                       �"Specifies the size that the file will be transmitted by the 
                  FTP-type test instance. It may be part of the file."                       ?"Specifies the interval between two consecutive probe packets."                       �"Specifies the number of packet sent in each probe. This object 
                  is used together with nqaAdminParaProbeCount, and only apples to 
                  jitter-type test instance."                       "Specifies the VRF name."                       z"Specifies the address type of LSP. The object applies to lspping, 
          lsptrace and lspjitter type test instance."                       �"Specifies the address mask of LSP. The object apples to lspping, 
                  lsptrace and lspjitter type test instance."                       >"IP Address filled in the ip header, must be a 127/8 address."                       ,"The local Pseudo wire ID in PWE3 Ping test"                       @"The encapsulation type of Pseudo wire ID in the PWE3 Ping test"                       4"The label type of PWE3 Ping and PWE3 Tracert test."                       -"The remote Pseudo wire ID in PWE Ping test."                       +"The remote IP address  in PWE3 Ping test."                       3"The 3bit EXP field of the MPLS echo packet label."                      +"ReplyMode
                  Value    Meaning
                  -----    -------
  1    Do not reply
  2    Reply via an IPv4/IPv6 UDP packet
  3    Reply via an IPv4/IPv6 UDP packet with Router Alert
  4    Reply via application level control channel
  5    Reply via a VPLS IPv4 UDP packet"                       1"Specifies the maximum number of result records."                       2"Specifies the maximum number of history records."                       �"When set to 'enable (1)', the result of each hop 
                 will be kept in nqaResultsTable. The object applies 
                 to trace, pwe3trace, lsptrace, mtrace type test instance."                       C"The type of protocol which establishes PW in the pwe3tracert test"                       2"The last hop router's IP address in Mtrace test."                       d"The IP address of the multicast source for the path being 
                traced in Mtrace test."                       w"The group address to be traced in Mtrace test, or zero if no
                 group-specific information is desired."                       `"The maximum number of hops that the requester wants to 
                trace in Mtrace test."                       9"The sending mode of the Query pamessage in Mtrace test."                       ~"The TTL at which to multicast the response in Mtrace test,
                 if the response address is a multicast address."                       "Mtrace response address type"                       �"This field specifies where the completed traceroute response 
                packet gets sent in Mtrace test. It can be a unicast address or 
                a multicast address"                       5"The destination of MAC ping(mac address or rmepid)."                       -"Mac address of the destination of MAC PING."                       ("Rmepid of the destination of MAC PING."                       6"Indicate the MD name in which the MAC Ping operated."                       6"Indicate the MA name in which the MAC Ping operated."                       >"Indicate the MAC Tunnel name in which the MAC Ping operated."                       �"Specify the step of the path MTU test.If the last response
                  was received successful,the next packet's length will add 
                  the step."                       D"Specify the max value of the discovery field in the path MTU test."                       �"Select the type of ICMP packets to be sent in ICMP jitter and path 
                  jitter test.The value can be icmpTimestamp(1) or icmpEcho(2)."                       y"To indicate the codec type to be used with jitter probe. This is
                applicable only for the jitter probe."                      {"The advantage factor depends on the type of access and how the service
                is to be used. This object will be used while calculating the ICPIF
                (Calculated Planning Impairment Factor) values.

                Suggestion values:
                |---------------------------------------------------|-------|
                |          Service                                  |factor |
                |---------------------------------------------------|-------|
                |   conventional wire-line                          |   0   |
                |---------------------------------------------------|-------|
                |   mobility within Building                        |   5   |
                |---------------------------------------------------|-------|
                |   mobility within geographical area               |  10   |
                |---------------------------------------------------|-------|
                |   access to hard-to-reach location                |  20   |
                |---------------------------------------------------|-------|
                "                       m"To indicate the mode to be used with ftp probe. This is
                applicable only for the ftp probe."                       �"Indicates that the hardware is enabled to send packets.
                 (The value range: enable:1;disable:2.The default value is disable(2))"                      "Specifies the username of PPPoE dial-up. For jitter,icmp,traceroute,
                 tcp,udp,ftp,dns,http probes, this parameter indicates that the probe 
                 uses PPPoE encapsulation.
                 This parameter accepts the characters in sight only."                       �"Specifies the password of PPPoE dial-up. This is 
        applicable only for the PPPoE probe.
        This parameter accepts the characters in sight only."                       �"Specifies the vlanif of PPPoE dial-up. For jitter, icmp, traceroute, tcp, 
                 udp, ftp, dns, http probes, this parameter indicates that the probe uses 
                 PPPoE encapsulation."                       l"Specifies the authentication mode of PPPoE dial-up. This is 
        applicable only for the PPPoE probe."                       g"Specifies the redialup times of PPPoE dial-up. This is 
        applicable only for the PPPoE probe."                       j"Specifies the redialup interval of PPPoE dial-up. This is 
        applicable only for the PPPoE probe."                       6"Specify the name of the VSI(Virtual Switch Instance)"                       "Specify the Vlan ID"                       *"To indicate ping/trace which lsp tunnel."                       $"Represents the address of nexthop."                       f"Specify lsp version of protocol. Draft-ietf-mpls-lsp-ping-06 protocol, RFC4379 protocol or ptn mode."                       ("Represents the address type of remote."                       #"Represents the address of remote."                       &"The unit of the timestamp, ms or us."                       "Set parameter for a test."                       ,"Set parameter in the nqaAdminParaExtTable."                       �"This object indicates the description of the nqaAdminExtPara2 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara1 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara4 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara3 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara6 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara5 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara8 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara7 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara10 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara9 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara12 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara11 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara14 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara13 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara16 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara15 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara18 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara17 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara20 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara19 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara22 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara21 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara24 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara23 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara26 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara25 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara28 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara27 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara30 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara29 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara32 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara31 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara34 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara33 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara36 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara35 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara38 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara37 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara40 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara39 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara42 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara41 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara44 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara43 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara46 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara45 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara48 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara47 object after the test case is ascertained."                       �"This object indicates the description of the nqaAdminExtPara50 object. 
                The value is automatically assigned by the system after the type of the test case is ascertained."                       �"This object is a configurable NQA parameter object. 
                Its value and meaning are assigned by the nqaAdminExtPara49 object after the test case is ascertained."                       "Schedule test ."                       ("Set start-up in the nqaAdminParaTable."                       z"Specifies the start type of the test instance. The object 
                 is used together with nqaScheduleStartTime."                      I"Specifies the start time of the test instance. Setting 
                 the value to 0 indicates to start the test instance 
                 immediately. After configuring this object, the status 
                 of the test instance is active, and the parameters of 
                 the test instance can't be changed."                       v"Specifies the end type of the test instance. The object 
                 is used together with nqaScheduleEndTime."                       ."Specifies the end time of the test instance."                      "Specifies the aging time of the test instance, the time 
                 how long the test instance will be reserved in NQA, after 
                 the test instance is inactive. Setting the value to 0 
                 indicates reserving the test instance eternally."                       <"The elapsed time (the period of time after task dispatch)."                      "Specifies the times that the test instance has been initialed. 
                 This object is used as the index of the result table, HTTP 
                 statistics table, jitter statistics table, FTP statistics 
                 table and history table."                       }"Specifies the latest finished test of the test instance, 
                 which is used as the index of the result table."                      U"Specifies the status of dispatching operation:
                 - reset: Clear all the records of the test instance.
                 - stop: Stop the test instance, if it's running.
                 - restart: Stop the test instance, if it's running, 
                  and restart the test instance immediately. 
                 - active: The test instance is running; the parameters 
                  of the test instances can't be changed. 
                 - inactive: The test instance doesn't be scheduled; 
                  the parameters of the test instances can be changed."                       z"Specifies the index of the latest collection statistics 
                 result record in the collection result table."                       "Set group for a test."                       &"Set parameters in the nqaGroupTable."                       |"Specifies the group status of the test instance. The 
                 value can be normal (1), leader (2) or member (3)."                       m"Specifies the interval during which all members in 
                 the specified group will be executed."                       r"Specifies the owner index of the group leader, if the 
                 test instance is a member of the group."                       p"Specifies the test name of the group leader, if the 
                 test instance is a member of the group."                       ."Specifies the number of member in the group."                        "Free all members in the group."                           p"Enables NQA server, which can be the echo server of TCP, 
                 UDP and jitter type test instance."                       b"A table which contains the status of nqa tcp server 
                configuration information."                      3"A table which contains the status of nqa tcp server 
                configuration information.
                 
              This entry is included not only the tcp server ip address 
              but also the tcp server tcp port. If used for VPN it is also 
               included the VPN name."                       +"Specifies the address type of TCP server."                       &"Specifies the address of TCP server."                       ="Specifies the port number on which TCP server is listening."                       c"Specifies the VRF (VPN Routing & Forwarding) instances name 
                 of the TCP server."                       B"Specifies the operation of the TCP server, creating or deleting." Z"See definition of RowStatus in RFC 2579, 'Textual
              Conventions for SMIv2.'"                     b"A table which contains the status of nqa udp server 
                configuration information."                      ("A table which contains the status of nqa udp server 
                configuration information.
 
                This entry is includeed not only the udp server ip address 
                but also the udp server udp port.If used for VPN it is also 
                included the VPN name."                       +"Specifies the address type of UDP server."                       &"Specifies the address of UDP server."                       ="Specifies the port number on which UDP server is listening."                       c"Specifies the VRF (VPN Routing & Forwarding) instances name 
                 of the UDP server."                       B"Specifies the operation of the UDP server, creating or deleting." Z"See definition of RowStatus in RFC 2579, 'Textual
              Conventions for SMIv2.'"                     c"A table which contains the status of nqa ICMP server 
                configuration information."                       �"A table which contains the status of nqa ICMP server 
                configuration information.
 
                This entry is included the ICMP server IP address.
                If used for VPN it is also included the VPN name."                       '"Specifies the address of ICMP server."                       d"Specifies the VRF (VPN Routing & Forwarding) instances name 
                 of the ICMP server."                       ,"Specifies the address type of ICMP server."                       C"Specifies the operation of the ICMP server, creating or deleting." Z"See definition of RowStatus in RFC 2579, 'Textual
              Conventions for SMIv2.'"                        6"Defines the test Results Extend Table for providing
              the capability of performing test operations at
              a remote host.  The results of these operations are
              stored in the nqaResultsTable . The operation of this 
              table is same as that of nqaResultsTable."                       A"The operation of this table is same as that of nqaResultsTable."                      "The result table index and times of dispatching dependency tests. 
                Each test can only reserve 5 records. The result table only contains 
                icmp/dns/dlsw/lspPing/Traceroute/LSP Traceroute/tcp/udp/snmp/dhcp Traceroute information. "                       �"The hop index. If the test type is Traceroute or LSP Traceroute, 
                the entry only defines one hop. For other types, the default value is 1."                       "The status of test."                      
"The times of executing tests, which includes the times of successful execution, 
               failed execution and interruption (interrupted by human or system).
               The current number of test attempts. The value of this object MUST be started at 0."                       �"It is equal to the hop count index executed
                by current Traceroute or LSP Traceroute tests. 
                Ping/LSP Ping does not use this entry. The default value is 0."                       n"The total count of probe packets of Traceroute 
               or LSP Traceroute test in a hop count index."                       f"The times of successful statistics test RTD (Round Trip Delay)
                 over the threshold."                       �"The sum of RTT (response time) of all packets of each hop for executing Traceroute,
                 LSP Traceroute tests. The sum of RTT (response time) of sent packets for executing ping, 
                 lsp ping and disman-ping tests and so on."                      �"The low order 32 bits of the accumulated squares 
                 of completion times (in milliseconds) of NQA 
                 operations which complete successfully.
  
                 Low/High order is defined where the binary number
                 will look as follows:
                 -------------------------------------------------
                 | High order 32 bits    | Low order 32 bits     |
                 -------------------------------------------------
                 For example the number 4294967296 would have all
                 Low order bits as '0' and the rightmost High
                 order bit will be 1 (zeros,1).
                "                      ;"The high order 32 bits of the accumulated squares 
                 of completion times (in milliseconds) of NQA 
                 operations which complete successfully.
  
                 See the nqaResultsSumCompletionTime2Low object
                 for a definition of Low/High Order.
                "                       �"The minimum RTT (for Traceroute and LSP Traceroute,
                 it is the minimum RTT among all the packet of next hop) of all packets for executing a test. "                       �"The maximum RTT (for Traceroute and LSP Traceroute, 
                it is the maximum RTT among all the packets of next hop) of all packets in executing a test."                       i"The times of consecutive failures. For connectionless protocol type of test,this number should be zero."                       �"The number of occasions when a NQA operation was not
                 completed before a timeout occurred, i.e.
                 nqaAdminCtrlTimeOut was exceeded."                       �"The times of failure to apply resource due to the busy system.
                such as apply memory or create socket failure."                      p"The number of occasions when a NQA operation could not be
                 initiated because the connection to the target has not 
                 been established. For all other nqaAdminCtrlType this
                 object will remain zero.
  
                 This cannot occur for connectionless protocols, but may
                 occur for connection oriented protocols, such as TCP.
  
                 Since a NQA operation was never initiated, the completion
                 time of these operations are not accumulated, nor do they
                 increment nqaResultsCompletions. 
                "                      �"The number of NQA operation completions received with 
                 an unexpected sequence identifier.  For all other values
                 of nqaAdminCtrlType this object will remain zero.
  
                 When this has occurred some of the possible reasons maybe:  
                    - a duplicate packet was received
                    - a response was received after it had timed-out
                    - a corrupted packet was received and was not detected
                "                       L"The times probes of the test dropped due to sending or connecting failure."                       m"The destination address type, and the value range can be unknown(0), 
                ipv4(1) and dns(16)."                       �"The destination address (TraceRoute is the destination address of each hop,
                 and ping is the destination address of tests)."                       �"Number of responses received for the corresponding
                 test.  The value of this object
                MUST be reported as 0 when no probe responses have been
                received."                       �"The value of this object reflects the number of probes sent
                for the corresponding test.
                The value of this object MUST be reported as 0 when no probes
                have been sent."                       @"Date and time when the last response was received for a probe."                       ?"The date and time when the last complete path was determined."                       "The status of test execution."                       ?"The average of RTTs that were successfully measured by tests."                       @"The ratio of the packets lost to all packets sent in the test."                       �"The statistics collection database.
                 Defines the HTTP Operations Statistics Table for
          storing the statistics of a HTTP test."                       ,"Defines an entry in the nqaHTTPStatsTable."                       P"The The HTTP statistics table index and times of dispatching dependency tests."                       "The status of HTTP test."                       N"The number of HTTP operations RTD (Round Trip Delay) that violate threshold."                       �"The sum of delay time of successful HTTP probes, including the sum of time of DNS query, 
                TCP establishment and packets transmission."                       '"The minimum value of HTTP probe time."                       '"The maximum value of HTTP probe time."                       "The sum of DNS query time."                        "The minimum of DNS query time."                        "The maximum of DNS query time."                       !"The sum of TCP connection time."                       +"The minimum value of TCP connection time."                       +"The maximum value of TCP connection time."                       "The sum of transaction time."                       ("The minimum value of transaction time."                       ("The maximum value of transaction time."                       h"The sum of the size of the message body received as a 
                 response to the HTTP request."                       9"The number of requests that timed out during DNS query."                       ?"The number of requests that timed out during HTTP connection."                       @"The number of requests that timed out during HTTP transaction."                       3"The number of requests that had DNS query errors."                       *"The number of HTTP transaction failures."                       ("The number of TCP connection failures."                       �"Number of responses received for the corresponding test. The value of this object
                MUST be reported as 0 when no probe responses have been received."                       "The number of sending probes."                       t"The number of occasions when a HTTP operation could not
                  be initiated because an internal error."                       "The status of test execution."                       ?"The average of RTTs that were successfully measured by tests."                       @"The ratio of the packets lost to all packets sent in the test."                       ?"A table which contains the status of latest Jitter operation."                       �"A table which contains the status of latest Jitter operation.
               This entry is created only if the nqaAdminCtrlType is jitterAppl."                       -"The third index of jitter statistics table."                       �"The result of the test, which value can be noResult (0), 
                 success (1), failure (2) or negotiateFailed (3). If the test is still running, 
                 the value will be noResult (0)."                       D"The number of tests that violate RTD (Round Trip Delay) threshold."                       ="The number of RTTs that are successfully measured by tests."                       1"The sum of RTTs that are successfully measured."                       l"The sum of squares of RTTs that are successfully measured by 
                 tests (low order 32 bits)."                       m"The sum of squares of RTTs that are successfully measured by 
                 tests (high order 32 bits)."                       ?"The minimum of RTTs that were successfully measured by tests."                       ?"The maximum of RTTs that were successfully measured by tests."                       Y"The minimum of absolute value of all positive jitter values from source to destination."                       Y"The maximum of absolute value of all positive jitter values from source to destination."                       F"The number of all positive jitter values from source to destination."                       U"The sum of absolute value of all positive jitter values from source to destination."                       �"The sum of squares of absolute value of all positive jitter values 
                 from source to destination (low order 32 bits)."                       �"The sum of squares of absolute value of all positive jitter values 
                 from source to destination (high order 32 bits)."                       l"The minimum of absolute value of all negative jitter values from 
                 source to destination."                       l"The maximum of absolute value of all negative jitter values from 
                 source to destination."                       F"The number of all negative jitter values from source to destination."                       h"The sum of absolute value of all negative jitter values from source 
                 to destination."                       �"The sum of squares of absolute value of all negative values from source 
                 to destination (low order 32 bits)."                       �"The sum of squares of absolute value of all negative values from source to 
                 destination (high order 32 bits)."                       l"The minimum of absolute value of all positive jitter values from destination 
                 to source."                       l"The maximum of absolute value of all positive jitter values from destination 
                 to source."                       F"The number of all positive jitter values from destination to source."                       h"The sum of absolute value of all positive jitter values from destination 
                 to source."                       �"The sum of squares of absolute value of all positive jitter values from 
                 destination to source (low order 32 bits)."                       �"The sum of squares of absolute value of all positive jitter values from 
                 destination to source (high order 32 bits)."                       l"The minimum of absolute value of all negative jitter values from 
                 destination to source."                       l"The maximum of absolute value of all negative jitter values from 
                 destination to source."                       F"The number of all negative jitter values from destination to source."                       h"The sum of absolute value of all negative jitter values from destination 
                 to source."                       �"The sum of squares of absolute value of all negative values from destination 
                 to source (low order 32 bits)."                       �"The sum of squares of absolute value of all negative values from destination 
                 to source (high order 32 bits)."                       B"The number of packets lost when sent from source to destination."                       B"The number of packets lost when sent from destination to source."                       0"The number of packets arrived out of sequence."                       ,"The number of errors occurred in the test."                       }"The number of occasions when a test couldn't be initialized 
                 because the previous test has not completed."                       0"The number of responses arrived over the time."                       _"The number of responses from echo-server for the packets sent 
                 by the test."                       )"The number of packets sent in the test."                       :"The number of packets that were sent failed in the test."                       H"The status of the test, which value can be noFinish (0) or finish (1)."                       D"The maximum of all OWD (One Way Delay) from source to destination."                       D"The maximum of all OWD (One Way Delay) from destination to source."                       ?"The average of RTTs that were successfully measured by tests."                       @"The ratio of the packets lost to all packets sent in the test."                       H"The average of jitter values that were successfully measured by tests."                       v"The average of jitter values from source to destination that were 
                 successfully measured by tests."                       v"The average of jitter values from destination to source that were 
                 successfully measured by tests."                        "Jitter (RFC1889) at responder."                       "Jitter (RFC1889) at sender."                       o"The number of tests that violate OWD (One Way Delay) threshold from 
                 source to destination."                       H"The number of packets lost for which we can't determine the direction."                       >"The number of OWDs that were successfully measured by tests."                       i"The sum of OWDs that were successfully measured by tests from source 
                 to destination."                       i"The sum of OWDs that were successfully measured by tests from 
                 destination to source."                       o"The number of tests that violate OWD (One Way Delay) threshold 
                 from destination to source."                       f"The ICPIF (Calculated Planning Impairment Factor) value for the latest
                jitter test."                       A"The MOS (Mean Opinion Score) value for the latest jitter test. "                       ="The minimum of all one way time from source to destination."                       k"The low order 32 bits of the sum of squares of one way 
                time from source to destination."                       l"The high order 32 bits of the sum of squares of one 
                way time from source to destination."                       ="The minimum of all one way time from destination to source."                       k"The low order 32 bits of the sum of squares of one way time
                 from destination to source."                       Y"The low order 32 bits of the sum of squares of one way time from destination to source."                       &"The unit of the timestamp, ms or us."                       9"The average of one way time from source to destination."                       9"The average of one way time from destination to source."                       +"The number of packets have been rewrited."                       *"The ratio of packets have been rewrited."                       -"The number of packets have been disordered."                       ,"The ratio of packets have been disordered."                       ="The number of packets whose fragments have been disordered."                       <"The ratio of packets whose fragments have been disordered."                       �"The statistics collection database.
                 Defines the FTP Operations Statistics Table for
          storing the statistics of a FTP test.
                "                       ,"Defines an entry in the nqaFTPStatsTable. "                       G"FTP statistics table index and times of dispatching dependency tests."                       "The status of FTP test."                       T"The times of successful statistics test RTD (Round Trip Delay) over the threshold."                       3"The maximum value of the control connection time."                       3"The minimum value of the control connection time."                       3"The average value of the control connection time."                       0"The maximum value of the data connection time."                       0"The minimum value of the data connection time."                       0"The average value of the data connection time."                       *"The maximum value of the FTP probe time."                       *"The mininum value of the FTP probe time."                       *"The average value of the FTP probe time."                       '"The accumulated octets of a FTP test."                       ""The number of some other errors."                       �"The number of occasions when a FTP operation was not
                 completed before a timeout occurred, i.e.
                 nqaAdminCtrlTimeOut was exceeded."                       F"The number of occasions when a FTP test was interrupted by the user."                       �"Number of responses received for the corresponding test.  The value of this object
                MUST be reported as 0 when no probe responses have been received."                       "The number of sending probe"                       "The status of test execution."                       ?"The average of RTTs that were successfully measured by tests."                       @"The ratio of the packets lost to all packets sent in the test."                       �"The statistics collection database.
                 Defines the Mping Operations Statistics Table for
          storing the statistics of a Mping test."                       -"Defines an entry in the nqaMpingStatsTable."                       U"The index of mping statistics table, and the times of dispatching dependency tests."                       _"The index of receiver ,that received the mping request packet and response the reply packet ."                       m"The destination address type, and the value range can be unknown(0), 
                ipv4(1) and dns(16)."                       "The destination address ."                       "The address of mping receiver"                       "The status of test."                       f"The times of successful statistics test RTD (Round Trip Delay) over 
                the threshold."                       1"The sum of RTT (response time) of sent packets."                       �"The low order 32 bits of the sum of squares of RTT (response time)
                 for each packet of test execution.                "                       �"The high order 32 bits of the sum of squares 
                of RTT (response time) for each packet of test execution.                 "                       7"The minimum RTT of all packets for executing a test. "                       6"The maximum RTT of all packets in executing a test. "                       �"The number of occasions when a NQA operation was not completed before a timeout occurred, 
                i.e.  nqaAdminCtrlTimeOut was exceeded."                       �"The times of failure to apply resource due to the busy system. 
                such as apply memory or create socket failure."                       )"The times that sequence error happends."                       N"The times probes of the test dropped due to sending or connecting failure . "                       )"The number of received reponse packets."                       "The number of sent packets."                       @"Date and time when the last response was received for a probe."                       "The status of test execution."                       )"The current serial number of receivers."                       F"Whether the fib is hit on the device when receiving the last packet."                       ?"The average of RTTs that were successfully measured by tests."                       @"The ratio of the packets lost to all packets sent in the test."                       �"The statistics collection database.
                 Defines the Mping Operations Statistics Table for
          storing the statistics of a Mping test."                       A"The operation of this table is same as that of nqaResultsTable."                       U"The index of mping statistics table, and the times of dispatching dependency tests."                       "The index of Mtracert hop "                       m"The destination address type,
                 and the value range can be unknown(0), ipv4(1) and dns(16)."                       u"The destination address 
                (TraceRoute is the source address of the last valuable response package)."                       "The status of test."                       h"It is equal to the hop count index executed
                by current tests. The default value is 0."                       8"The total count of probe packets in a hop count index."                       T"The times of successful statistics test RTD (Round Trip Delay) over the threshold."                       �"The number of occasions when a NQA operation was not completed before a timeout occurred, 
                i.e.  nqaAdminCtrlTimeOut was exceeded."                       �"The times of failure to apply resource due to the busy system. 
                such as apply memory or create socket failure."                       )"The times that sequence error happends."                       N"The times probes of the test dropped due to sending or connecting failure . "                       )"The number of received reponse packets."                       "The number of sent packets."                       @"Date and time when the last response was received for a probe."                       ?"The date and time when the last complete path was determined."                       "The status of test execution."                       -"The TTL(time to live) of the current path. "                       -"The maximum TTL(time to live) of the path. "                       ("The loss rate of the incoming packets."                       >"The loss rate of the packets from source to multicast group."                       "The rate of incoming packets."                       "The rate of outgoing packets."                       ,"The time delay of packets from hop to hop."                       �"The statistics collection database.
                 Defines the path MTU Operations Statistics Table for
                 storing the statistics of a path MTU test."                       /"Defines an entry in the nqaPathMtuStatsTable."                       k"The index of path MTU statistics table, and the times 
                 of dispatching dependency tests."                       m"The destination address type,
                 and the value range can be unknown(0), ipv4(1) and dns(16)."                       d"The destination address.
                 It is the source address of the ICMP echo reply packet."                       "The status of test."                       "The number of sent packets."                       )"The number of received reponse packets."                       q"The initial length of packet in the path MTU test.
                 It is the minimal length of a ICMP packet."                       t"The maximal length of packet in the path MTU test.
                 It is the maximal MTU of local out-interface."                       }"The optimum first step of the path MTU test. 
                 It will take effect if the specified step is lower than it."                       �"The times of failure to apply resource due to the busy system. 
                 such as apply memory or create socket failure."                       �"The number of occasions when a NQA operation was not completed before a timeout occurred, 
                 i.e. nqaAdminCtrlTimeOut was exceeded."                       L"The times probes of the test dropped due to sending or connecting failure."                        "The value of current path MTU."                       "The status of test execution."                       D"A table which contains the status of latest path jitter operation."                       �"A table which contains the status of latest path jitter operation.
                 This entry is created only if the nqaAdminCtrlType is path jitter."                       ["The index of path jitter statistics table, and the times of dispatching dependency tests."                       "The index of path jitter hop."                       !"The status of path jitter test."                       �"The destination address type in a hop of path jitter test, 
                 and the value range can be unknown(0), ipv4(1) and dns(16)."                       7"The destination address in a hop of path jitter test."                       _"The times of successful executions who's RTD over the threshold in a hop of path jitter test."                       J"The times that statistics RTT successfully in a hop of path jitter test."                       /"The sum of RTTs in a hop of path jitter test."                       d"The low order 32 bits of RTT's square sum that successfully measured in a hop of path jitter test."                       e"The high order 32 bits of RTT's square sum that successfully measured in a hop of path jitter test."                       N"The minimum of RTTs that successfully measured in a hop of path jitter test."                       N"The maximum of RTTs that successfully measured in a hop of path jitter test."                       �"The minimum of positive values of jitter that measured from packets sent from 
                 source to destination in a hop of path jitter test."                       �"The maximum of positive values of jitter that measured from packets sent from 
                 source to destination in a hop of path jitter test."                       �"The number of positive values of jitter that measured from packets sent from
                 source to destination in a hop of path jitter test."                       �"The sum of positive values of jitter that measured from packets sent from 
                 source to destination in a hop of path jitter test."                       �"The low order 32 bits of square sum of positive values of jitter that
                 measured from packets sent from source to destination in a hop of path jitter test."                       �"The high order 32 bits of square sum of positive values of jitter that 
                 measured from packets sent from source to destination in a hop of path jitter test."                       �"The minimum of negative values of jitter that measured from packets sent from 
                 source to destination in a hop of path jitter test."                       �"The maximum of negative values of jitter that measured from packets sent from 
                 source to destination in a hop of path jitter test."                       �"The number of negative values of jitter that measured from packets sent from 
                 source to destination in a hop of path jitter test."                       �"The sum of negative values of jitter that measured from packets sent from 
                 source to destination in a hop of path jitter test."                       �"The low order 32 bits of square sum of negative values of jitter that  
                 measured from packets sent from source to destination in a hop of path jitter test."                       �"The high order 32 bits of square sum of negative values of jitter that  
                 measured from packets sent from source to destination in a hop of path jitter test."                       �"The minimum of positive values of jitter that measured from packets sent from 
                 destination to source in a hop of path jitter test."                       �"The maximum of positive values of jitter that measured from packets sent from 
                 destination to source in a hop of path jitter test."                       �"The number of positive values of jitter that measured from packets sent from
                 destination to source in a hop of path jitter test."                       �"The sum of positive values of jitter that measured from packets sent from
                 destination to source in a hop of path jitter test."                       �"The low order 32 bits of square sum of positive values of jitter that
                 measured from packets sent from destination to source in a hop of path jitter test."                       �"The high order 32 bits of square sum of positive values of jitter that 
                 measured from packetssent from destination to source in a hop of path jitter test."                       �"The minimum of negative values of jitter that measured from packets sent from 
                 destination to source in a hop of path jitter test."                       �"The maximum of negative values of jitter that measured from packets sent from
                 destination to source in a hop of path jitter test."                       �"The number of negative values of jitter that measured from packets sent from 
                 destination to source in a hop of path jitter test."                       �"The sum of negative values of jitter that measured from packets sent from
                 destination to source in a hop of path jitter test."                       �"The low order 32 bits of square sum of negative values of jitter that  
                 measured from packets sent from destination to source in a hop of path jitter test."                       �"The high order 32 bits of square sum of negative values of jitter that 
                 measured from packets sent from destination to source in a hop of path jitter test."                       ]"The number of dropped packets sent from source to destination in a hop of path jitter test."                       ]"The number of dropped packets sent from destination to source in a hop of path jitter test."                       4"The number of packets that return out of sequence."                       '"The number of some other errors type."                       {"The number of occasions when a path jitter operation could 
                 not be initiated because an internal error."                       �"The number of occasions when a NQA operation was not completed
                 before a timeout occurred, i.e. nqaAdminCtrlTimeOut was exceeded."                       �"The number of responses received for the corresponding test.  
                 The value of this object MUST be reported as 0 when no probe responses have been received."                       �"The value of this object reflects the number of packets sent for the corresponding test.
                 The value of this object MUST be reported as 0 when no probes have been sent."                       >"The times probes of the test dropped due to sending failure."                       "The status of test execution."                       �"The maximum of all OWD (One Way Delay) 
                 that measured from packets sent from source to destination in a hop of path jitter test."                       �"The maximum of all OWD (One Way Delay)
                 that measured from packets sent from destination to source in a hop of path jitter test."                       S"The average of RTTs that were successfully measured in a hop of path jitter test."                       Q"The ratio of the packets lost to all packets sent in a hop of path jitter test."                       \"The average of jitter values that were successfully measured in a hop of path jitter test."                       �"The average value of jitters that measured from packets sent from
                 sourse to destination in a hop of path jitter test."                       �"The average value of jitters that measured from packets sent from
                 destination to source in a hop of path jitter test."                        "jitter (RFC1889) at responder."                       "Jitter (RFC1889) at sender."                       �"The number of tests that violate OWD (One Way Delay)
                 threshold from source to destination in a hop of path jitter test."                       w"The number of lost packets for which we can't determine the direction
                 in a hop of path jitter test."                       R"The number of OWDs that were successfully measured in a hop of path jitter test."                       �"The sum of OWDs that were successfully measured from packets sent from 
                 source to destination in a hop of path jitter test."                       �"The sum of OWDs that were successfully measured from packets sent from 
                 destination to source in a hop of path jitter test."                       �"The number of tests that violate OWD (One Way Delay) threshold from destination to
                 source in a hop of path jitter test."                       P"A table which contains the rolling accumulated history of the PPPoE operation."                       �"A table which contains the rolling accumulated history of the PPPoE operation.
       This entry is created only if the nqaAdminCtrlType is pppoe."                       _"The index of PPPoE statistics table, and the executing times of dispatching dependency tests."                       _"The index of PPPoE statistics table, and the redialing times of dispatching dependency tests."                        "The status of PPPoE operation."                       '"The current phase of PPPoE operation."                       ."The error message result of PPPoE operation."                       ,"The time for discovery of PPPoE operation."                       0"The time for lcp negotiate of PPPoE operation."                       1"The time for authentication of PPPoE operation."                       0"The time for ncp negotiate of PPPoE operation."                       -"The time for connection of PPPoE operation."                       *"The client sessionID of PPPoE operation."                       +"The client ip address of PPPoE operation."                       ,"The gateway ip address of PPPoE operation."                           p"Defines the Remote Operations test History Table for
                storing the results of a test operation."                       �"Defines a table for storing the results of a test
                operation.  Entries in this table are limited by
                the value of the corresponding nqaAdminParaHistoryRowMax."                       F"The history table index and  times for dispatching dependency tests."                       �"The hop index. If the test type is Traceroute or LSP Traceroute, 
                the entry only defines one hop. For other types, the default value is 1."                       "The probe index of tests."                       ""The start time stamp of a probe."                       &"The address type of history records."                       _"The destination address of tests. For Traceroute, it is the destination address of each hop. "                      "The amount of time measured in milliseconds from when
                 a probe was sent to when its response was received or
                 when it timed out. The value of this object is reported
                 as 0 when it is not possible to transmit a probe."                       Y"The result of a test operation made by a remote
          host for a particular probe."                      C"The last implementation method specific reply code received.
          If the ICMP Echo capability is being used then a successful
          probe ends when an ICMP response is received that contains
          the code ICMP_ECHOREPLY(0).  The ICMP responses are defined
          normally in the ip_icmp include file."                       p"Defines the Remote Operations Mping test History Table for
          storing the results of a test operation."                       �"Defines a table for storing the results of a test
          operation.  Entries in this table are limited by
          the value of the corresponding nqaAdminParaHistoryRowMax."                       L"The Mping history table index and  times for dispatching dependency tests."                       ["The index of receiver ,that received  mping request packets and response  reply packets ."                       0"The index of response packets send by receiver"                       &"The address type of history records."                       $"The destination address of tests. "                       3"The source address of response package of tests. "                       ""The start time stamp of a probe."                       1"The completion time of a probe in milliseconds."                       _"The result of a test operation made by a remote
                host for a particular probe."                       "The last reply code received."                       A"Whether the fib is hit on the device which received the packet."                       x"Defines the Remote MtracertOperations test History Table for
                storing the results of a test operation."                       �"Defines a table for storing the results of a test
                operation.  Entries in this table are limited by
                the value of the corresponding nqaAdminParaHistoryRowMax."                       O"The Mtracert history table index and  times for dispatching dependency tests."                       "The index of Mtracert hop. "                       &"The address type of history records."                       `"The destination address of tests. For Traceroute, it is the destination address of each hop.  "                       ""The start time stamp of a probe."                      "The amount of time measured in milliseconds from when
               a probe was sent to when its response was received or
                when it timed out. The value of this object is reported
              as 0 when it is not possible to transmit a probe."                      B"The last implementation method specific reply code received.
          If the ICMP Echo capability is being used then a successful
          probe ends when an ICMP response is received that contains
          the code ICMP_ECHOREPLY(0). The ICMP responses are defined
          normally in the ip_icmp include file."                       "The current query mode."                       �"The Query Arrival Time is a 32-bit NTP timestamp specifying 
                the arrival time of the traceroute request packet at this router."                       �"This field specifies the address of the interface on which packets from 
                this source and group are expected to arrive, or 0 if unknown."                       �"This field specifies the address of the interface on which packets from this source 
                and group flow to the specified destination, or 0 if unknown."                       m"This field specifies the router from 
                which this router expects packets from this source. "                      7"This field contains the number of multicast packets received for 
                all groups and sources on the incoming interface, or 0xffffffff if 
                no count can be reported.  This counter should have the same 
                value as ifInMulticastPkts from the IF-MIB for this interface."                      z"This field contains the number of multicast packets that have 
                 been transmitted or queued for transmission for all groups and 
                 sources on the outgoing interface, or 0xffffffff if no count can
                 be reported. This counter should have the same value as 
                 ifOutMulti-castPkts from the IF-MIB for this interface."                      B"This field counts the number of packets from the specified source 
                forwarded by this router to the specified group, or 0xffffffff if 
                no count can be reported. This counter should have the same value as 
                ipMRoutePkts from the IPMROUTE-STD-MIB for this forwarding entry."                       u"This field describes the routing protocol in use between this
                 router and the previous-hop router."                       �"This field contains the TTL that a packet is required to 
                have before it will be forwarded over the outgoing interface."                      /"This field contains a forwarding information/error code.  
noError(1):      No error
wrongIf(2):      Traceroute request arrived on an interface to
         which this router would not forward for this
         source,group,destination.
pruneSent(3):    This router has sent a prune upstream which
         applies to the source and group in the tracer-
         oute request.
pruneRCVD(4):    This router has stopped forwarding for this
         source and group in response to a request from
         the next hop router.
scoped(5):       The group is subject to administrative scoping
         at this hop.
noRoute(6):      This router has no route for the source or
         group and no way to determine a potential
         route.
wrongLastHop(7): This router is not the proper last-hop router.
notForwarding(8):This router is not forwarding this
         source,group out the outgoing interface for an
         unspecified reason.
reachedRP(9):    Reached Rendez-vous Point or Core
rpfIf(10):       Traceroute request arrived on the expected RPF
         interface for this source,group.
noMulticast(11): Traceroute request arrived on an interface
         which is not enabled for multicast.
infoHidden(12):  One or more hops have been hidden from this
         trace.
noSpace(13):     There was not enough room to insert another
         response data block in the packet.
oldRouter(14):   The previous hop router does not understand
         traceroute requests.
adminProhib(15): Traceroute is administratively prohibited.
                "                       "The finish state of a probe."                       x"Defines the VPLS mac trace Operations test History Table for
                storing the results of a test operation."                       �"Defines a table for storing the results of a test
                operation.  Entries in this table are limited by
                the value of the corresponding nqaAdminParaHistoryRowMax."                       U"The VPLS mac trace history table index and  times for dispatching dependency tests."                       #"The index of VPLS mac trace hop. "                       3"The index of VPLS mac trace reply packet per hop."                       ""The start time stamp of a probe."                       &"The address type of history records."                       `"The destination address of tests. For Traceroute, it is the destination address of each hop.  "                      I"The completion time of a probe in milliseconds.
                The amount of time measured in milliseconds from when
               a probe was sent to when its response was received or
                when it timed out.  The value of this object is reported
              as 0 when it is not possible to transmit a probe."                       "The finish state of a probe."                       "Hit Flag."                       "The count of Downstreams."                       �"This object indicates whether it is a node along the path that passes the Trace test. By default, the value is false, indicating that the object is not a node along the path that passes the Trace test."                     $-- DEFVAL { false }               
 �"Defines the VPLS mac trace Operations test History Downstreanm Table for
                storing the results of a test operation."                       �"Defines a table for storing the results of a test
                operation.  Entries in this table are limited by
                the value of the corresponding nqaAdminParaHistoryRowMax."                       ,"The VPLS mac trace history DS table index."                       "DS address."                       �"Defines the remote vpls multicast trace operations test history table for
                storing the results of a test operation."                       �"Defines a table for storing the results of a test
                operation.  Entries in this table are limited by
                the value of the corresponding nqaAdminParaHistoryRowMax."                       ["The vpls multicast trace history table index and  times for dispatching dependency tests."                       )"The index of vpls multicast trace hop. "                       /"The index of vpls multicast trace responser. "                       1"The type of history record's Responser address."                       !"The Responser address of tests."                       0"The type of history records' last hop address."                        "The last hop address of tests."                       *"The value of ttl in the received packet."                       "The IGMP protocol version."                       !"The IGMP snooping enable state."                       "The IGMP proxy enable switch."                       ."The IGMP router port learning enable switch."                       ,"The route alert requirement enable switch."                       "The forward mode value."                       A"Whether the fib is hit on the device which received the packet."                       ""Whether the forward PW is exist."                       "The ACL judge result."                       Q"Whether the connection admission control comfiguration of current VSI is exist."                       K"The received query packet number for current IGMP version of current VSI."                       L"The received report packet number for current IGMP version of current VSI."                       K"The received leave packet number for current IGMP version of current VSI."                       ""The start time stamp of a probe."                      "The amount of time measured in milliseconds from when
                 a probe was sent to when its response was received or
                 when it timed out. The value of this object is reported
                 as 0 when it is not possible to transmit a probe."                       >"The last implementation method specific reply code received."                       B"The last implementation method specific reply sub code received."                       "The finish state of a probe."                       ["Whether the response router is on the path of a probe. The default value is notonPath(2)."                     -- DEFVAL { 2 }
 v"This object defines a list of historical MAC trace test instances for storing the running results of test instances."                       �"This object defines a table for storing the running results of test instances. 
                The number of entries in this table is limited by the value of nqaAdminParaHistoryRowMax.
                "                       y"The object indicates the index of the MAC tract history table and the number of times for dispatching dependency tests."                       @"This object indicates the sequence in which LTRs are received."                       +"This object indicates the TTL of the LTR."                       7"This object indicates the sequence number of the LTR." "802.1ag clause 12.14.7.5"                     ="This object  indicates the RTT (ms) of the response packet."                       U"This object indicates whether the device that sends LTRs continues to forward LTMs."                       :"This object indicates whether the LTR is sent by an MEP."                       G"This object indicates the value of the Relay Action field in the LTR."                       I"This object indicates the value of the Ingress Action field in the LTR."                       e"This object indicates the physical MAC address carried in the ingress MAC address field in the LTR."                       E"This object indicates the name of the inbound interface of the LTR."                       H"This object indicates the value of the Egress Action field in the LTR."                       S"This object indicates the MAC address in the Egress MAC address field of the LTR."                       H"This object indicates the name of the interface that forwards the LTR."                          �"Generated when a probe failure is detected when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 probeFailure(0) subject to the value of
                 nqaAdminParaTrapProbeFailureFilter.  The object
                 nqaAdminParaTrapProbeFailureFilter can be used to specify the
                 number of successive probe failures that are required
                 before this notification can be generated.(except for HTTP or Jitter or FTP)"                �"Generated when a nqa test is determined to have failed
                 when the corresponding nqaAdminParaTrapGeneration object is
                 set to testFailure(1).  In this instance
                 nqaAdminParaTrapTestFailureFilter should specify the number of
                 probes in a test required to have failed in order to
                 consider the test as failed. (Except for HTTP or Jitter or FTP)"                 �"Generated at the completion of a nqa test when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 testCompletion(2).(except for HTTP or Jitter or FTP)"                 �"If the time of executing tests exceeds the nqaAdminCtrlThreshold1,
                 the system sends trap information.(except for HTTP or Jitter or FTP)"                �"Generated when a probe failure is detected when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 probeFailure(0) subject to the value of
                 nqaAdminParaTrapProbeFailureFilter.  The object
                 nqaAdminParaTrapProbeFailureFilter can be used to specify the
                 number of successive probe failures that are required
                 before this notification can be generated.(Only for HTTP)"                �"Generated when a HTTP test is determined to have failed
                 when the corresponding nqaAdminParaTrapGeneration object is
                 set to testFailure(1).  In this instance
                 nqaAdminParaTrapTestFailureFilter should specify the number of
                 probes in a test required to have failed in order to
                 consider the test as failed.(Only for HTTP)"                 �"Generated at the completion of a HTTP test when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 testCompletion(2)."                 �"If the time of executing tests exceeds the nqaAdminCtrlThreshold1 
                 or nqaAdminCtrlThreshold2 or nqaAdminCtrlThreshold3,
                 the system sends trap information.(Only for HTTP)"                �"Generated when a probe failure is detected when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 probeFailure(0) subject to the value of
                 nqaAdminParaTrapProbeFailureFilter.  The object
                 nqaAdminParaTrapProbeFailureFilter can be used to specify the
                 number of successive probe failures that are required
                 before this notification can be generated.(Only for Jitter)"                �"Generated when a Jitter test is determined to have failed
                 when the corresponding nqaAdminParaTrapGeneration object is
                 set to testFailure(1).  In this instance
                 nqaAdminParaTrapTestFailureFilter should specify the number of
                 probes in a test required to have failed in order to
                 consider the test as failed.(Only for Jitter)"                 �"Generated at the completion of a Jitter test when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 testCompletion(2). (Only for Jitter)"                �"Generated when a probe failure is detected when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 probeFailure(0) subject to the value of
                 nqaAdminParaTrapProbeFailureFilter.  The object
                 nqaAdminParaTrapProbeFailureFilter can be used to specify the
                 number of successive probe failures that are required
                 before this notification can be generated.(Only for FTP)"                �"Generated when a FTP test is determined to have failed
                 when the corresponding nqaAdminParaTrapGeneration object is
                 set to testFailure(1).  In this instance
                 nqaAdminParaTrapTestFailureFilter should specify the number of
                 probes in a test required to have failed in order to
                 consider the test as failed.(Only for FTP)"                 �"Generated at the completion of a FTP test when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 testCompletion(2). (Only for FTP)"                 �"If the time of executing tests exceeds the nqaAdminCtrlThreshold1 or nqaAdminCtrlThreshold2,
                 the system sends trap information.(Only for FTP)"                 �"If the time of executing tests exceeds the nqaAdminCtrlThreshold1, 
                  the system sends trap information. (Only for jitter)"                 �"If the time of executing tests exceeds the nqaAdminCtrlThreshold2 
                  the system sends trap information. (Only for jitter)"                 �"If the time of executing tests exceeds the nqaAdminCtrlThreshold3 
                  the system sends trap information. (Only for jitter)"                 T"If negotiation between client and server failed,the system sends trap information."                 ^"Sending trap messages when the value of the monitored object exceeds nqaAlarmUpperThreshold."                 _"Sending trap messages when the value of the monitored object is under nqaAlarmLowerThreshold."                 Q"Sending trap messages when saving a test result to the FTP server is completed."                 �"Generated when a PPPoE test is determined to have failed
                 when the corresponding nqaAdminParaTrapGeneration object is
                 set to testFailure(1). (Only for PPPoE))"                 �"Generated at the completion of a PPPoE test when the
                 corresponding nqaAdminParaTrapGeneration object is set to
                 testCompletion(2). (Only for PPPoE)"                         "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 f"The notification which are required to be supported by
                implementations of this MIB."                     "Description."                 "Description."                 "Description."                     "Description."                   Q"A table which contains the rolling accumulated history of the Jitter operation."                       �"A table which contains the rolling accumulated history of the Jitter operation.
               This entry is created only if the nqaAdminCtrlType is jitterAppl."                       8"The third index of jitter collection statistics table."                       ;"The number of the tests that have completed successfully."                       D"The number of tests that violate RTD (Round Trip Delay) threshold."                       \"The number of tests that violate OWD (One Way Delay) threshold from source to destination."                       \"The number of tests that violate OWD (One Way Delay) threshold from destination to source."                       ="The number of RTTs that are successfully measured by tests."                       1"The sum of RTTs that are successfully measured."                       Y"The sum of squares of RTTs that are successfully measured by tests (low order 32 bits)."                       Z"The sum of squares of RTTs that are successfully measured by tests (high order 32 bits)."                       ?"The minimum of RTTs that were successfully measured by tests."                       ?"The maximum of RTTs that were successfully measured by tests."                       Y"The minimum of absolute value of all positive jitter values from source to destination."                       Y"The maximum of absolute value of all positive jitter values from source to destination."                       F"The number of all positive jitter values from source to destination."                       U"The sum of absolute value of all positive jitter values from source to destination."                       �"The sum of squares of absolute value of all positive jitter values 
                 from source to destination (low order 32 bits)."                       �"The sum of squares of absolute value of all positive jitter values 
                 from source to destination (high order 32 bits)."                       l"The minimum of absolute value of all negative jitter values from 
                 source to destination."                       l"The maximum of absolute value of all negative jitter values from 
                 source to destination."                       F"The number of all negative jitter values from source to destination."                       h"The sum of absolute value of all negative jitter values from source 
                 to destination."                       �"The sum of squares of absolute value of all negative values from source 
                 to destination (low order 32 bits)."                       �"The sum of squares of absolute value of all negative values from source 
                 to destination (high order 32 bits)."                       l"The minimum of absolute value of all positive jitter values from 
                 destination to source."                       l"The maximum of absolute value of all positive jitter values from 
                 destination to source."                       F"The number of all positive jitter values from destination to source."                       h"The sum of absolute value of all positive jitter values from 
                 destination to source."                       �"The sum of squares of absolute value of all positive jitter 
                 values from destination to source (low order 32 bits)."                       �"The sum of squares of absolute value of all positive jitter 
                 values from destination to source (high order 32 bits)."                       l"The minimum of absolute value of all negative jitter values 
                 from destination to source."                       l"The maximum of absolute value of all negative jitter values 
                 from destination to source."                       Y"The number of all negative jitter values from destination 
                 to source."                       h"The sum of absolute value of all negative jitter values 
                 from destination to source."                       �"The sum of squares of absolute value of all negative values 
                 from destination to source (low order 32 bits)."                       �"The sum of squares of absolute value of all negative values 
                 from destination to source (high order 32 bits)."                       D"The maximum of all OWD (One Way Delay) from source to destination."                       D"The maximum of all OWD (One Way Delay) from destination to source."                       >"The number of OWDs that were successfully measured by tests."                       i"The sum of OWDs that were successfully measured by tests from 
                 source to destination."                       i"The sum of OWDs that were successfully measured by tests from 
                 destination to source."                       B"The number of packets lost when sent from source to destination."                       B"The number of packets lost when sent from destination to source."                       H"The number of packets lost for which we can't determine the direction."                       0"The number of packets arrived out of sequence."                       @"The ratio of the packets lost to all packets sent in the test."                       ,"The number of errors occurred in the test."                       }"The number of occasions when a test couldn't be initialized because 
                 the previous test has not completed."                       0"The number of responses arrived over the time."                       L"The number of responses from echo-server for the packets sent by the test."                       )"The number of packets sent in the test."                       :"The number of packets that were sent failed in the test."                       ?"The average of RTTs that were successfully measured by tests."                       H"The average of jitter values that were successfully measured by tests."                       v"The average of jitter values from source to destination that were 
                 successfully measured by tests."                       v"The average of jitter values from destination to source that were 
                 successfully measured by tests."                        "Jitter (RFC1889) at responder."                       "Jitter (RFC1889) at sender."                       D"The minimum of all OWD (One Way Delay) from source to destination."                       D"The minimum of all OWD (One Way Delay) from destination to source."                       D"The average of all OWD (One Way Delay) from source to destination."                       D"The average of all OWD (One Way Delay) from destination to source."                       3"The number of all the packets have been rewrited."                       2"The ratio of all the packets have been rewrited."                       5"The number of all the packets have been disordered."                       4"The ratio of all the packets have been disordered."                       E"The number of all the packets whose fragments have been disordered."                       D"The ratio of all the packets whose fragments have been disordered."                           "Maximum number of alarms."                       3"Maximum number of events that alarms can trigger."                       "A list of alarm entries."                       L"A list of parameters that set up a periodic checking for alarm conditions."                       1"Uniquely identifies a row in the nqaAlarmTable."                       4"The type of the particular variable to be sampled."                       �"delta(1): relative value
  absolute(2): absolute value
  Relative value: indicates the relative value to the last sampling.  
  Currently, only absolute(2) is supported."                       \"The actual value of the monitored object is compared with the upper limit and lower limit."                      "The alarm that may be sent when this entry is first
 set to valid.  If the first sample after this entry
 becomes valid is greater than or equal to the
 risingThreshold and alarmStartupAlarm is equal to
 risingAlarm(1) or risingOrFallingAlarm(3), then a single
 rising alarm will be generated.  If the first sample
 after this entry becomes valid is less than or equal
 to the fallingThreshold and alarmStartupAlarm is equal
 to fallingAlarm(2) or risingOrFallingAlarm(3), then a
 single falling alarm will be generated."                       #"Set the upper limit of the alarm."                       #"Set the lower limit of the alarm."                       K"Index of the event triggered when the node value exceeds the upper limit."                       L"Index of the event triggered when the node value is under the lower limit."                       "Alarm Description."                       "The status of the alarm row."                       #"A list of events to be generated."                       ^"A set of parameters that describe an event to be generated when certain conditions are met. "                       1"Uniquely identifies a row in the nqaEventTable."                      �"Event type, that is, behaviors for processing events:
                                  none(1): no behavior
                                  log(2): keeping logs
                                  trap(3): sending trap messages
                                  logandtrap(4): keeping logs and sending trap messages
                                  linkage(5): start the linkaged test-instance."                       "Event description."                       ,"Administrator name of event test instance."                       '"Operation tag of event test instance."                       "The status of the event row."                           �"Identifies whether saving test results to the FTP server through FTP is enabled.
enable(1)
disable(2)
By default, the value is disable(2)."                       G"Set the IP address of the FTP server to which test results are saved."                       V"Set the name of the VRF instance for the FTP server to which test results are saved."                       F"Set the user name of the FTP server to which test results are saved."                       J"Set the password used when the test results are saved to the FTP server."                       C"Set the file name of used by the FTP server to save test results."                       �"The value of this object identifies the number of NQA test results that can be saved in a file created on the FTP server. The default value is 100000."                     -- DEFVAL { 100000 }         
 �"The value of this object identifies the duration that NQA test results can be saved in a file created on the FTP server. The default duration is 60 minutes."                     -- DEFVAL { 60}         
 �"Set whether to send trap messages when saving test results to the FTP server is completed.
                        By default, the value is disable(2)."                       O"Set the name of the file used to save the last test record to the FTP server."                                                      