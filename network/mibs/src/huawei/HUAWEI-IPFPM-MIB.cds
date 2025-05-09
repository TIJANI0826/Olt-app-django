-- ==================================================================
-- Copyright (C) 2017 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI Private IPFPM MIB
-- Reference:
-- Version: V1.35
-- History:
--          Wang XuanXuan,2012-08-13,Create 
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types be imported
-- 
-- ==================================================================
   2"This TC describes the TLP point in loss measure."               /"This TC describes the role of TLP in the ACH."               U"This TC describes the optional bit of an IP packet for 
        IPFPM measurement."               3"This TC describes the TLP point in delay measure."               N"This TC describes the role of flow TLP in the measurement 
        network."               �"This TC describes the type of VPN.
         The value 'none' represents the public network, the value 'manage-vpn' 
	 represents the net-mange VPN. and the value 'vpn-instance' represents 
	 the normal VPN instance."               V"This TC describes that the status of some function is enabled or 
        disabled."               B"This TC describes the type of delay measure of an test instance."               ""This TC describes the TLP point."               5"This TC describes the type of IPFPM authentication."               9"This TC describes the type of flow in an test instance."               -"This TC describes the type of multicastsrc."               %"This TC describes the TLP midpoint."               9"This TC describes the type of flow in an test instance."               T"This TC describes the type of on-demand loss or delay measure of an test instance."               1"This TC describes the type of an test instance."               ["This TC describes the type of ClockSoure.
         The value 'ntp' represents using ntp."               :"This TC describes the interval type of an test instance."               k"This TC describes whether the statistics data is invalid or not 
        and the reason of invalidation."                                                �"This MIB describes objects to manage IPFPM (IP Flow 
            Performance Measurement). IPFPM provides a method for IP 
            flow performance measurement, in which MCP (Measurement 
            Control Point),DCP (Data Collecting Point) and TLP 
            (Target Logic Point) are three kinds of roles working 
            together. TLP is responsible for implementing measurement 
            and generating the measurement data. DCP manages TLPs and 
            get measurement data from them to report to MCP. MCP 
            works as the control role to collect and calculate the 
            measurement data that DCP reported." �"Huawei Industrial Base
			  Bantian, Longgang
			   Shenzhen 518129
			   People's Republic of China
			   Website: http://www.huawei.com
			   Email: support@huawei.com
			" "201708171704Z" "201707211530Z" "201707211451Z" "201608191122Z" "201607262022Z" "201605172022Z" "201603292003Z" "201602251100Z" "201510211700Z" "201510131700Z" "201508142059Z" "201505071555Z" "201507091658Z" "201505061255Z" "201505051555Z" "201504161527Z" "201502061143Z" "201412291626Z" "201406261000Z" "201402121000Z" "201312171000Z" "201310252000Z" "201309252000Z" "201309232000Z" "201308182038Z" "201308142038Z" "201308051504Z" "201307041612Z" "201306221450Z" "201306041403Z" "201304271730Z" "201303271011Z" "201303261011Z" "201303131150Z" "201302181150Z" e"revision 1.35, modify the description of hwIpfpmMultiOneDelayRecovery, hwIpfpmMultiTwoDelayRecovery" O"revision 1.34, add hwIpfpmDcpInstTlpIndexTable, hwIpfpmDcpInstTlpNHIndexTable" �"revision 1.33, modify the description of hwIpfpmMcpInstTlpMaxNum, hwIpfpmMcpAchMaxNum, hwIpfpmDcpMcpVpnType, hwIpfpmPeriodSource, hwIpfpmMcpInstDesc, hwIpfpmDcpInstTlpBackwardFlowLabelFlag" k"revision 1.32, add hwIpfpmDcpFlowVxlan and hwIpfpmDcpFlowVni,hwIpfpmMcpInstTlpMaxNum, hwIpfpmMcpAchMaxNum" Y"revision 1.31, modify hwIpfpmDcpInstTlpLspLabel2 and hwIpfpmDcpInstTlpBackwardLspLabel2" >"revision 1.30, modify the description of hwIpfpmDcpNexthopIp" e"revision 1.29, modify hwIpfpmMcpAuthKey, hwIpfpmDcpAuthKey, hwIpfpmDcpInstAuthKey OBJECT-TYPE range" -"revision 1.28, add hwIpfpmDcpInstTlpNHTable" #"revision 1.27, add for multiDelay" >"revision 1.26, modify the spelling mistake of the word label" "revision 1.25, modify the DEFVAL of hwIpfpmMcpId ,hwIpfpmDcpFlowDstAddr, hwIpfpmDcpFlowSrcAddr,hwIpfpmDcpId,hwIpfpmDcpId node" @"revision 1.24, modify the type of hwIpfpmDcpTlpExtIfIndex node" E"revision 1.23, modify the value of hwIpfpmDcpInstGroupId node range" K"revision 1.22, add hwIpfpmDcpTlpQueryExtTable and  hwIpfpmDcpTlpExtTable " +"revision 1.21, add hwIpfpmDcpInstGroupId " Q"revision 1.20, add enum bidirectional (3) value for hwIpfpmMcpFlowType mib node" #"revision 1.19, modify table index" 7"revision 1.18, modify hwIpfpmDcpInstTlpTable for atom" ="revision 1.17, add new VB in hwIpfpmDcpInstTlpTable for SFP" q"revision 1.16, modify size list of hwIpfpmDcpSourceInstId, hwIpfpmDcpInstTlpVpnLabel, hwIpfpmDcpInstTlpLspLabel" y"revision 1.15, add hwIpfpmTlpExceed, hwIpfpmTlpRecovery, hwIpfpmTlpExceedBoardId, hwIpfpmTlpNumber, hwIpfpmTlpThreshold" 6"revision 1.14, add description in the threshold trap" #"revision 1.13, support flow-label" s"revision 1.12, add hwIpfpmDcpMcpVpnName, hwIpfpmDcpMcpVpnType, hwIpfpmDcpInstMcpVpnName, hwIpfpmDcpInstMcpVpnType" +"revision 1.11, add hwIpfpmDcpFlowConflict" "revision 1.10" "revision 1.09" "revision 1.08" "revision 1.07" "revision 1.06" "revision 1.05" "revision 1.04" "revision 1.03" 
"revision" "init"       -- 
                   u"This object indicates that the MCP (Measurement Control 
        Point) function is 'enabled(1)' or 'disabled(2)'."                       �"The value of this object indicates the identification of MCP.
         The value 0.0.0.0 represents that it is not configured."                       Z"The value of this object indicates the port that MCP listens 
        on as the server."                       5"The table contains attribute of MCP authenticaiton."                       1"IPFPM authenticaiton configuration information."                       +"Identification of the authentication key."                       �"Authentication type of the key. The enumeration 
        'hmac-sha256(1)' represents the password is sent after being 
        encrypted through hmac-sha256. By default, authentication is not configured."                       3"The password used as an IPFPM authentication key."                       ="Used for controlling the creation and deletion of this row."                       5"The table contains attribute of MCP test instances."                       O"IPFPM configuration information for a particular MCP test 
        instance."                       &"Identification of the test instance."                       �"This object indicates the IP FPM instance description on an MCP.
         if the string length is 0, it represents that it is not configured."                       �"This value divided by 1000000 is the upper threshold of loss ratio(%) for alarm.
         The value 0 represents that it is not configured, and the alarm is not enabled."                       �"This value divided by 1000000 is the lower threshold of loss ratio(%) for alarm recovery.
         The value 0 represents that it is not configured, and the alarm is not enabled."                       �"Upper threshold of one-way delay(microsecond) for alarm.
         The value 0 represents that it is not configured, and the alarm is not enabled."                       �"Lower threshold of one-way delay(microsecond) for alarm recovery.
         The value 0 represents that it is not configured, and the alarm is not enabled."                       �"Upper threshold of two-way delay(microsecond) for alarm.
         The value 0 represents that it is not configured, and the alarm is not enabled."                       �"Lower threshold of two-way delay(microsecond) for alarm recovery.
         The value 0 represents that it is not configured, and the alarm is not enabled."                       `"This object indicates that the MCP instance measure function is 'enabled(1)' or 'disabled(2)'."                       ="Used for controlling the creation and deletion of this row."                      "This object indicates that the MCP instance type. 
        'unicast(0)' means unicast measurement instance.
        'multicastsrc(1)' means multicast measurement source instance.
        'multicastrecv(2)' means multicast measurement receiver instance."                       �"This object indicates the source instance of multicastrecv. 
         This object is only valid when hwIpfpmMcpInstType is 'multicastrecv(2)'.
         We can ingore this object value when hwIpfpmMcpInstType is not 'multicastrecv(2)'."                       H"The table describe the DCPs belonging to MCP test 
        instances."                       <"IPFPM DCPs information for a particular MCP test instance."                       ;"Identification of DCP which belongs to the test instance."                       ="Used for controlling the creation and deletion of this row."                       ["The table describe the ACHs(Atomic Closed Hop) belonging to 
        MCP test instances."                       Y"IPFPM ACHs(Atomic Closed Hop) information for a particular 
        MCP test instance."                       5"The object indicates the identification of the ACH."                       �"The object indicates the flow that the ACH monitors is 
        'forward(1)' or 'backward(2)', 'bidirectional(3)'. The value none(0) represents that it is not configured."                       ="Used for controlling the creation and deletion of this row."                       S"The table describe the TLPs(Target Logical Port) belonging to 
        MCP ACHs."                       Q"IPFPM TLPs(Target Logical Port) information for a particular 
        MCP ACH."                       _"The object indicates the TLP belongs to 'in-group(1)' or 'out-group(2)' 
        of the ACH."                       8"The object indicates the dcp which the tlp belongs to."                       5"The object indicates the identification of the TLP."                       ="Used for controlling the creation and deletion of this row."                       q"The table describes the information of multicast source instance referred by some multicast receiver instances."                       f"The information is that the multicast source instance referred by some multicast receiver instances."                       t"The object indicates the counter that the multicast source instance referred by some multicast receiver instances."                               A"This object indicates the global instance specification of MCP."                       ;"This object indicates the current instance number of MCP."                      �"This object indicates the maximum number of all instance TLP can be managed by MCP. For statistical instances of which the statistical period is 1s, the number of used instance-specific TLPs is 10 times the actual number of configured instance-specific TLPs. For statistical instances of which the statistical period is 10s or longer, the number of used instance-specific TLPs is the same as the actual number of configured instance-specific TLPs.
		-1 means unused of this number"                      �"This object indicates the total number of all ACH can be managed by MCP. For statistical instances of which the statistical period is 1s, the number of used instance-specific ACHs is 10 times the actual number of configured instance-specific ACHs. For statistical instances of which the statistical period is 10s or longer, the number of used instance-specific ACHs is the same as the actual number of configured instance-specific ACHs.
		-1 means unused of this number"                       H"The tables contains the index of MCP 
        test instances and ACH."                       ."Index of a particular test instance and ACH."                       1"Sequence of a particular test instance and ACH."                       N"The tables contains loss measure statistics of MCP test 
        instances."                       R"Loss measure statistics of an interval for a particular 
        test instance."                       %"High 32-bit of the hwIpfpmMcpSeqNo."                       $"Low 32-bit of the hwIpfpmMcpSeqNo."                       y"The error code to indicate the validity and the invalidation 
        reason of an interval's loss measure statistics."                       A"The absolute value of loss packets of forward flow measurement."                       s"The sign of loss packets of forward flow measurement.
        1 means positive number, -1 means negative number."                       ?"The absolute value of loss bytes of forward flow measurement."                       q"The sign of loss bytes of forward flow measurement.
        1 means positive number, -1 means negative number."                       *"The packets of forward flow measurement."                       ("The bytes of forward flow measurement."                       Q"This value divided by 1000000 is the loss ratio(%) of forward flow measurement."                       B"The absolute value of loss packets of backward flow measurement."                       y"The sign of loss loss packets of backward flow measurement.
        1 means positive number, -1 means negative number."                       @"The absolute value of loss bytes of backward flow measurement."                       r"The sign of loss bytes of backward flow measurement.
        1 means positive number, -1 means negative number."                       +"The packets of backward flow measurement."                       )"The bytes of backward flow measurement."                       R"This value divided by 1000000 is the loss ratio(%) of backward flow measurement."                       E"This value indicate multicastsrc type is 'master(0)' or 'slave(1)'."                       C"This value indicate whether multicastsrc switched in this period."                       W"The tables contains one-way delay measure statistics of MCP 
        test instances."                       ["One-way delay measure statistics of an interval for a 
        particular test instance."                       �"The error code to indicate the validity and the invalidation 
        reason of an interval's one-way delay measure statistics."                       1"The one-way delay(microsecond) of forward flow."                       ;"The one-way delay variation(microsecond) of forward flow."                       2"The one-way delay(microsecond) of backward flow."                       <"The one-way delay variation(microsecond) of backward flow."                       E"This value indicate multicastsrc type is 'master(0)' or 'slave(1)'."                       W"The tables contains two-way delay measure statistics of MCP 
        test instances."                       ["Two-way delay measure statistics of an interval for a 
        particular test instance."                       �"The error code to indicate the validity and the invalidation 
        reason of an interval's two-way delay measure statistics."                       3"The two-way delay(microsecond) of monitored flow."                       ="The two-way delay variation(microsecond) of monitored flow."                       C"The forward flow delay(microsecond) in two-way delay measurement."                       G"The forward flow variation(microsecond) in two-way delay measurement."                       D"The backward flow delay(microsecond) in two-way delay measurement."                       H"The backward flow variation(microsecond) in two-way delay measurement."                       e"The tables contains multi-in-point one-way delay measure statistics of MCP
        test instances."                       i"Multi-in-point one-way delay measure statistics of an interval for a
        particular test instance."                       ."The flow type for multi-in-point one-delay. "                       ."The multi-in-point one-way delay source DCP."                       ."The multi-in-point one-way delay source TLP."                       3"The multi-in-point one-way delay destination DCP."                       3"The multi-in-point one-way delay destination TLP."                       �"The error code to indicate the validity and the invalidation
        reason of an interval's multi-in-point one-way delay measure statistics."                       0"The multi-in-point one-way delay(microsecond)."                       :"The multi-in-point one-way delay variation(microsecond)."                       e"The tables contains multi-in-point two-way delay measure statistics of MCP
        test instances."                       i"Multi-in-point two-way delay measure statistics of an interval for a
        particular test instance."                       >"The multi-in-point two-way delay source DCP of forward flow."                       >"The multi-in-point two-way delay source TLP of forward flow."                       C"The multi-in-point two-way delay destination DCP of forward flow."                       C"The multi-in-point two-way delay destination TLP of forward flow."                       ?"The multi-in-point two-way delay source DCP of backward flow."                       ?"The multi-in-point two-way delay source TLP of backward flow."                       D"The multi-in-point two-way delay destination DCP of backward flow."                       D"The multi-in-point two-way delay destination TLP of backward flow."                       �"The error code to indicate the validity and the invalidation
        reason of an interval's multi-in-point two-way delay measure statistics."                       B"The multi-in-point two-way delay(microsecond) of monitored flow."                       L"The multi-in-point two-way delay variation(microsecond) of monitored flow."                       R"The forward flow delay(microsecond) in multi-in-point two-way delay measurement."                       V"The forward flow variation(microsecond) in multi-in-point two-way delay measurement."                       S"The backward flow delay(microsecond) in multi-in-point two-way delay measurement."                       W"The backward flow variation(microsecond) in multi-in-point two-way delay measurement."                                   q"This object indicates that the DCP (Data Collecting 
        Point) function is 'enabled(1)' or 'disabled(2)'."                       �"The value of this object indicates the identification of DCP.
         The value 0.0.0.0 represents that it is not configured."                      �"This string object indicates the bits of an IP packet used for color 
        measurement. the length of string is 3,first and second character range is <1-6>,
        third  character range is <0-6>.
        the three characters can not same.
        The character '0' represents none flag bit.
        The character '1' represents the bit0 of the FLAGS byte. 
        The character '2' represents the bit3 of the TOS byte. 
        The character '3' represents the bit4 of the TOS byte. 
        The character '4' represents the bit5 of the TOS byte. 
        The character '5' represents the bit6 of the TOS byte. 
        The character '6' represents the bit7 of the TOS byte.
        the first character represents loss measurement color-bit,
        the second character represents delay measurement color-bit, 
        the third character represents multicast measurement color-bit."                       �"Identification of the MCP that DCP reports measure data of 
        the test instances not specified the object 
        'hwIpfpmDcpInstMcpId' to. The value 0.0.0.0 represents that it is 
        not configured."                       �"The listening port of the MCP that DCP reports measure 
        data of the test instances not specified the object 
        'hwIpfpmDcpInstMcpPort' to. It need setting 'hwIpfpmDcpMcpId' 
        first before setting this object."                       �"The name of the VPN instance through which the DCP and the MCP communicates.
         'hwIpfpmDcpInstMcpId' should be setted first before setting this object."                       �"The type of the VPN instance. 'hwIpfpmDcpInstMcpId' should be setted first 
         before setting this object.
             Available options:
             none(0)
             manage-vpn(1)
             vpn-instance(2)"                       �"The clock source using by period.Priority should be given to the use of
         this setting in period calculation.
              Available options: 
              default(0)
              ntp(1)"                       +"The table contains authentication of DCP."                       *"IPFPM authentication information for DCP"                       +"Identification of the DCP authentication."                       �"Authentication type of the DCP. The enumeration 
        'hmac-sha256(1)' represents the password is sent after being 
        encrypted through hmac-sha256. By default, authentication is not configured."                       3"The password used as an IPFPM authentication key."                       ="Used for controlling the creation and deletion of this row."                       5"The table contains attribute of DCP test instances."                       O"IPFPM configuration information for a particular DCP test 
        instance."                       &"Identification of the test instance."                       q"Description of the test instance.
         if the string length is 0, it represents that it is not configured."                       �"Identification of the MCP that DCP reports measure data of 
        this test instance to. The value 0.0.0.0 represents that it is not 
        configured"                       �"The listening port of the MCP that DCP reports measure 
        data of this test instance to. It need setting 
        'hwIpfpmDcpInstMcpId' first before setting this object."                       �"This object indicates that interval of an test instance is
        'interval1s(1)' or 'interval10s(10)' or 'interval60s(60)'
        or 'interval600s(600)'."                       ="Used for controlling the creation and deletion of this row."                       "type of the test instance."                       ("Identification of the source instance."                       �"The name of the VPN instance through which the DCP and the MCP communicates.
         'hwIpfpmDcpInstMcpId' should be setted first before setting this object."                       k"The type of the VPN instance. 'hwIpfpmDcpInstMcpId' should be setted first 
	before setting this object."                       0"The group identification of the test instance."                       :"The table contains authentication of DCP test instances."                       P"IPFPM authentication information for a particular DCP test 
        instance."                       +"Identification of the DCP authentication."                      �"Authentication type of DCP instance authentication. The 
        enumeration 'hmac-sha256(1)' represents the password is sent after 
        being encrypted through hmac-sha256. By default, authentication is 
		not configured. If this object is not configured and object 
		'hwIpfpmDcpAuthType' is configured, then this instance uses 
		'hwIpfpmDcpInstAuthType' and 'hwIpfpmDcpInstAuthKey' 
		as its authentication."                       ?"The password used as an DCP test instance authentication key."                       ="Used for controlling the creation and deletion of this row."                       :"The table contains flow attribute of DCP test instances."                       T"IPFPM configuration information for a particular DCP test 
        instance flow."                       g"This object indicates that the flow is 'forward(1)' or 
        'backward(2)' or 'bidirectional(3)'."                      T"This object indicates the protocol specified as the flow feature.
        'hwIpfpmDcpFlowSrcPortBgn', 'hwIpfpmDcpFlowSrcPortEnd', 
        'hwIpfpmDcpFlowDstPortBgn', and 'hwIpfpmDcpFlowDstPortEnd' can be 
        configured only when the value is 6(tcp) or 17(udp). The value 0 
        represents that this object is not configured."                       �"This object indicates the DSCP specified as the flow 
        feature. The value -1 represents that this object is 
        not configured."                       �"This object indicates the source ip address specified as the 
        flow feature. The value 0.0.0.0 represents that this object is not configured."                       Z"This object indicates the source ip mask length specified 
        as the flow feature."                       �"This object indicates the destination ip address specified 
        as the flow feature. The value 0.0.0.0 represents that this object 
        is not configured."                       _"This object indicates the destination ip mask length 
        specified as the flow feature."                      "This object indicates the begin value of source port 
        specified as the flow feature. It need configure
        'hwIpfpmDcpFlowProtocol' first before configure this 
        object. The value 0 represents that this object is not
        configured."                      "This object indicates the end value of source port 
        specified as the flow feature. It need configure
        'hwIpfpmDcpFlowProtocol' first before configure this 
        object. The value 0 represents that this object is 
        not configured."                       "This object indicates the begin value of destination port 
        specified as the flow feature. It need configure
        'hwIpfpmDcpFlowProtocol' first before configure this object.
        The value 0 represents that this object is not configured."                       �"This object indicates the end value of destination port 
        specified as the flow feature. It need configure
        'hwIpfpmDcpFlowProtocol' first before configure this object.
        The value 0 represents that this object is not configured."                       ="Used for controlling the creation and deletion of this row."                       �"This object indicates the outer source ip address specified as the 
        flow feature. The value 0 represents that this object is not configured."                       �"This object indicates the outer destination ip address specified as the 
        flow feature. The value 0 represents that this object is not configured."                       �"This object indicates the value of forward gtp teid
        specified as the flow feature. The value 0 represents that this object is not configured."                       �"This object indicates the value of backward gtp teid
        specified as the flow feature. The value 0 represents that this object is not configured."                       l"The Vxlan of the flow feature. The value 
        false(2) represents that this object is not configured."                       �"This object indicates the value of vni
        specified as the flow feature. The value 0 represents that this object is not configured."                       '"The table contains attribute of TLPs."                       7"IPFPM configuration information for a particular TLP."                       Y"The object indicates the TLP position 'in-point(1)' or 'out-point(2) or 'mid-point(3)'."                      v"The object indicates the flow type of the instance TLP is 
        'forward(1)' or 'backward(2)' or 'bidirectional(3)' or 
        'forwardandbackward(4)'. Only 'forward(1)' and 'backward(2)'
        can be configured when 'hwIpfpmDcpInstTlpRole' is 
        'mid-point(3)'. The value 'null(0)' represents that this 
        flow is not configured under the instance."                       i"The object indicates the TLP is 'ingress(1)' or 'egress(2)' 
        of the flow of DCP test instance."                       {"The VPN label of of the flow that the TLP measured. The 
        value -1 represents that this object is not configured."                       �"The control word flag of the flow that the TLP measured. The value 
        false(2) represents that this object is not configured."                       x"The LSP label of the flow that the TLP measured. The value 
        -1 represents that this object is not configured."                       "The L2VPN flag of the flow that the TLP measured. The value 
        false(2) represents that this object is not configured."                       ="The tpid for vlan. The value range is from '600' to 'FFFF'."                       ="Used for controlling the creation and deletion of this row."                       I"The object indicates the type of multicastsrc 'master(0)'or 'slave(1)'."                       ;"This value indicate whether the flow-label is configured."                       �"The LSP label of the flow that the TLP measured. The value 
        -1 represents that this object is not configured. The value
        -2 represents that this object matches any label."                       x"The LSP label of the flow that the TLP measured. The value 
        -1 represents that this object is not configured."                       {"The outer-vlan id of the flow that the TLP measured. The value 
        0 represents that this object is not configured."                       {"The inner-vlan id of the flow that the TLP measured. The value 
        0 represents that this object is not configured."                       {"The VPN label of of the flow that the TLP measured. The 
        value -1 represents that this object is not configured."                       �"The control word flag of the flow that the TLP measured. The value 
    	false(2) represents that this object is not configured."                       u"The LSP label of the flow that the TLP measured. The value 
    	-1 represents that this object is not configured."                       �"The LSP label of the flow that the TLP measured. The value 
        -1 represents that this object is not configured. The value
        -2 represents that this object matches any label."                       x"The LSP label of the flow that the TLP measured. The value 
        -1 represents that this object is not configured."                       |"The L2VPN flag of the flow that the TLP measured. The value 
    	false(2) represents that this object is not configured."                       �"This object indicates whether the flow label function is configured for the backward target flow. If the value is false(2), the flow label function is not configured."                       x"The outer-vlan id of the flow that the TLP measured. The value 
    	0 represents that this object is not configured."                       x"The inner-vlan id of the flow that the TLP measured. The value 
    	0 represents that this object is not configured."                       ="The tpid for vlan. The value range is from '600' to 'FFFF'."                       N"The table contains loss measure information of DCP test 
        instances."                       ]"IPFPM loss measure configuration information for a particular  
        DCP test instance."                       l"This object indicates that the on-demand loss measure 
        function is 'enabled(1)' or 'disabled(2)'."                       l"This object indicates that the continual loss measure 
        function is 'enabled(1)' or 'disabled(2)'."                      #"The time range in which the on-demand loss measure 
        function is enabled. The enumeration values include
        'timerange5m(5)', 'timerange10m(10)', 'timerange15m(15)',
        and 'timerange30m(30)'. The value 'null(0)' represents 
        that this object is not configured."                      "The type of TLP that loss measure enabled on. The 
        enumeration values include 'e2e(1)','section(2)'
         . The value 'e2e(1)' represents that this object is end-end.
          The value 'section(2)' represents that this object is mid-point."                       P"The table contains delay measure information of DCP  
        test instances."                       ^"IPFPM delay measure configuration information for a particular  
        DCP test instance."                       m"This object indicates that the on-demand delay 
        measure function is 'enabled(1)' or 'disabled(2)'."                       m"This object indicates that the continual delay 
        measure function is 'enabled(1)' or 'disabled(2)'."                       �"The type of delay measure. The enumeration values 
        include 'oneway(1)' and 'twoway(2)'. The value 
        'null(0)' represents that this object is not 
        configured."                      $"The time range in which the on-demand delay measure 
        function is enabled. The enumeration values include
        'timerange5m(5)', 'timerange10m(10)', 'timerange15m(15)',
        and 'timerange30m(30)'. The value 'null(0)' represents 
        that this object is not configured."                      "The type of TLP that  delay measure enabled on. The 
        enumeration values include 'e2e(1)','section(2)'
         . The value 'e2e(1)' represents that this object is end-end.
          The value 'section(2)' represents that this object is mid-point."                       �"The ingress TLP of the flow for one-way delay measure 
        or the ingress TLP of the forward flow for two-way delay 
        measure. The value 0 represents that this object is not 
        configured."                       �"The ingress TLP of the backward flow for two-way delay 
        measure. The value 0 represents that this object is 
        not configured."                       '"The table contains attribute of TLPs."                       D"IPFPM configuration information for a particular TLP on interface."                       "Identification of TLP."                       3"The index of the port that the TLP configured on."                       ="Used for controlling the creation and deletion of this row."                       �"The VLAN ID of the TLP measured. The value 0 represents 
        ce-default-vlan. The value 65535 represents that this 
        object is not configured."                       O"The table contains the query interface ifindex and TLP ID with the interface."                       ="The TLP information which is configured with the interface."                       3"The interface index which is configured with TLP."                       2"The TLP ID which is configured on the interface."                       �"The VLAN ID of the TLP measured. The value 0 
        represents ce-default-vlan. The value 65535 
        represents that this object is not configured."                       q"The table describes the information of multicast source instance referred by some multicast receiver instances."                       f"The information is that the multicast source instance referred by some multicast receiver instances."                       t"The object indicates the counter that the multicast source instance referred by some multicast receiver instances."                       O"The table contains the query interface ifindex and TLP ID with the interface."                       ="The TLP information which is configured with the interface."                       3"The interface index which is configured with TLP."                       2"The TLP ID which is configured on the interface."                       �"The VLAN ID of the TLP measured. The value 0 
        represents ce-default-vlan. The value 65535 
        represents that this object is not configured."                       #"This object indicates the ONT ID."                       �"This object indicates the ONT port's type.
        Options: 
        1. eth (47))   -indicates ONT port's type is the eth type.
        2. invalid(-1) -indicates ONT port's type is not matched.
        "                       ("This object indicates the ONT port ID."                       '"The table contains attribute of TLPs."                       D"IPFPM configuration information for a particular TLP on interface."                       "Identification of TLP."                       3"The index of the port that the TLP configured on."                       ="Used for controlling the creation and deletion of this row."                       �"The VLAN ID of the TLP measured. The value 0 represents 
        ce-default-vlan. The value 65535 represents that this 
        object is not configured."                       h"This object indicates the ONT ID.
        The value -1 represents that this object is not configured."                       �"This object indicates the ONT port's type.
        Options: 
        1. eth (47))   -indicates ONT port's type is the eth type.
        2. invalid(-1) -indicates ONT port's type is not matched.
       DEFVAL { -1 }  .
        "                       m"This object indicates the ONT port ID.
        The value -1 represents that this object is not configured."                       T"IPFPM nexthop configuration information for a particular TLP of the test instance."                       ?"IPFPM nexthop configuration information for a particular TLP."                       D"The object indicates the nexthop information for a particular TLP."                       ="Used for controlling the creation and deletion of this row."                       @"The table contains attribute of TLPs for load balancing paths."                       K"IPFPM configuration information for a particular load balancing path TLP."                       L"The indexid of a load balancing path. The value range is from '1' to '16'."                       7"The object indicates the TLP position 'mid-point(3)'."                      {"The object indicates the flow type of the instance TLP is 
        'forward(1)' or 'backward(2)' or 'bidirectional(3)' or 
        'forwardandbackward(4)'. Only 'forward(1)' and 'backward(2)'
        can be configured when 'hwIpfpmDcpInstTlpRoleIndex' is 
        'mid-point(3)'. The value 'null(0)' represents that this 
        flow is not configured under the instance."                       i"The object indicates the TLP is 'ingress(1)' or 'egress(2)' 
        of the flow of DCP test instance."                       {"The VPN label of of the flow that the TLP measured. The 
        value -1 represents that this object is not configured."                       �"The control word flag of the flow that the TLP measured. The value 
        false(2) represents that this object is not configured."                       x"The LSP label of the flow that the TLP measured. The value 
        -1 represents that this object is not configured."                       "The L2VPN flag of the flow that the TLP measured. The value 
        false(2) represents that this object is not configured."                       ="The tpid for vlan. The value range is from '600' to 'FFFF'."                       ="Used for controlling the creation and deletion of this row."                       ;"This value indicate whether the flow-label is configured."                       �"The LSP label of the flow that the TLP measured. The value 
        -1 represents that this object is not configured. The value
        -2 represents that this object matches any label."                       {"The VPN label of of the flow that the TLP measured. The 
        value -1 represents that this object is not configured."                       �"The control word flag of the flow that the TLP measured. The value 
    	false(2) represents that this object is not configured."                       u"The LSP label of the flow that the TLP measured. The value 
    	-1 represents that this object is not configured."                       �"The LSP label of the flow that the TLP measured. The value 
        -1 represents that this object is not configured. The value
        -2 represents that this object matches any label."                       |"The L2VPN flag of the flow that the TLP measured. The value 
    	false(2) represents that this object is not configured."                       ;"This value indicate whether the flow-label is configured."                       ="The tpid for vlan. The value range is from '600' to 'FFFF'."                       T"IPFPM nexthop configuration information for a particular TLP of the test instance."                       V"IPFPM nexthop configuration information for a  a particular load balancing path TLP."                       ="Used for controlling the creation and deletion of this row."                           2" The board ID that the tlp exceed the threshold."                       " The number of tlp."                       " The threshold of tlp."                           �"A hwIpfpmLossRatioExceed trap is sent when the loss ratio 
        of IPFPM test instance exceeds the uppper threshold in 
        continuous five test intervals."                 �"A hwIpfpmLossRatioRecovery trap is sent when the loss ratio 
        of IPFPM test instance is under the lower threshold in 
        continuous five test intervals."                 �"A hwIpfpmOneDelayExceed trap is sent when the one-way delay 
        of IPFPM test instance exceeds the uppper threshold in 
        continuous five test intervals."                 �"A hwIpfpmOneDelayRecovery trap is sent when the one-way delay 
        of IPFPM test instance is under the lower threshold in 
        continuous five test intervals."                 �"A hwIpfpmTwoDelayExceed trap is sent when the two-way delay 
        of IPFPM test instance exceeds the uppper threshold in 
        continuous five test intervals."                 �"A hwIpfpmTwoDelayRecovery trap is sent when the two-way delay 
        of IPFPM test instance is under the lower threshold in 
        continuous five test intervals."                3"A hwIpfpmDcpFlowConflict trap is sent when the flow 
        configuration conflicts with another existing flow configuration.
        The first hwIpfpmDcpInstId and hwIpfpmDcpFlowType indicates the specified flow.
        The second hwIpfpmDcpInstId and hwIpfpmDcpFlowType indicates the existing flow."                 U"A hwIpfpmTlpExceed trap is sent when the number of board tlp exceeds the threshold."                 X"A hwIpfpmTlpRecovery trap is sent when the number of board tlp is under the threshold."                 �"A hwIpfpmMultiOneDelayExceed trap is sent when the one-way delay 
        of IPFPM test instance exceeds the uppper threshold in 
        continuous five test intervals. This trap supports multi one-way delay for a period."                 �"A hwIpfpmMultiOneDelayRecovery trap is sent when the one-way delay 
        of IPFPM test instance is under the lower threshold in 
        continuous five test intervals. This trap supports multi one-way delay for a period."                 �"A hwIpfpmMultiTwoDelayExceed trap is sent when the two-way delay 
        of IPFPM test instance exceeds the uppper threshold in 
        continuous five test intervals. This trap supports multi two-way delay for a period."                 �"A hwIpfpmMultiTwoDelayRecovery trap is sent when the two-way delay 
        of IPFPM test instance is under the lower threshold in 
        continuous five test intervals. This trap supports multi two-way delay for a period."                         P"The compliance statement for entities which implement the 
        IPFPM MIB."                   X"The collection of objects which are used to configure the
        IPFPM MCP behavior."                 f"The collection of objects which are used to configure the
        IPFPM MCP test instance behavior."                 d"The collection of objects which are used to represent the
        IPFPM test instance statistics."                 X"The collection of objects which are used to configure the
        IPFPM DCP behavior."                 f"The collection of objects which are used to configure the
        IPFPM DCP test instance behavior."                 X"The collection of objects which are used to configure the
        IPFPM TLP behavior."                 n"The collection of traps used to indicate that the measured 
        network performance is in fault or not."                     �"The collection of objects which are used to represent the
        IPFPM test instance statistics for multi-in-point delay measurement"                            