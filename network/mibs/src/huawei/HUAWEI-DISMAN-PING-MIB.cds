5-- =================================================================
-- Copyright (C) 2003 by HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: Huawei PING extend MIB File(extended from DISMAN-PING-MIB RFC2925) 
-- Reference:   
-- Version:     V1.2
-- History:
--              Lv zhenfeng, 2003.08, Initial Version
--              Gao Long, 2004-12-16, Added 5 field in hwPingJitterStatsTable
--              Pei Gangqiang, 2005-03-16, added the hwpingUdpServerVPNInstance
-- =================================================================
  "Denotes a generic Internet address.
        
             An InetAddress value is always interpreted within the
             context of an InetAddressType value. The InetAddressType
             object which defines the context must be registered
             immediately before the object which uses the InetAddress
             textual convention. In other words, the object identifiers
             for the InetAddressType object and the InetAddress object
             MUST have the same length and the last sub-identifier of
             the InetAddressType object MUST be 1 less than the last
             sub-identifier of the InetAddress object.
        
             When this textual convention is used as the syntax of an
             index object, there may be issues with the limit of 128
             sub-identifiers specified in SMIv2, STD 58. In this case,
             the OBJECT-TYPE declaration MUST include a 'SIZE' clause
             to limit the number of potential instance sub-identifiers."                                                �"This private mib file includes the test information of the device.
            It is supplementary for DISMAN-PING-MIB(rfc2925). By setting more 
            parameters you can finish more types test such as tcp, udp, dlsw, 
            dhcp, ftp, http and jitter .
            This mib contains 5 tables:
                hwPingCtlTable,
                hwpingResultsTable,
                hwPingJitterStatsTable,
                hwPingTcpServerTable,
                hwPingUdpServerTable,
            and 3 nodes:
                hwPingMIBVersion,
                hwPingAgentEnable,
                hwPingServerEnable.
            "l"   R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com 
            "                   �"Huawei PING MIB version string.
            The format will be:
            'Version.Release.Patch: Textual-Description'
            For example:  '1.0.0: Initial Ping MIB'"                       �"Defines the ping Control Extend Table for providing, via SNMP,
            the capability of performing ping operations at
            a remote host.  "                       x"Defines an entry in the hwpingCtlTable. The operation of this 
            table is same as that of pingResultsTable."                       �"This object represents the target's port number. This
            object is applicable to udpEcho, tcpConnect and jitter probes."                       �"This object represents the source's port number. If this 
            object is not specified, the application will get a 
            port allocated by the system. This object is applicable 
            to all probes except dns, dlsw."                       q"Specifies the value to store in the TTL Field in the IP packet used to
            encapsulate the ping probe."                       �"This value represents the inter-packet delay between packets
            and is in milliseconds. This value is currently used for 
            Jitter probe. This object is applicable to jitter probe only."                       �"This value represents the number of packets that need to be 
            transmitted. This value is currently used for Jitter probe. 
            This object is applicable to jitter probe only."                       ""Http operation type:get or post."                       �"Http operation string.for example,if you choose get operation type,the string will be
            url , home page and http version."                       "Ftp operation type:get or put"                       "Ftp username"                       "Ftp password."                       �"Ftp operation string.If the ftp operation type is get,the string will be file name 
            that you will get from ftp server."                       �"This field is used to specify the VPN name in which the PING operation will be userd.
            The agent will use the field to identify the VPN routing Table for this operation."                      2"Defines the Ping Results Extend Table for providing
            the capability of performing ping operations at
            a remote host.  The results of these operations are
            stored in the hwpingResultsTable . The operation of this 
            table is same as that of pingResultsTable."                       B"The operation of this table is same as that of pingResultsTable."                      {"When the pingCtlType is 'icmpecho' , this 
            object represents the number of times that the target or 
            hop along the path to a target became disconnected.  For
            all other values of pingCtlType, this object will
            remain zero.
            
            For connectionless protocols this has no meaning,
            and will consequently remain 0.  
            Since this error does not indicate any information about
            the failure of an PING operation, no response time 
            information for this instance will be recorded in the 
            appropriate objects."                      ,"The number of occasions when a PING operation was not
            completed before a timeout occurred, i.e.
            pingCtlTimeOut was exceeded.
            
            Since the PING operation was never completed, the 
            completion time of these operations are not accumulated."                      A"The number of occasions when a PING operation could not
            be initiated because a previous PING operation has not 
            been completed.
            
            When the pingCtlType is 'pathEcho' this can occur for
            both connection oriented protocols and connectionless
            protocols.
            
            When the initiation of a new operation cannot be started,
            this object will be incremented and the operation will be
            omitted.  (The next operation will start at the next 
            Frequency).  "                       "When the pingCtlType is 'icmpecho'  this is
            the number of occasions when a PING operation could not be
            initiated because the connection to the target has not 
            been established.  For all other pingCtlTypes this
            object will remain zero."                       �"The number of occasions when a PING operation could not 
            be initiated because some necessary internal resource 
            (for example memory) was not available,or the operation 
            completion could not be recognized."                      +"When the pingCtlType is 'icmpecho' this is 
            the number of PING operation completions received with 
            an unexpected sequence identifier.  For all other values
            of pingCtlType this object will remain zero.
            
            When this has occurred some of the possible reasons may
            be:  
              - a duplicate packet was received
              - a response was received after it had timed-out
              - a corrupted packet was received and was not detected
            
            "                       !"The number of some other errors"                      " The maximal delay from source device to destination device. 
            Currently this value is only used for JITTER test, and this 
            value must be 0 in other type test. In JITTER test, if 
            destination system time is not valid, the SD delay may be set 0."                      " The maximal delay from destination device to source device. 
            Currently this value is only used for JITTER test, and this 
            value is 0 in other type test. In JITTER test, if destination
            system time is not valid, the DS delay may be set 0."                       �"The value of this object reflects the drop rate of HWPing test.
             For example, this value is 30 that means source device only 
             had received 70% packets of total sent packets."                       M"A table which contains the status of latest Jitter 
            operation."                       �"A table which contains the status of latest Jitter 
            operation.
            
            This entry is created only if the pingCtlType 
            is hwpingjitter. "                       8"The number of Jitter's that are successfully measured."                       f"The minimum of all positive jitter values from packets sent
            from source to destination."                       f"The maximum of all positive jitter values from packets sent
            from source to destination."                       l"The sum of number of all positive jitter values from packets
            sent from source to destination."                       k"The sum of RTT's of all positive jitter values from packets
            sent from source to destination."                       u"The sum of square of RTT's of all positive jitter values from
            packets sent from source to destination."                       z"The minimum of absolute values of all negative jitter values 
            from packets sent from source to destination."                       z"The maximum of absolute values of all negative jitter values 
            from packets sent from source to destination."                       l"The sum of number of all negative jitter values from packets
            sent from source to destination."                       b"The sum of all negative jitter values from packets
            sent from source to destination."                       u"The sum of square of RTT's of all negative jitter values from
            packets sent from source to destination."                       f"The minimum of all positive jitter values from packets sent
            from destination to source."                       f"The maximum of all positive jitter values from packets sent
            from destination to source."                       l"The sum of number of all positive jitter values from packets
            sent from destination to source."                       k"The sum of RTT's of all positive jitter values from packets
            sent from destination to source."                       v"The sum of squares of RTT's of all positive jitter values from
            packets sent from destination to source."                       f"The minimum of all negative jitter values from packets sent
            from destination to source."                       f"The maximum of all negative jitter values from packets sent
            from destination to source."                       l"The sum of number of all negative jitter values from packets
            sent from destination to source."                       k"The sum of RTT's of all negative jitter values from packets
            sent from destination to source."                       v"The sum of squares of RTT's of all negative jitter values from
            packets sent from destination to source."                       B"The number of packets lost when sent from source to destination."                       B"The number of packets lost when sent from destination to source."                       n"The average of RTT's of all positive jitter values from packets
           sent from source to destination."                       e"The average of all negative jitter values from packets
           sent from source to destination."                       n"The average of RTT's of all positive jitter values from packets
           sent from destination to source."                       n"The average of RTT's of all negative jitter values from packets
           sent from destination to source."                       <" The number of packets which lost but not knowing result ."                       #"Enable Huawei PING agent function"                       a"A table which contains the status of hwping tcp server 
            configuration information."                      '"A table which contains the status of hwping tcp server 
            configuration information.
            
            This entry is includeed not only the tcp server ip address 
            but also the tcp server udp port. If used for VPN it is also 
            included the VPN name."                       �"This object represents the tcp server's ip address. 
            This object and hwpingTcpServerPort is hwPingTcpServerTable
            index."                       �"This object represents the tcp server's port number. 
            This object and hwPingTcpServerIpAddress is hwPingTcpServerTable
            index."                       �"This field is used to specify the VPN name in which the PING operation will be userd.
            The TCP server will use the field to identify the VPN routing Table for this operation."                      "This object allows entries to be created and deleted
            in the hwPingTcpServerTable. 
            
            A value MUST be specified for hwPingTcpServerIpAddress
            and hwPingTcpServerPort prior to a transition to 
            active(1) state being accepted." X"See definition of RowStatus in RFC 2579, 'Textual
            Conventions for SMIv2.'"                     a"A table which contains the status of hwping udp server 
            configuration information."                      %"A table which contains the status of hwping udp server 
            configuration information.
           
            This entry is includeed not only the udp server ip address 
            but also the udp server udp port.If used for VPN it is also 
            included the VPN name."                       �"This object represents the udp server's ip address. 
            This object and hwpingUdpServerPort is hwPingUdpServerEntry
            index."                       �"This object represents the udp server's port number. 
            This object and hwPingUdpServerIpAddress is hwPingUdpServerEntry
            index."                       �"This field is used to specify the VPN name in which the PING operation will be userd.
            The UDP server will use the field to identify the VPN routing Table for this operation."                      "This object allows entries to be created and deleted
            in the hwPingUdpServerTable. 
            
            A value MUST be specified for hwPingUdpServerIpAddress
            and hwPingUdpServerPort prior to a transition to 
            active(1) state being accepted." X"See definition of RowStatus in RFC 2579, 'Textual
            Conventions for SMIv2.'"                     $"Enable Huawei PING server function"                           �"Indicates that an implementation is using the UDP based echo server. 
            Notes: The hwpingCtlTargetPort and hwpingCtlSourcePort need to be set."               �"Indicates that an implementation is attempting to
            connect to a TCP port in order to calculate a round
            trip time.
            Notes: The hwpingCtlTargetPort and hwpingCtlSourcePort need to be set."               �"Indicates that an implementation is using udp for packet transfers. 
            'jitter' will cause the PING application to perform delay variance analysis."              '"Indicates that an implementation is using udp for name resolution, 
            tcp connect and tcp data transfer mechanisms for HTTP data download 
            from a particular HTTP Server.
            it cause the PING application to perform a download of the object specified in the URL"               �"Indicates that an implementation is using tcp for sending keepalives. 
            'dlsw' will cause the PING application to perform a keepalive operation 
            to measure the response time of a DLSw peer."               �"Indicates that an implementation is using udp for sending dhcp requests. 
             'dhcp' will cause the PING application
             to perform an IP Address lease request/teardown operation."               M"Indicates that an implementation is using tcp for connect & data transfer. "                                                          