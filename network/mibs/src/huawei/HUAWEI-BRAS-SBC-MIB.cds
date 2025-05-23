N-- =================================================================
-- Copyright (C) 2002 by HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description:
-- Reference:
-- Version: V1.00
-- History:
-- zhangyinxi, 2007-11-21, HUAWEI Bras sbc Configuration
-- =================================================================
   ^"A simple status value for the object.
                1 enabled
                2 disabled"               �"Security protocol value for the object.
                1 sip
                2 mgcp
                3 h323
                4 signaling"               b"Sbc application mode.
                1 single domain mode
                2 multi domain mode"               �"Sbc base protocol value for the object.
                1 sip
                2 mgcp
                3 snmp
                4 ras
                5 upath
                6 h248
                7 ido
                8 q931"               '"A simple status value for the object."               r"Sbc bandwidth limit type.
                1 bandwidth-limit type be
                2 bandwidth-limit type qos"                                                                                 ("Session Border Controller Data Config."Z"R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com" "200708140900Z" "Last revision."                                   <"Statistic Enable Status.
                Default: enabled"                       C"Statistic Syslog Enable Status.
                Default: enabled"                       C"Sbc application mode.
                Default: Multi-domain mode"                       U"Sbc media flow validity detect enable status.
                Default: disabled(2)"                       Q"Sbc media flow SSRC detect enable status.
                Default: disabled(2)"                       �"Sbc media packet length detect function.
                Range: 28-65535
                Default: 1500 
                Unit: byte"                           5"Signal Address Map Table.
                obsolete"                       !"Signal Address Map Table Entry."                       ,"Signal Address Map Client Side IP Address."                       ,"Signal Address Map Server Side IP Address."                       &"Signal Address Map Softx IP Address."                       &"Signal Address Map IADMS IP Address."                        "Signal Address Map Row Status."                       4"Media Address Map Table.
                obsolete"                        "Media Address Map Table Entry."                       +"Media Address Map Client Side IP Address."                       +"Media Address Map Server Side IP Address."                       q"Media Address Map Weight.
                Range: 10-100
                Default: 50
                Unit: NA"                       "Media Address Map Row Status."                       "Port Range Table."                       "Port Range Table Entry."                       �"Port Range Index.
                1: signal
                2: media
                3: nat
                4: tcp
                5: udp
                6: mediacur"                       �"Port Range Begin Port.
                Range: 10001-65535
                Default:
                signal and media: 10001
                nat: 50000"                       �"Port Range End Port.
                Range: 10001-65535
                Default:
                signal and media: 49999
                nat: 65535"                       "Port Range Row Status."                       ""Statistic of Media Packet Table."                       ("Statistic of Media Packet Table Entry."                       ?"Rtp or Rtcp.
                1: rtp
                2: rtcp"                       "Packet Number."                       "Packet Octet."                       "Row Status."                       "Client wellknown port table."                       "Client wellknown port entry."                       ;"Protocol.
                Base on HWBrasSbcBaseProtocol."                       "Vpn-instance Index"                       "Client Address."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Client Wellknown Port."                       "Row Status."                       ""Softswitch wellknown port table."                       ""Softswitch wellknown port entry."                       ;"Protocol.
                Base on HWBrasSbcBaseProtocol."                       "Vpn-instance Index."                       "Softswitch Address."                       "Softswitch Wellknown Port."                       "Row Status."                       "Iadms wellknown port table."                       "Iadms wellknown port entry."                       ;"Protocol.
                Base on HWBrasSbcBaseProtocol."                       "Vpn-instance Index."                       "Iadms Address."                       "Iadms Wellknown Port."                       "Row Status."                       "SBC instance table."                       "SBC instance entry."                       "the name of the sbc instance."                       "Row Status."                                  �"Map Groups.
                This table for create or delete map groups. 
                When you create the index, the groups' status must be disabled.
                The groups' type for index:
                  index      type
                   1-1000      1
                1001-2000      2
                2001-2500      3
                2501-2999      4
                If type don't match index, set will be failed!"                       "Map Groups entry."                       �"Map Group's Index.
                proxy         : 1...1000
                intercomIP    : 1001...2000
                IntercomPrefix: 2001...2500
                bgf           : 2501...2999"                       �"Map Group's Type.
                proxy         : 1...1000
                intercomIP    : 1001...2000
                IntercomPrefix: 2001...2500
                bgf           : 2501...2999"                       ?"Map Group's Enable Status.
                default: disabled"                       -"SBC instance which the mapgroup belongs to "                       d"Map Group's maximum session count.
                Range: 1-40000
                Default: 40000"                       "Row status."                       a"Map Groups' Client Address.
                Support map group index: 1..2000
                "                       #"Map Groups' client address entry."                       F"Map Group's Index.
                Support map group index: 1..2000"                       e"VPN Index.
                range:
                SE2200==>0~255
                SE2300==>0~1023"                       "Client Address."                       "Row stauts."                       O"Map Groups' Server Address.
                Support map group index: 1..2500"                       #"Map Groups' server address entry."                       F"Map Group's Index.
                Support map group index: 1..2500"                       e"VPN Index.
                range:
                SE2200==>0~255
                SE2300==>0~1023"                       "Server Address."                       "Server Address."                       "Server Address."                       "Server Address."                       "Row stauts."                       T"Map Groups' Soft-switch Address.
                Support map group index: 1..2500"                       ("Map Groups' soft-switch address entry."                       F"Map Group's Index.
                Support map group index: 1..2500"                       e"VPN Index.
                range:
                SE2200==>0~255
                SE2300==>0~1023"                       "Soft-switch Address."                       "Soft-switch Address."                       "Soft-switch Address."                       "Soft-switch Address."                       "Row stauts."                       L"Map Groups' UMS Address.
                Support map group index: 1..1000"                        "Map Groups' ums address entry."                       F"Map Group's Index.
                Support map group index: 1..1000"                       e"VPN Index.
                range:
                SE2200==>0~255
                SE2300==>0~1023"                       "IADMS Server Address."                       "IADMS Server Address."                       "IADMS Server Address."                       "IADMS Server Address."                       "Row stauts."                       P"Map Groups' Bellow Protocol.
                Support map group index: 1..1000"                       $"Map Groups' bellow protocol entry."                       F"Map Group's Index.
                Support map group index: 1..1000"                       "SIP Protocol."                       "MGCP Protocol."                       "H.323 Protocol."                       "IADMS Protocol."                       "UPATH Protocol."                       "H.248 Protocol."                       "Row stauts."                       E"Map Groups' Port.
                Support map group index: 1..2000"                       "Map Groups' port entry."                       <"Map Group's Index.
                Support index: 1..2000"                       7"Port Index.
                Support range :1...65535"                       "Row stauts."                       @"Map Groups' Prefix.
                Support index: 2001..2500"                       "Map Groups' prefix entry."                       I"Map Group's Index.
                Support map group index: 2001..2500"                       ="Intercom Prefix ID.
                Support length :1...63"                       "Row stauts."                       b"Map Groups' Media Client Address.
                Support map group index: 1..1000 | 2501..2999"                       )"Map Groups' media client address entry."                       S"Map Group's Index.
                Support map group index: 1..1000 | 2501..2999"                       e"VPN Index.
                range:
                SE2200==>0~255
                SE2300==>0~1023"                       "Media Client Address."                       "Media Client Address."                       "Media Client Address."                       "Media Client Address."                       "The name of VPN interface."                       "Client Interface."                       "the working slot."                       "Client Interface."                       "the working slot."                       "Client Interface."                       "the working slot."                       "Client Interface."                       "the working slot."                       "Row stauts."                       b"Map Groups' Media Server Address.
                Support map group index: 1..1000 | 2501..2999"                       )"Map Groups' media server address entry."                       S"Map Group's Index.
                Support map group index: 1..1000 | 2501..2999"                       e"VPN Index.
                range:
                SE2200==>0~255
                SE2300==>0~1023"                       "Media Server Address."                       "Media Server Address."                       "Media Server Address."                       "Media Server Address."                       "The name of VPN interface."                       "Server Interface."                       "the working slot."                       "Server Interface."                       "the working slot."                       "Server Interface."                       "the working slot."                       "Server Interface."                       "the working slot."                       "Row stauts."                       ^"Map Groups' Match Acl Number.
                Support map group index: 1..1000 | 2501..2999"                       %"Map Groups' match acl number entry."                       S"Map Group's Index.
                Support map group index: 1..1000 | 2501..2999"                       8"ACL Index.
                Support range: 2000...3999"                       "Row stauts."                               2"Sbc BackupGroup Table.
                obsolete"                       "Sbc BackupGroup Table Entry."                       "BackupGroup ID."                       `"BackupGroup type.
                1 signal backup group
                2 media backup group"       -- SYNTAX Integer32 (1..2)
               "Instance Name."                       "Row stauts."                       3"Slot Information Table.
                obsolete"                       "Slot Information Table Entry."                       "BackupGroup index."                       "Slot Index."                       
"Slot ID."                       C"Config State.
                1 master
                2 backup"                       "Row stauts."                               ="Mediapass Enable Status.
                Default: disabled"                       C"Mediapass Syslog Enable Status.
                Default: enabled"                       `"obsolete
                Internet-mediapass Enable Status.
                Default: disabled"                       ="Roamlimit Enable Status.
                Default: disabled"                       "Roamlimit Default Rule."                       C"Roamlimit Syslog Enable Status.
                Default: enabled"                       D"Roamlimit Extend Enable Status.
                Default: disabled"                       Y"HRP Synchronization:
                Synchronize data in master device to slave device"                            "Mediapass Configuration Table."                       &"MediaPass Configuration Table Entry."                       1"Usergroup Index.
                Range: 1-1000"                       Q"ACL Index.
                Range: 2000-2999
                0 for no acl bind"                       "Mediapass Row Status."                       %"Usergroup for Roamlimit Rule Table."                       &"Usergroup for Roamlimit Table Entry."                       1"Usergroup Index.
                Range: 1-1000"                       "Usergroup Row Status."                       %"Usergroup for Roamlimit Rule Table."                       +"Usergroup for Roamlimit Rule Table Entry."                       5"Usergroup Rule Index.
                Range: 1-100"                       "Rule Type."                       "User Infomation."                       "Usergroup Rule Row Status."                       "Rtp Special Address Table."                       ""Rtp Special Address Table Entry."                       "Rtp Special Address Index."                       "Rtp Special Address Address."                       !"Rtp Special Address Row Status."                       "Roamlimit Table."                       "Roamlimit Table Entry."                       "Roamlimit Number."                       "Roamlimit Acl Number."                       "Roamlimit Row Status."                        "Media QoS Configuration Table."                       "Media Users Table Entry."                       k"SessionEngine2000 Media Users Index
                read range: 1-255
                set  range: 1-253"                       "Media Users Media Type."                       5"Media Users Caller ID1
                Range: 0-63"                       5"Media Users Caller ID2
                Range: 0-63"                       5"Media Users Caller ID3
                Range: 0-63"                       5"Media Users Caller ID4
                Range: 0-63"                       5"Media Users Callee ID1
                Range: 0-63"                       5"Media Users Callee ID2
                Range: 0-63"                       5"Media Users Callee ID3
                Range: 0-63"                       5"Media Users Callee ID4
                Range: 0-63"                       "Media Users Row Status."                               V"Intercom Enable Status.
                Default: disabled
                obsolete"                       �"intercom status set
                1:disabled, intercom is closed
                2:ip-route, intercom ip route function is enable
                3:prefix-route, intercom prefix route function is enable"                           ""Intercom Prefix-route Set Table."                       ("Intercom Prefix-route Set Table Entry."                       "Intercom Prefix number."                       )"Intercom Prefix Destination IP address."                       #"Intercom Prefix Local IP address."                       "Intercom Prefix Row Status."                               ?"Session Car Enable Status.
                Default: disabled"                           "Session Car Degree Table."                       !"Session Car Degree Table Entry."                       "Session Car Degree Table ID."                       3"Session Car Degree Table Brand Width Information."                       ,"Session Car Degree Table Dscp Information."                       &"Session Car Degree Table Row Status."                       "Session Car Rule Table."                       "Session Car Rule Table Entry."                       "Session Car Rule Table ID."                       "Session Car Rule Table Name."                       #"Session Car Rule Table Degree ID."                       +"Session Car Rule Table Degree Band Width."                       ,"Session Car Rule Table Degree Description."                       $"Session Car Rule Table Row Status."                               C"Signaling Defend Enable Status.
                Default: enabled"                       p"Signaling Defend Mode Status.
                1 auto
                2 manual
                Default: auto"                       H"Signaling Defend Action log Status.
                Default: disabled"                       6"Cac Enable Status.
                Default: enabled"                       �"Cac Action log Status.
                1 deny and no log
                2 permit and no log
                3 deny and log
                4 permit and log
                Default: deny and no log"                       "Description."                       "Description."                       "Description."                       "Description."                           ."Signaling Defend Limited Connect Rate Table."                       ,"Signaling Defend Connect Rate Table Entry."                       "Protocol."                       "Threshold."                       
"Percent."                       "RowStatus."                       7"Signaling Defend Limited Per-user Connect Rate Table."                       5"Signaling Defend Per-user Connect Rate Table Entry."                       "Protocol."                       "Threshold."                       
"Percent."                       "RowStatus."                       +"CAC Limited Simultanous Call Total Table."                       )"CAC Simultanous Call Total Table Entry."                       "Protocol."                       "Threshold."                       
"Percent."                       "RowStatus."                       3"CAC Limited Per-user Simultanous Call Rate Table."                       1"CAC Per-user Simultanous Call Rate Table Entry."                       "Protocol."                       "Threshold."                       
"Percent."                       "RowStatus."                       #"CAC Limited Register Total Table."                       !"CAC Register Total Table Entry."                       "Protocol."                       "Threshold."                       
"Percent."                       "RowStatus."                       +"CAC Limited Per-user Register Rate Table."                       )"CAC Per-user Register Rate Table Entry."                       "Protocol."                       "Threshold."                       
"Percent."                       "RowStatus."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                               �"UdpTunnelEnable
                Udp Tunnel Status.
                Default: disabled.Value range(disabled[1],server[2],client[3])"                       �"UdpTunnelType
                Udp Tunnel Type.
                1 no type
                2 server
                3 client"                       d"SctpAddress
                Udp Tunnel Sctp Address.
                Default 0.0.0.0 no address."                       �"UdpTimerLength
                Udp tunnel tunnel mode node timer length
                Range: 1-65535
                Unit: seconds
                Default: 900"                       �"SctpTimerLength
                Udp tunnel sctp node timer length.
                Range: 1-65535
                Unit: seconds
                Default: 900"                            "Udp Tunnel Address Pool Table."                       &"Udp Tunnel Address Pool Table Entry."                       #"Index for Pool.
                "                       8"Start Address.
                Default: 172.168.181.1"                       8"End Address.
                Default: 172.168.239.152"                       "Row Status."                       "Udp Tunnel Port Table."                       "Udp Tunnel Port Table Entry."                       O"Support Protocol of Udp Tunnel.
                1 udp
                2 tcp"                       "Port."                       "Row Status."                       ""Udp Tunnel Interface Port Table."                       ("Udp Tunnel Interface Port Table Entry."                       "Address in the interface."                       "Port."                       "Row Status."                               ;"Ims QoS Enable Status.
                default: disabled"                       B"Ims Mediaproxy Enable Status.
                default: disabled"                       A"Ims QoS Syslog Enable Status.
                default: enabled"                       H"Ims Mediaproxy Syslog Enable Status.
                default: enabled"                       :"Ims MG Enable Status.
                default: disabled"                       ~"MG Connect Aging Time.
                Range: 100-3600000
                Default: 1000
                Unit: millisecond"                       l"MG Aging Time.
                Range: 0-36000
                Default: 120
                Unit: second"                       x"MG Call Session Aging Time.
                Range: 1-14400
                Default: 30
                Unit: minute"                       8"Sctp Enable Status.
                default: disabled"                       {"RTCP Media Stream Detect Time.
                Range: 5-3600
                Default: 300
                Unit: second"                       y"RTP Media Stream Detect Time.
                Range: 5-3600
                Default: 30
                Unit: second"                       @"Media Detect Enable Status.
                default: disabled"                       H"Media Detect One-way Enable Status.
                default: disabled"                       A"Ims Mg Syslog Enable Status.
                default: disabled"                       B"Ims Statistics Enable Status.
                default: disabled"                       "RTP Media Stream Aging Time.
                Range: 5-3600
                Default: 300      
                Unit: second"                           "Set Ims Connection Table"                       !"Set Ims Connection Table Entry."                       7"Index of the Connection 
                Range : 0-9"                       4"Pep Id of Connection.
                Range:1-32."                       "Client Type of Connection."                       ""Client Ip Address of Connection."                       "Client Port of Connection."                       ""Server Ip Address of Connection."                       "Server Port of Connection."                       "Row Status."                       "Set Ims Band Table."                       "Set Ims Band Table Entry."                       1"Interface number.
                Range: 1-64."                       "Index of the Interface."                       "Name of the Interface."                       "Type of the Interface:FE,GE."                       |"Bandwidth Value
                Range:1-1024
                Default: FE  100Mbps
                         GE  1024Mbps"                       "Row Status."                       ""Active the Ims Connection Table."                       ("Active the Ims Connection Table Entry."                       7"Index of the Connection 
                Range : 0-9"                       3"Connection Status:sleep,active.
                "                       "Row Status."                       "Set MG Table."                       "Set MG Table Entry."                       0"Index of the MG 
                Range : 0-14"                       "Description of the MG."                       5"Status of the MG 
                Default:disabled"                       �"Protocol of the MG
                1:SCTP
                2:UDP  
                3:TCP                
                Default:UDP"                       "MID of the MG."                       '"SBC instance which the MG belongs to."                       "Row Status of the MG."                       "Set MG IP Table."                       "Set MG IP Table Entry."                       C"Type of the IP table
                1:MG
                2:MGC"                       2"Index of the IP table
                Range:1-4"                       L"IP version of the IP table
                4:ipv4
                6:ipv6"                       "Address of the IP table."                       "MG Interface."                       "Port of the IP table."                       "Row Status of the IP table."                       "Set MG Domain Table."                       "Set MG Domain Table Entry."                       L"Type of the domain table
                1:inner
                2:outer"                       "Name of the domain table."                       E"Mapgroup index of the domain table
                Range:2501-2999"                       !"Row Status of the domain table."                               ~"Softswitch Detect Enable Status.
                Default: disabled
                This leaf for detect SoftSwitch status."                       i"Detect Time.
                Range: 1-7200
                Default: 10
                Unit: seconds"                       W"Detect Source Port.
                Range: 1024-10000
                Default: 5060"                       N"Detect Fail Limit.
                Range: 1-100
                Default: 3"                               >"QoS report enable status.
                Default: disabled"                       �"QoS report RTCP packet bandwidth.
                Range: 0-40960
                Default: 1024
                Unit: packets/second"                                   "Description."                           "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                               h"Sbc signaling nat session aging time (s).
                Range: 1-40000
                Default: 20"                           ""Sbc signaling nat configuration."                       ""Sbc signaling nat configuration."                        "Sbc signaling nat group index."                       $"Sbc signaling nat source vpn name."                       &"Sbc signaling nat sbc instance name."                       "Row Status."                       7"
                NAT address pool information table."                       O"
                NAT address pool information table entry.
                "                       t"
                The index of address pool                
                This item is index.
                "                       N"
                The beginning IP address of address pool
                "                       K"
                The ending IP address of address pool
                "                       H"
                This address pool reference count.
                "                       8"
                Vpn-Instance name.
                "                       g"
                Row status
                Only support CreateAndGo and Destroy.
                "                               9"SBC bandwidth-limit type.
                Default: qos"                       f"SBC maximum bandwidth(K Bytes).
                Range: 1-10485760
                Default: 6291456"                               "Software Version Information."                       S"Cpu Usage Information.
                Range: 0-100
                Default: NA"                       '"Software version information for UMS."                           "Statistic Table."                       "Statistic Table Entry."                       "Statistic Index."                       "Statistic Hours Offset."                       "Statistic Description."                       "Statistic Value."                       "Statistic Time."                               6"SIP Enable Status.
                Default: enabled"                       ="SIP Syslog Enable Status.
                Default: enabled"                       "SIP Anonymous card."                       K"SIP Check SIP Heartbeat Enable Status.
                Default: disabled"                       z"SIP Callsession Aging Time.
                Range: 0-14400
                Default: 720
                Unit: minutes"                       h"SIP Dual-homing Failed Register Count Limit.
                Range: 1-100
                Default: 6"                       G"SIP Register Reduce Enable States.
                Default: disabled"                       x"SIP Register Expire Reduced.
                Range: 1-600
                Default: 60
                Unit: minutes"                           5"SIP Wellknown Port Table.
                obsolete"                       !"SIP Wellknown Port Table Entry."                       �"SIP Wellknown Port Index.
                1: Client Side Ip Address
                2: Softx IP Address
                Default: NA"                       S"SIP Wellknown Port Protocol.
                1: sip
                Default: NA"                        "SIP Wellknown Port IP Address."                       "SIP Wellknown Port Port."                        "SIP Wellknown Port Row Status."                       1"SIP Signal Map Table.
                obsolete"                       "SIP Signal Map Table Entry."                       ""SIP Signal Map Table IP Address."                        "SIP Signal Map Table Protocol."                       ""SIP Signal Map Table Map Number."                       2"SIP Signal Map Table Map Type.
                "                       0"SIP Media Map Table.
                obsolete"                       "SIP Media Map Table Entry."                       !"SIP Media Map Table IP Address."                       "SIP Media Map Table Protocol."                       '"SIP Media Map Table Media Map Number."                       :"SIP Intercom Map Signal Table.
                obsolete"                       &"SIP Intercom Map Signal Table Entry."                       7"Intercom Address Map SIP Signal Map Table IP Address."                       5"Intercom Address Map SIP Signal Map Table Protocol."                       7"Intercom Address Map SIP Signal Map Table Map Number."                       9"SIP Intercom Map Media Table.
                obsolete"                       %"SIP Intercom Map Media Table Entry."                       6"Intercom Address Map SIP Media Map Table IP Address."                       4"Intercom Address Map SIP Media Map Table Protocol."                       6"Intercom Address Map SIP Media Map Table Map Number."                       *"SIP Statistic of Signaling Packet Table."                       0"SIP Statistic of Signaling Packet Table Entry."                       "Protocol."                       "Input Packet Number."                       "Input Packet Octet."                       "Output Packet Number."                       "Output Packet Octet."                       "Row Status."                               >"MGCP Syslog Enable Status.
                Default: enabled"                       q"MGCP MG Aging Time.
                Range: 0-3600
                Default: 600
                Unit: seconds"                       s"MGCP CCB Aging Time.
                Range: 10-14400
                Default: 30
                Unit: minutes"                       v"MGCP Transaction Aging Time.
                Range: 6-60
                Default: 6
                Unit: seconds"                       7"MGCP Enable Status.
                Default: enabled"                       i"MGCP Dual-homing Failed Register Count Limit.
                Range: 1-100
                Default: 6"                           6"MGCP Wellknown Port Table.
                obsolete"                       ""MGCP Wellknown Port Table Entry."                       �"MGCP Wellknown Port Index.
                1: Client Side Ip Address
                2: Softx IP Address
                Default: NA"                       U"MGCP Wellknown Port Protocol.
                1: mgcp
                Default: NA"                       !"MGCP Wellknown Port IP Address."                       "MGCP Wellknown Port Port."                       !"MGCP Wellknown Port Row Status."                       2"MGCP Signal Map Table.
                obsolete"                       "MGCP Signal Map Table Entry."                       #"MGCP Signal Map Table IP Address."                       !"MGCP Signal Map Table Protocol."                       #"MGCP Signal Map Table Map Number."                       !"MGCP Signal Map Table Map Type."                       1"MGCP Media Map Table.
                obsolete"                       "MGCP Media Map Table Entry."                       ""MGCP Media Map Table IP Address."                        "MGCP Media Map Table Protocol."                       ("MGCP Media Map Table Media Map Number."                       ;"MGCP Intercom Map Signal Table.
                obsolete"                       '"MGCP Intercom Map Signal Table Entry."                       8"Intercom Address Map MGCP Signal Map Table IP Address."                       6"Intercom Address Map MGCP Signal Map Table Protocol."                       8"Intercom Address Map MGCP Signal Map Table Map Number."                       :"MGCP Intercom Map Media Table.
                obsolete"                       &"MGCP Intercom Map Media Table Entry."                       7"Intercom Address Map MGCP Media Map Table IP Address."                       5"Intercom Address Map MGCP Media Map Table Protocol."                       7"Intercom Address Map MGCP Media Map Table Map Number."                       +"MGCP Statistic of Signaling Packet Table."                       1"MGCP Statistic of Signaling Packet Table Entry."                       "Protocol."                       "Input Packet Number."                       "Input Packet Octet."                       "Output Packet Number."                       "Output Packet Octet."                       "Row Status."                               8"IADMS Enable Status.
                Default: enabled"                       ?"IADMS Syslog Enable Status.
                Default: enabled"                       J"IADMS Register Refresh Enable Status.
                Default: disabled"                       z"IADMS Register-User Aging Time.
                Range: 0-30
                Default: 20
                Unit: minutes"                           7"IADMS Wellknown Port Table.
                obsolete"                       #"IADMS Wellknown Port Table Entry."                       �"IADMS Wellknown Port Index.
                1: Client Side Ip Address
                2: IADMS IP Address
                Default: NA"                       V"IADMS Wellknown Port Protocol.
                1: snmp
                Default: NA"                       ""IADMS Wellknown Port IP Address."                       "IADMS Wellknown Port Port."                       ""IADMS Wellknown Port Row Status."                       ""IADMS Support Mib Version Table."                       ("IADMS Support Mib Version Table Entry."                       �"IADMS Support Mib Version.
                1: amend
                2: v150
                3: v152
                4: v160
                5: v210"                       z"IADMS Support Mib Version Infomation.
                1: true
                2: faulse
                default: true"                       '"IADMS Support Mib Version Row Status."                       3"IADMS Signal Map Table.
                obsolete"                       "IADMS Signal Map Table Entry."                       $"IADMS Signal Map Table IP Address."                       ""IADMS Signal Map Table Protocol."                       $"IADMS Signal Map Table Map Number."                       ""IADMS Signal Map Table Map Type."                       2"IADMS Media Map Table.
                obsolete"                       "IADMS Media Map Table Entry."                       #"IADMS Media Map Table IP Address."                       !"IADMS Media Map Table Protocol."                       )"IADMS Media Map Table Media Map Number."                       <"IADMS Intercom Map Signal Table.
                obsolete"                       ("IADMS Intercom Map Signal Table Entry."                       9"Intercom Address Map IADMS Signal Map Table IP Address."                       7"Intercom Address Map IADMS Signal Map Table Protocol."                       9"Intercom Address Map IADMS Signal Map Table Map Number."                       ;"IADMS Intercom Map Media Table.
                obsolete"                       '"IADMS Intercom Map Media Table Entry."                       8"Intercom Address Map IADMS Media Map Table IP Address."                       6"Intercom Address Map IADMS Media Map Table Protocol."                       8"Intercom Address Map IADMS Media Map Table Map Number."                       ,"IADMS Statistic of Signaling Packet Table."                       2"IADMS Statistic of Signaling Packet Table Entry."                       "Protocol."                       "Input Packet Number."                       "Input Packet Octet."                       "Output Packet Number."                       "Output Packet Octet."                       "Row Status."                               8"H.323 Enable Status.
                Default: enabled"                       ?"H.323 Syslog Enable Status.
                Default: enabled"                       v"H.323 Callsession Aging Time.
                Range: 3-24
                Default: 24
                Unit: hours"                       c"H.323 Q.931 Wellknown Port Number.
                Range: 1-49999
                Default: 1720"                       j"H.323 Dual-homing Failed Register Count Limit.
                Range: 1-100
                Default: 6"                           7"H.323 Wellknown Port Table.
                obsolete"                       #"H.323 Wellknown Port Table Entry."                       �"H.323 Wellknown Port Index.
                1: Client Side Ip Address
                2: Softx IP Address
                Default: NA"                       n"H.323 Wellknown Port Protocol.
                1: ras
                2: q931
                Default: NA"                       ""H.323 Wellknown Port IP Address."                       "H.323 Wellknown Port Port."                       ""H.323 Wellknown Port Row Status."                       3"H.323 Signal Map Table.
                obsolete"                       "H.323 Signal Map Table Entry."                       $"H.323 Signal Map Table IP Address."                       ""H.323 Signal Map Table Protocol."                       $"H.323 Signal Map Table Map Number."                       ""H.323 Signal Map Table Map Type."                       2"H.323 Media Map Table.
                obsolete"                       "H.323 Media Map Table Entry."                       #"H.323 Media Map Table IP Address."                       !"H.323 Media Map Table Protocol."                       )"H.323 Media Map Table Media Map Number."                       <"H.323 Intercom Map Signal Table.
                obsolete"                       ("H.323 Intercom Map Signal Table Entry."                       9"Intercom Address Map H.323 Signal Map Table IP Address."                       7"Intercom Address Map H.323 Signal Map Table Protocol."                       9"Intercom Address Map H.323 Signal Map Table Map Number."                       ;"H.323 Intercom Map Media Table.
                obsolete"                       '"H.323 Intercom Map Media Table Entry."                       8"Intercom Address Map H.323 Media Map Table IP Address."                       6"Intercom Address Map H.323 Media Map Table Protocol."                       8"Intercom Address Map H.323 Media Map Table Map Number."                       ,"H.323 Statistic of Signaling Packet Table."                       2"H.323 Statistic of Signaling Packet Table Entry."                       "Protocol."                       "Input Packet Number."                       "Input Packet Octet."                       "Output Packet Number."                       "Output Packet Octet."                       "Row Status."                               6"iDo Enable Status.
                Default: enabled"                       ="iDo Syslog Enable Status.
                Default: enabled"                           5"iDo Wellknown Port Table.
                obsolete"                       !"iDo Wellknown Port Table Entry."                       �"iDo Wellknown Port Index.
                1: Client Side Ip Address
                2: Softx IP Address
                Default: NA"                       S"iDo Wellknown Port Protocol.
                1: ido
                Default: NA"                        "iDo Wellknown Port IP Address."                       "iDo Wellknown Port Port."                        "iDo Wellknown Port Row Status."                       1"iDo Signal Map Table.
                obsolete"                       "iDo Signal Map Table Entry."                       ""iDo Signal Map Table IP Address."                        "iDo Signal Map Table Protocol."                       ""iDo Signal Map Table Map Number."                        "iDo Signal Map Table Map Type."                       :"iDo Intercom Map Signal Table.
                obsolete"                       &"iDo Intercom Map Signal Table Entry."                       7"Intercom Address Map iDo Signal Map Table IP Address."                       5"Intercom Address Map iDo Signal Map Table Protocol."                       7"Intercom Address Map iDo Signal Map Table Map Number."                       *"iDo Statistic of Signaling Packet Table."                       0"iDo Statistic of Signaling Packet Table Entry."                       "Protocol."                       "Input Packet Number."                       "Input Packet Octet."                       "Output Packet Number."                       "Output Packet Octet."                       "Row Status."                               8"H.248 Enable Status.
                Default: enabled"                       ?"H.248 Syslog Enable Status.
                Default: enabled"                       t"H.248 CCB Aging Time.
                Range: 10-14400
                Default: 30
                Unit: minutes"                       |"H.248 Register-User Aging Time.
                Range: 0-3600
                Default: 30
                Unit: seconds"                       j"H.248 Dual-homing Failed Register Count Limit.
                Range: 1-100
                Default: 6"                           7"H.248 Wellknown Port Table.
                obsolete"                       #"H.248 Wellknown Port Table Entry."                       �"H.248 Wellknown Port Index.
                1: Client Side Ip Address
                2: Softx IP Address
                Default: NA"                       V"H.248 Wellknown Port Protocol.
                1: h248
                Default: NA"                       ""H.248 Wellknown Port IP Address."                       "H.248 Wellknown Port Port."                       ""H.248 Wellknown Port Row Status."                       3"H.248 Signal Map Table.
                obsolete"                       "H.248 Signal Map Table Entry."                       $"H.248 Signal Map Table IP Address."                       ""H.248 Signal Map Table Protocol."                       $"H.248 Signal Map Table Map Number."                       ""H.248 Signal Map Table Map Type."                       2"H.248 Media Map Table.
                obsolete"                       "H.248 Media Map Table Entry."                       #"H.248 Media Map Table IP Address."                       !"H.248 Media Map Table Protocol."                       )"H.248 Media Map Table Media Map Number."                       <"H.248 Intercom Map Signal Table.
                obsolete"                       ("H.248 Intercom Map Signal Table Entry."                       9"Intercom Address Map H.248 Signal Map Table IP Address."                       7"Intercom Address Map H.248 Signal Map Table Protocol."                       9"Intercom Address Map H.248 Signal Map Table Map Number."                       ;"H.248 Intercom Map Media Table.
                obsolete"                       '"H.248 Intercom Map Media Table Entry."                       8"Intercom Address Map H.248 Media Map Table IP Address."                       6"Intercom Address Map H.248 Media Map Table Protocol."                       8"Intercom Address Map H.248 Media Map Table Map Number."                       ,"H.248 Statistic of Signaling Packet Table."                       2"H.248 Statistic of Signaling Packet Table Entry."                       "Protocol."                       "Input Packet Number."                       "Input Packet Octet."                       "Output Packet Number."                       "Output Packet Octet."                       "Row Status."                               9"U-Path Enable Status.
                Default: enabled"                       @"U-Path Syslog Enable Status.
                Default: enabled"                       w"U-Path Callsession Aging Time.
                Range: 1-24
                Default: 12
                Unit: hours"                       y"U-Path Heart Beat Aging Time.
                Range: 10-30
                Default: 10
                Unit: seconds"                           8"U-Path Wellknown Port Table.
                obsolete"                       $"U-Path Wellknown Port Table Entry."                       �"U-Path Wellknown Port Index.
                1: Client Side Ip Address
                2: Softx IP Address
                Default: NA"                       Y"U-Path Wellknown Port Protocol.
                1: U-Path
                Default: NA"                       #"U-Path Wellknown Port IP Address."                       "U-Path Wellknown Port Port."                       #"U-Path Wellknown Port Row Status."                       4"U-Path Signal Map Table.
                obsolete"                        "U-Path Signal Map Table Entry."                       %"U-Path Signal Map Table IP Address."                       #"U-Path Signal Map Table Protocol."                       %"U-Path Signal Map Table Map Number."                       ,"U-Path Signal Map Table Server Map Number."                       3"U-Path Media Map Table.
                obsolete"                       "U-Path Media Map Table Entry."                       $"U-Path Media Map Table IP Address."                       ""U-Path Media Map Table Protocol."                       *"U-Path Media Map Table Media Map Number."                       ="U-Path Intercom Map Signal Table.
                obsolete"                       )"U-Path Intercom Map Signal Table Entry."                       :"Intercom Address Map U-Path Signal Map Table IP Address."                       8"Intercom Address Map U-Path Signal Map Table Protocol."                       :"Intercom Address Map U-Path Signal Map Table Map Number."                       <"U-Path Intercom Map Media Table.
                obsolete"                       ("U-Path Intercom Map Media Table Entry."                       9"Intercom Address Map U-Path Media Map Table IP Address."                       7"Intercom Address Map U-Path Media Map Table Protocol."                       9"Intercom Address Map U-Path Media Map Table Map Number."                       -"U-Path Statistic of Signaling Packet Table."                       3"U-Path Statistic of Signaling Packet Table Entry."                       "Protocol."                       "Input Packet Number."                       "Input Packet Octet."                       "Output Packet Number."                       "Output Packet Octet."                       "Row Status."                               t"The switch for allow Sbc restart.
                Attention: enabled for permit restart device from the nexe oid!"                       T"The button for restart Sbc.
                Attention:set 101 for restart device!"                       |"The botton for load Sbc's patch.
                Operation of 'write' will be forbided if there isn't path file in flash."                       �"Localization enable status
                default: disabled
                
                notes:can't support modified operation nowdays."                                       "Sbc Bind Parameter Table."                       !"Sbc Bind Parameter Table Entry."                       "Index."                       "Trap Bind ID"                       "Trap Send Time"                       "Trap Flu ID"                       "Trap Reason"                       "Trap Type"                       "Sbc Trap Information."                       "Sbc Trap Information Entry."                       "Index."                       "Cpu Information."                       "Hrp Information."                       "Signaling-flood  Information."                       "Cac Information."                       !"Statistic overflow Information."                       "Port Statistic Information."                       "Old soft-switch IP address."                       "Ims connect id."                       "Ims ccb id."                               )"Session Border Controller Objects Group"                 '"Session Border Controller Trap Group."                          "Cpu usage more than threshold."                  "Cpu usage less than threshold."                 "Hrp Enable."                 *"Flu more than signaling-flood threshold."                 *"Flu less than signaling-flood threshold."                 "Flu more than cac threshold."                 "Flu less than cac threshold."                 "Statistic overflow."                 %"Port statistic more than threshold."                 %"Port statistic less than threshold."                 "Softswitch address changed"                 %"Softswitch states changed to resume"                 "Sbc COPS report failed state "                 &"Sbc COPS report Delete Request State"                 "Sbc IMS session time out"                 "Sbc IMS session is created"                 "Sbc IMS session is deleted"                 "Sbc COPS link up"                 "Sbc COPS link down"                 "Sbc Ia link up"                 "Sbc Ia link down"                     /"Session Border Controller Notification Group."                                    