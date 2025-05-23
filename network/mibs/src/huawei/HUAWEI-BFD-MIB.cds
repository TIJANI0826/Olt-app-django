�-- =================================================================
-- Copyright (C) 2022 by HUAWEI TECHNOLOGIES. All rights reserved.
-- Description: MIB interface of BFD protocol configuration.
--              The Bidirectional Forwarding Detection (BFD) protocol
--              is standardized by the IETF. BFD detects the
--              traffic forwarding capability of the link or system by
--              quickly sending BFD control packets (the UDP packets in
--              a specified format) at intervals between two nodes.
-- Reference:
-- Version:     V1.74
--
-- =================================================================
   "Bfd Time Interval Type."               ~"Diagnostic code specifying the local system's reason for
                 the last session state changed.
                "                                                                �"MIB interface of BFD protocol configuration.
                 The Bidirectional Forwarding Detection (BFD) protocol
                 is standardized by the IETF. BFD detects the
                 traffic forwarding capability of the link or system by
                 quickly sending BFD control packets (the UDP packets in
                 a specified format) at intervals between two nodes.
                ""Huawei Industrial Base
                  Bantian, Longgang
                   Shenzhen 518129
                   People's Republic of China
                   Website: http://www.huawei.com
                   Email: support@huawei.com
                " "202207210000Z" "202109090000Z" "202109020000Z" "202107160000Z" "202106180000Z" "202105270000Z" "202103130000Z" "202103080000Z" "202102270000Z" "202102220000Z" "202012290000Z" "202007230000Z" "201910100000Z" "201812030000Z" "201806140000Z" "201802010000Z" "201712300000Z" "201711210000Z" "201711210000Z" "201601080000Z" "201601080000Z" "201511080000Z" "201510230000Z" "201508040000Z" "201507290000Z" "201507140000Z" "201507030000Z" "201409040000Z" "201409010000Z" "201406300000Z" "201405230000Z" "201401220000Z" "201309220000Z" "201308160000Z" "201211230000Z" "201108170000Z" "201107140000Z" "201105110000Z" "201104270000Z" "201104130000Z" "201101120000Z" "201010200000Z" "201008250000Z" "201008020000Z" "201008020000Z" "201007220000Z" "201005190000Z" "201004250000Z" "201004120000Z" "201002120000Z" "201001130000Z" "200912240000Z" "200911270000Z" "200903040000Z" "200806060000Z" "200604270000Z" 1"V1.74, modified the range of hwBfdSessConfName." 5"V1.73, modified the description of hwBfdSessEvplId." �"V1.72, add hwBfdSessEvplId to hwBfdSessionEntry. Add hwBfdSessEvplId for hwBfdSessDown, hwBfdSessUp, hwBfdIPv6SessDown and hwBfdIPv6SessUp. Modify the value and the description of hwBfdSessBindType for new bfd type vxlan and evpl." ["V1.71, add hwBfdSessReachTotalLimit, hwBfdSessReachTotalLimitResume to hwBfdNotifications" <"V1.70, add the value and description of hwBfdSessOperMode." �"V1.69, modified the description of hwBfdSessCfgName, hwBfdSessPeerAddr, hwBfdSessBindIfIndex, hwBfdSessLocalDiscr, hwBfdSessRemoteDiscr." q"V1.68, add hwBfdSessFeNodeID,  hwBfdSessLinkType, hwBfdSessTunnelName, hwBfdSessDownReason to hwBfdSessionEntry" 7"V1.67, add hwBfdSessDescription  to hwBfdSessionEntry" -"V1.66, add hwBfdSessActNumber to hwBfdGroup" "V1.65, add hwBfdSessActNumber" )"V1.64, corrected the spelling mistakes." )"V1.63, corrected the spelling mistakes." A"V1.62, modified the value and description of hwBfdSessOperMode." V"V1.61, add hwBfdBitErrorDetectSessLimitNumber and hwBfdBitErrorDetectSessReachLimit." 3"V1.60, add hwBfdIPv6SessDown and hwBfdIPv6SessUp." >"V1.59, modify the DESCRIPTION  of  hwBfdSessBindAppTypeMask." b"V1.58, modify the SIZE of hwBfdSessCfgName.modify the DESCRIPTION  of  hwBfdSessBindAppTypeMask." X"V1.57, modify the DESCRIPTION of hwBfdSessCfgRemoteFailType and hwBfdSessApOperFailed." O"V1.56, modify the DESCRIPTION of hwBfdSessionConfTable and hwBfdSessionTable." C"V1.55, add hwBfdSessConfbImpactFlag and hwBfdSessConfbImpactFlag." >"V1.54, add hwBfdSessFsmDiscordant and hwBfdSessFsmAccordant." J"V1.53, add hwBfdPWSessDownTrap and hwBfdPWSessUpTrap for Pw Bfd session." 6"V1.52, add hwBfdSessApOperFailed for virtual access." 4"V1.51, add hwBfdSessFaultDown and hwBfdSessResume." @"V1.50, modify the DESCRIPTION of hwBfdSessGlobalDefaultIpAddr." U"V1.49, move hwBfdSessCfgRemoteFailType from hwBfdAlarmTraps  to hwBfdNotifications." V"V1.48, add hwBfdSessCfgRemoteFailType and hwBfdSessCfgRemoteFail for virtual access." '"V1.47, modified the revision history." ("V1.46, modified the date of copyright."�"V1.45, add hwBfdDynamicSessionTos for dynamic session tos in hwBfdScalarsObjects, add hwBfdv6MultiHopSessUpTrap,hwBfdv6MultiHopSessDownTrap for IPv6 MultiHop.
			             Add hwBfdSessPeerAddr,hwBfdSessBindType,hwBfdSessVrfIndex for hwBfdSessUpTrap and hwBfdSessDownTrap, add hwBfdv6SingleHopSessUpTrap,hwBfdv6SingleHopSessDownTrap for IPv6 SingleHop.
						 Add hwBfdDynamicSessionTos for dynamic session tos." 0"V1.44, modified the scope of hwBfdIfConfName ." U"V1.43, modified the description of hwBfdSessBindAppTypeMask for VTE/VPW/FRP/BGPLSP." �"V1.42, modified the value and the description of hwBfdSessConfBindType for new bfd type bgpTunnel, modified the value and the description of hwBfdSessBindType for new bfd type bgpTunnel." �"V1.41, modified the value and the description of hwBfdSessConfBindType for new bfd type ldpTunnel, modified the value and the description of hwBfdSessBindType for new bfd type ldpTunnel." �"V1.40, add hwBfdStaticSessionTos for static session tos. Add hwBfdDynamicSessionTosEx for extend hwBfdDynamicSessionTos. Add hwBfdSessConfTOSEx for extend hwBfdSessConfTOS. Add hwBfdSessDscp to display dscp value when it is enable in a bfd session." &"V1.25, add hwBfdSessBindAppTypeMask." <"V1.24, add hwBfdDynamicSessionTos for dynamic session tos." +"V1.23, modified BfdInterval to Integer32.";"V1.22, removed the range of hwBfdSessActualRxInterval, hwBfdSessActualTxInterval, added the default value of hwBfdAdminStatus, hwBfdSessConfWTRInterval, hwBfdSessDetectMult, hwBfdSessDiscrAuto, hwBfdSessDynamicNumber, hwBfdSessInterfaceLimitNumber, hwBfdSessLimitNumber, hwBfdSessStaticNumber, hwBfdVersionNumber." g"V1.21, modified the description of hwBfdIfConfEnable, hwBfdSessConfWTRInterval, hwBfdSessConfPSTFlag." ."V1.20, modified for bfd mib standardization." ,"V1.19, updated the description and format." �"V1.18, modified the trap nodes of hwBfdSessGroupUpTrap and hwBfdSessGroupDownTrap.
                          Updated the description and format." ,"V1.17, modified BfdInterval to Unsigned32." m"V1.16, modified hwBfdSessConfRemoteDiscr and hwBfdSessRemoteDiscr's range from 1...16384 to 0...4294967295." -"V1.15, modified the description and format." W"V1.14, modified syntax of hwBfdSessPerfLastSessDownTime and hwBfdSessionPerStartTime." ,"V1.13, modified description of all leaves." ,"V1.12, updated the description and format." W"V1.11, modified syntax of hwBfdSessPerfLastSessDownTime and hwBfdSessionPerStartTime." �"V1.10, added four trap nodes of hwBfdSessUpTrap, hwBfdSessDownTrap, hwBfdSessGroupUpTrap
                          and hwBfdSessGroupDownTrap." �"V1.09, changed the range of leaves hwBfdSessConfDesiredMinRxInterval and 
                          hwBfdSessConfDesiredMinRxInterval." H"V1.08, changed the range of leaf hwBfdSessRemoteDiscr as 0-4294967295." 8"V1.07, added flagNoPW, entireDynamic, staticAuto enum." �"V1.06, added leaf hwBfdSessConfVlanID in table hwBfdSessionTable and changed the attribute of leaf hwBfdSessConfBindIfIndex as read-create." "V1.00, initial version."                   e"The current version number of the BFD protocol is 1.
                 Default: 1
                "                      :"Describe the administrative status of a BFD protocol.
                 Options:
                 1. enabled(1)   -denotes that the BFD Process is active on all interface
                 2. disabled(2)  -denotes that the BFD process is disabled on all interfaces
                 Default: 2
                "                       w"Define the maximum number of BFD sessions allowed in the logic router.
                 Default: 0
                "                       m"Define the maximum number of BFD sessions allowed per board.
                 Default: 0
                "                       Y"The total number of BFD static sessions.
                 Default: 0
                "                       Z"The total number of BFD dynamic sessions.
                 Default: 0
                "                       �"Define the default multicast IP address used in BFD multicast detection.
                 Default: 224.0.0.184
                "                       "The passive Echo function of BFD.
                 Options:
                 1. enabled(1)  -denotes that the BFD EchoPassive capability is enabled
                 2. disabled(2) -denotes that the BFD EchoPassive capability is disabled
                 Default: 2
                "                       a"The Acl Number for passive Echo function of BFD.
                 Default: 0
                "                       �"Define the sending interval of the MPLS echo packet.
                 Default: 60
                 Unit: second
                "                      ;"The capability of automatically creating BFD sessions on the LSP egress.
                 Options:
                 1. enabled(1)  -denotes that the egress can create BFD sessions
                 2. disabled(2) -denotes that the egress cannot create BFD sessions
                 Default: 2
                "                       �"Define delay interval before the session turns to up.
                 Unit: second
                 Default: 0
                "                       �"The destination UDP port of multi-hop BFD session. When the
                 administrative status of BFD protocol is disabled, this value
                 will be 0.
                 Default: 3784
                "                       ~"Define the sending interval of TRAP message.
                 Unit: second
                 Default: 120
                "                       8"The device name which session number reached up limit."                       P"The Tos-Exp of dynamic session.
                 Default: 7
                "                       O"The Tos-Exp of static session.
                 Default: 7
                "                       Y"The extended Tos-Exp of dynamic session.
                 Default: 7
                "                      Y"The virtual access AP notify process bfd session configuration failed.
                 Options:
                 1. localDiscriminatorNonsupport(101)    -indicates the local discriminator isnn't supported
                 2. localDiscriminatorConflict(102)    -indicates the local discriminator is conflicted with another
                "                       �"Define the maximum number of BFD bit-error-detection sessions allowed in the logic router.
                 Default: 0
                "                       O"Number of in-use BFD resources.
                Default: 0
                "                           ="The interface configuration table of BFD.
                "                       |"The interface configuration table of BFD.
                 The index of this entry is hwBfdIfConfIndex.
                "                       �"It is the configuration index of this interface.
                 This index is automatically allocated inside the system
                 and is not user-configurable.
                "                       #"It is the name of this Interface."                       �"The flag whether the interface has enabled BFD.
                Options:
                1. disable(0) -Indicates that the interface has disabled BFD
                2. enable(1)  -Indicates that the interface has enabled BFD
               "                       �"The flag that whether the interface is in deleting.
                 Options:
                 1. notDeleted(0)  -the interface is not deleted
                 2. deleted(1)     -the interface is deleted
                "                       �"The flag that whether the interface is available.
                 Options:
                 1. notAvailable(0) -the interface is not available
                 2. available(1)    -the interface is available
                "                       ?"The number of sessions that has been bound to this interface."                       >"Used to manage the creation and deletion of conceptual rows."                       a"This table describes information about configuration entries of BFD sessions.
                "                       �"BFD Session Configuration Table. Use this table to get/configure BFD sessions.
                 The index of this entry is hwBfdSessConfName.
                "                       -"It is the name of this configuration model."                       0"It is the configuration index of this session."                       4"Define the local discriminator of the BFD session."                       5"Define the remote discriminator of the BFD session."                       7"Define the IP address of the peer in the BFD session."                       D"It is the index of the binding interface in the BFD configuration."                       C"It is the name of the binding interface in the BFD configuration."                       �"It is the flag of the BFD demand mode.
                 Options:
                 1. disabled(0) -disable the BFD demand mode
                 2. enabled(1)  -enable the BFD demand mode
                "                       ~"Define the detecting interval in the BFD session with the demand mode.
                 Unit: millisecond
                "                      "It is Detect time multiplier of the configuration. The
                 negotiated transmit interval, multiplied by this value,
                 provides the detection time for the transmitting
                 system in Asynchronous mode.
                "                       �"This is the minimum interval of the configuration, in
                 milliseconds, between received BFD Control packets
                 that this system is capable of supporting.
                 Unit: millisecond
                "                       �"This is the minimum interval of the configuration,
                 in milliseconds, that the local system would
                 like to use when transmitting BFD Control packets.
                 Unit: millisecond
                "                      #"The wait-to-restore (WTR) time of the BFD session.
                 The event that indicates the session changing into the Up 
                 state is reported to the application program only after 
                 the WTR times out.
                 Unit: minute 
                "                       &"This is the TOS value of bfd packet."                      �"The PST flag of the BFD session configuration. 
                 It indicates the status association between the current BFD 
                 session and the interface bound to the session.
                 Options:
                 1. disabled(0)  -indicates that the PST capability of the BFD session is disabled
                 2. enabled(1)   -indicates that the PST capability of the BFD session is enabled
                "                       �"It is the commit flag of the configuration entry.
                 Options:
                 1. notCommit(0) -not commit
                 2. commit(1)    -commit
                "                       �"A BFD session can be administratively enabled or disabled.
                 The AdminStatus field indicates the BFD session status.
                 Options:
                 1. 0 -disable
                 2. 1 -enable
                "                       >"Used to manage the creation and deletion of conceptual rows."                       2"Define the source IP address of the BFD session."                       !"The index of the VPN interface."                       "The name of VPN interface."                       �"BFD session use default multicast IP as the detect peer-ip
                 Options:
                 1. no(1)  -do not use the default multicast IP
                 2. yes(2) -use the default multicast IP
                "                      V"The state of BFD session is associated with the state of the binding interface
                 Options:
                 1. false(1) -do not associate with interface state
                 2. true(2)  -associate with interface state
                 3. subif(3) -associate with interface and correlative sub interface
                "                      R"The binding type of the BFD session.
                 Options:
                 1. interfaceIp(1)    -BFD for IP with peer-ip and interface
                 2. peerIp(2)         -BFD for IP only with peer-ip
                 3. sourceIp(3)       -BFD for IP with peer-ip and source-ip
                 4. ifAndSourceIp(4)  -BFD for IP with peer-ip, interface and source-ip
                 5. fec(5)            -BFD for FEC(NOT support now)
                 6. tunnelIf(6)       -BFD for Tunnel interface(NOT support now)
                 7. ospf(7)           -BFD for OSPF
                 8. isis(8)           -BFD for ISIS
                 9. ldpLsp(9)         -BFD for LDP-LSP
                 10. staticLsp(10)    -BFD for static LSP
                 11. teLsp(11)        -BFD for TE-LSP
                 12. teTunnel(12)     -BFD for TE-Tunnel
                 13. pw(13)           -BFD for PW
                 14. vsiPw(15)        -BFD for VSI PW
                 15. ldpTunnel(21)    -BFD for LDP-Tunnel
                 16. bgpTunnel(22)    -BFD for BGP-Tunnel
                "                       ("It is the next hop of the BFD session."                       /"It is the static LSP name of the BFD session."                       �"The role of the PW bound with BFD session.
                 Options:
                 1. flagMasterPW(1)   -master PW
                 2. flagSecondaryPW(2)-secondary PW
                 3. flagNoPW(3)       -no PW
                "                      $"Set the failure notifies policy type.
                 Options:
                 1. flagBothDown(1)     -notify applications when detecting both Detect-Down and Neighbor-Down
                 2. flagNeighborDown(2) -notify applications only when detecting Neighbor-Down
                "                       "It is the ID of VC."                       "It is the name of VSI."                       "It is the peer-ip of VSI."                      "Describe whether the discriminator can be auto allocated.
                 Options:
                 1. enabled(1)  -the discriminator can be allocated automatically
                 2. disabled(2) -the discriminator cannot be allocated automatically
                "                       2"Define the peer IPv6 address of the BFD session."                       4"Define the source IPv6 address of the BFD session."                       ("It is the next hop of the BFD session."                       >"Whether the peer address of the BFD session is IPv6 address."                       6"Specify the name of the keychain for authentication."                      "Whether enable meticulous authentication for SHA-1 type.
                 Options:
                 1. enabled(1)  -enable meticulous authentication for SHA-1 type
                 2. disabled(2) -disabled meticulous authentication for SHA-1 type
                "                       �"Whether loose authentication check.
                 Options:
                 1.True(1)  -loose-check
                 2.False(2) -do not loose-check
                "                      8"The value of this object identifies whether a session works in one-arm-echo mode.
                 Options:
                 1. enabled(1)  -indicates that the session works in one-arm-echo mode
                 2. disabled(2) -indicates that the session does not work in one-arm-echo mode
                "                      "The value of this object identifies the minimum interval between received BFD
                 Control packets, in milliseconds.This value reflects the capability of receiving
                 BFD Control packets.
                 Unit: millisecond
                "                      �"The value of this object identifies the configuration mode of a TTL used by
                 the BFD session for PW.
                 Options:
                 1. config(1) -indicates that the TTL is manually set
                 2. auto(2)   -indicates that the TTL is automatically calculated based on an IP address
                 3. default(3)-indicates that the TTL is 255 by default
                 4. none(4)   -indicates that the TTL is not in PW mode
                "                       �"The value of this object identifies the TTL used by the BFD session for PW.
                 The vlaue is configurable only when the configuration mode of a TTL is config.
                "                       �"The value of this object identifies the type of the destination address of the BFD
                 session for PW.
                "                       "The value of this object identifies the destination IP address of the BFD session
                 for PW.
                "                       C"This object indicates the main processing board of a BFD session."                      �"The value of this object identifies the node on which a BFD session is set up.
                 The values are as follows.
                 Options:
                 1. upe(1)  -indicates that a BFD session is set up on a UPE to detect a PW
                 2. spe(2)  -indicates that a BFD session is set up on an SPE to detect a PW
                 3. none(3) -indicates that a BFD session does not detect a PW
                 Default: none
                "                       J"This object indicates the interface monitored by the BFD session for PW."                      m"The value of this object identifies whether the BFD session for
                 PW monitors an interface. The values are as follows.
                 Options:
                 1. enabled(1) -enables the BFD session for PW to monitor the interface
                 2. disabled(2)-disables the BFD session for PW from monitoring the interface
                "                      Z"The value of this object identifies the VC encapsulation type on an SPE.
                 The values are as follows:
                fr
                atm-aal5-sdu
                atm-trans-cell
                vlan
                ethernet
                hdlc
                ppp
                atm-nto1-vcc
                atm-nto1-vpc
                ip-layer2
                atm-1to1-vcc
                atm-1to1-vpc
                atm-aal5-pdu
                satop-e1
                satop-t1
                esopsn-basic
                ip-interworking
                "                       �"The value of this object identifies the outer tag of a sub-interface
                 for QinQ VLAN tag termination or the VLAN ID of a sub-interface for
                 dot1q VLAN tag termination.
                "                       D"The value of this object identifies the inner tag in QinQ packets."                       /"This is the extended TOS value of bfd packet."                       �"BFD session impact interface when the device reboot
                 Options:
                 1. no(1)  -do not impact interface when the device reboot
                 2. yes(2) -impact interface when the device reboot
                "                       I"This table describes the query items of BFD sessions.
                "                       �"The BFD Session Table describes the BFD sessions.
                 The index of this entry is hwBfdSessIndex.
                "                       �"It is unique and the Index of this session.
                 This index is automatically allocated inside the system
                 and is not user-configurable.
                "                       7"This value indicate the configuration has Main Index."                       �"Describe the capability of bound with VRRP for the BFD session.
                 Options:
                 1. notBind(0) -not bind
                 2. bind(1)    -bind
                "                       }"This object indicates the name of a BFD session. Currently, this object is used only as the VB binding variable for alarms."                       �"This object indicates the destination IP address of a BFD session. Currently, this object is used only as the VB binding variable of the alarm."                       �"This object indicates the index of the interface bound to a BFD session. Currently, this object is used only as the VB binding variable for alarms."                       �"This object indicates the name of the interface bound to a BFD session. Currently, this object is used only as the VB binding variable for alarms."                       �"This object indicates the local descriptor of a BFD session. Currently, this object is used only as the VB binding variable for alarms."                       �"This object indicates the remote descriptor of a BFD session. Currently, this object is used only as the VB binding variable for alarms."                      
"Describe the current operating mode configured with the BFD session.
                 Options:
                 1. 0 -asynchronous mode with echo function
                 2. 1 -asynchronous mode without echo function
                 3. 2 -demand mode with echo function
                 4. 3 -demand mode without echo function
                 5. 4 -asynchronous One-arm-echo mode
                 6. 5 -seamless BFD without echo function
                 7. 6 -asynchronous unaffiliated mode
                "                       �"Detect time multiplier. The negotiated transmit interval,
                 multiplied by this value, provides the detection time for
                 the transmitting system in Asynchronous mode.
                 Default: 3
                "                       }"It is the detecting interval in the BFD session with the demand mode.
                 Unit: millisecond
                "                       �"This is the minimum interval, in milliseconds, between
                 received BFD Control packets that this system is capable
                 of supporting.
                 Unit: millisecond
                "                       �"This is the minimum interval, in milliseconds, that the
                 local system would like to use when transmitting BFD
                 Control packets.
                 Unit: millisecond
                "                       W"The WTR interval of the BFD session.
                 Unit: minute
                "                       &"This is the TOS value of bfd packet."                       �"Describe the current state of the BFD session.
                 Options:
                 1. 0 -admin down
                 2. 1 -down
                 3. 2 -init
                 4. 3 -up
                "                      �"A diagnostic code specifying the local system's reason for
                 the last session state change.
                 Options:
                 1. 0      -no diagnostic
                 2. 1      -control detection time expired
                 3. 2      -echo function failed
                 4. 3      -neighbor signaled session down
                 5. 4      -forwarding plane reset
                 6. 5      -path down
                 7. 6      -concatenated path down
                 8. 7      -administratively down
                 9. 8      -reverse concatenated path down
                 10. 9     -neighbor signaled session down (receive admindown)
                 11. 10-31 -reserved for future use
                "                       $"The source address of the session."                       !"The index of the VPN interface."                       "The name of VPN interface."                      
"The type of the BFD session.
                 Options:
                 1. static(1)        -static
                 2. dynamic(2)       -dynamic
                 3. entireDynamic(3) -entire dynamic
                 4. auto(4)          -auto
                "                      2�"The Application type that this BFD session has been bound to
                 Options:
                 1. noApplication(1)              -No application
                 2. vrrp(2)                       -VRRP
                 3. ifnet(3)                      -IFNET
                 4. vrrpAndIfnet(4)               -VRRP&IFNET
                 5. bgp(5)                        -BGP
                 6. ospf(6)                       -OSPF
                 7. bgpAndOspf(7)                 -BGP&OSPF
                 8. oamLspmL2vpn(8)               -OAM&LSPM&L2VPN (for LDP LSP and static LSP)
                 9. oamTnlL2vpn(9)                -OAM&TUNNEL&L2VPN (for TE_Tunnnel)
                 10. lspmL2vpnTnlps(10)           -LSPM&TUNNEL_PS&L2VPN (for TE_LSP)
                 11. oamMplsfwL2vpn(11)           -OAM&MPLSFW&L2VPN (for PW)
                 12. isis(12)                     -ISIS
                 13. vsiPw(13)                    -VSIPW (for VSI PW)
                 14. vrrpOamLspmL2vpn(14)         -VRRP&OAM&LSPM&L2VPN
                 15. vrrpOamTnlL2vpn(15)          -VRRP&OAM&TUNNEL&L2VPN
                 16. vrrpLspmL2vpnTnlps(16)       -VRRP&LSPM&TUNNEL_PS&L2VPN
                 17. vrrpOamMplsfwL2vpn(17)       -VRRP&OAM&MPLSFW&L2VPN
                 18. pim(18)                      -PIM
                 19. bgpIsis(19)                  -BGP&ISIS
                 20. bgpPim(20)                   -BGP&PIM
                 21. ospfIsis(21)                 -OSPF&ISIS
                 22. ospfPim(22)                  -OSPF&PIM
                 23. isisPim(23)                  -ISIS&PIM
                 24. bgpOspfIsis(24)              -BGP&OSPF&ISIS
                 25. bgpOspfPim(25)               -BGP&OSPF&PIM
                 26. bgpIsisPim(26)               -BGP&ISIS&PIM
                 27. ospfIsisPim(27)              -OSPF&ISIS&PIM
                 28. bgpOspfIsisPim(28)           -BGPOSPF&ISIS&PIM
                 29. bgp6(29)                     -BGP6
                 30. ospfv3(30)                   -OSPFV3
                 31. isis6(31)                    -ISIS6
                 32. pim6(32)                     -PIM6
                 33. bgp6Ospfv3(33)               -BGP6&OSPFV3
                 34. bgp6Isis6(34)                -BGP6&ISIS6
                 35. bgp6Pim6(35)                 -BGP6&PIM6
                 36. ospfv3Isis6(36)              -OSPFV3&ISIS6
                 37. ospfv3Pim6(37)               -OSPFV3&PIM6
                 38. isis6Pim6(38)                -ISIS6&PIM6
                 39. bgp6Ospfv3Isis6(39)          -BGP6&OSPFV3&ISIS6
                 40. bgp6Ospfv3Pim6(40)           -BGP6&OSPFV3&PIM6
                 41. bgp6Isis6Pim6(41)            -BGP6&ISIS6&PIM6
                 42. ospfv3Isis6Pim6(42)          -OSPFV3&ISIS6&PIM6
                 43. bgp6Ospfv3Isis6Pim6(43)      -BGP6&OSPFV3&ISIS6&PIM6
                 44. auto(44)                     -AUTO
                 45. autoIsis(45)                 -AUTO&ISIS
                 46. autoOspf(46)                 -AUTO&OSPF
                 47. autoBgp(47)                  -AUTO&BGP
                 48. autoPim(48)                  -AUTO&PIM
                 49. autoIsisOspf(49)             -AUTO&ISIS&OSPF
                 50. autoIsisBgp(50)              -AUTO&ISIS&BGP
                 51. autoIsisPim(51)              -AUTO&ISIS&PIM
                 52. autoOspfBgp(52)              -AUTO&OSPF&BGP
                 53. autoOspfPim(53)              -AUTO&OSPF&PIM
                 54. autoBgpPim(54)               -AUTO&BGP&PIM
                 55. autoIsisOspfBgp(55)          -AUTO&ISIS&OSPF&BGP
                 56. autoIsisOspfBgpPim(56)       -AUTO&ISIS&OSPF&BGP&PIM
                 57. autoIsis6(57)                -AUTO&ISIS6
                 58. autoOspfv3(58)               -AUTO&OSPFV3
                 59. autoBgp6(59)                 -AUTO&BGP6
                 60. autoPim6(60)                 -AUTO&PIM6
                 61. autoIsis6Ospfv3(61)          -AUTO&ISIS6&OSPFV3
                 62. autoIsis6Bgp6(62)            -AUTO&ISIS6&BGP6
                 63. autoIsis6Pim6(63)            -AUTO&ISIS6&PIM6
                 64. autoOspfv3Bgp6(64)           -AUTO&OSPFV3&BGP6)
                 65. autoOspfv3Pim6(65)           -AUTO&OSPFV3&PIM6)
                 66. autoBgp6Pim6(66)             -AUTO&BGP6&PIM6
                 67. autoIsis6Ospfv3Bgp6(67)      -AUTO&ISIS6&OSPFV3&BGP6
                 68. autoIsis6Ospfv3Bgp6Pim6(68)  -AUTO&ISIS6&OSPFV3&BGP6&PIM6
                 69. etrunk(69)                   -ETRUNK
                 70. etrunkIfnet(70)              -ETRUNK&IFNET
                 71. etrunkVrrp(71)               -ETRUNK&VRRP
                 72. etrunkVrrpIfnet(72)          -ETRUNK&VRRP&IFNET
                 73. etrunkOamLspmL2vpn(73)       -ETRUNK&OAM&LSPM&L2VPN
                 74. etrunkOamTnlL2vpn(74)        -ETRUNK&OAM&TNL&L2VPN
                 75. etrunkLspmL2vpnTnlps(75)     -ETRUNK&LSPM&L2VPN&TNLPS
                 76. etrunkOamMplsfwL2vpn(76)     -ETRUNK&OAM&MPLSFW&L2VPN
                 77. etrunkvsiPw(77)              -ETRUNK&VSIPW
                 78. etrunkOamLspmL2vpnVrrp(78)   -ETRUNK&OAM&LSPM&L2VPN&VRRP
                 79. etrunkOamTnlL2vpnVrrp(79)    -ETRUNK&OAM&TNL&L2VPN&VRRP
                 80. etrunkLspmL2vpnTnlpsVrrp(80) -ETRUNK&LSMP&L2VPN&TNLPS&VRRP
                 81. etrunkOamMplsfwL2vpnVrrp(81) -ETRUNK&OAM&MPLSFW&L2VPN&VRRP
                 82. rip(82)                      -RIP
                 83. bgpRip(83)                   -BGP&RIP
                 84. ospfRip(84)                  -OSPF&RIP
                 85. isisRip(85)                  -ISIS&RIP
                 86. pimRip(86)                   -PIM&RIP
                 87. bgpOspfRip(87)               -BGP&OSPF&RIP
                 88. bgpIsisRip(88)               -BGP&ISIS&RIP
                 89. bgpPimRip(89)                -BGP&PIM&RIP
                 90. ospfIsisRip(90)              -OSPF&ISIS&RIP
                 91. ospfPimRip(91)               -OSPF&PIM&RIP
                 92. isisPimRip(92)               -ISIS&PIM&RIP
                 93. bgpOspfIsisRip(93)           -BGP&OSPF&ISIS&RIP
                 94. bgpOspfPimRip(94)            -BGP&OSPF&PIM&RIP
                 95. ospfIsisPimRip(95)           -OSPF&ISIS&PIM&RIP
                 96. autoRip(96)                  -AUTO&RIP
                 97. autoBgpRip(97)               -AUTO&BGP&RIP
                 98. autoOspfRip(98)              -AUTO&OSPF&RIP
                 99. autoIsisRip(99)              -AUTO&ISIS&RIP
                 100. autoPimRip(100)             -AUTO&PIM&RIP
                 101. autoBgpOspfRip(101)         -AUTO&BGP&OSPF&RIP
                 102. autoBgpIsisRip(102)         -AUTO&BGP&ISIS&RIP
                 103. autoBgpPimRip(103)          -AUTO&BGP&PIM&RIP
                 104. autoOspfIsisRip(104)        -AUTO&OSPF&ISIS&RIP
                 105. autoOspfPimRip(105)         -AUTO&OSPF&PIM&RIP
                 106. autoIsisPimRip(106)         -AUTO&ISIS&PIM&RIP
                 107. autoBgpOspfIsisRip(107)     -AUTO&BGP&OSPF&ISIS&RIP
                 108. autoBgpOspfPimRip(108)      -AUTO&BGP&OSPF&PIM&RIP
                 109. autoOspfIsisPimRip(109)     -AUTO&OSPF&ISIS&PIM&RIP
                 110. autoIsisOspfBgpPimVrrp(110) -AUTO&ISIS&OSPF&BGP&PIM&VRRP
                 111. autoIsisOspfPimVrrp(111)    -AUTO&ISIS&OSPF&PIM&VRRP
                 112. autoIsisOspfBgpVrrp(112)    -AUTO&ISIS&OSPF&BGP&VRRP
                 113. autoIsisBgpPimVrrp(113)     -AUTO&ISIS&BGP&PIM&VRRP
                 114. autoOspfBgpPimVrrp(114)     -AUTO&OSPF&BGP&PIM&VRRP
                 115. autoIsisOspfVrrp(115)       -AUTO&ISIS&OSPF&VRRP
                 116. autoIsisBgpVrrp(116)        -AUTO&ISIS&BGP&VRRP
                 117. autoOspfBgpVrrp(117)        -AUTO&OSPF&BGP&VRRP
                 118. autoIsisPimVrrp(118)        -AUTO&ISIS&PIM&VRRP
                 119. autoOspfPimVrrp(119)        -AUTO&OSPF&PIM&VRRP
                 120. autoBgpPimVrrp(120)         -AUTO&BGP&PIM&VRRP
                 121. autoIsisVrrp(121)           -AUTO&ISIS&VRRP
                 122. autoOspfVrrp(122)           -AUTO&OSPF&VRRP
                 123. autoBgpVrrp(123)            -AUTO&BGP&VRRP
                 124. autoPimVrrp(124)            -AUTO&PIM&VRRP
                 125. autoVrrp(125)               -AUTO&VRRP
                 126. autoVrrpBgp6(126)           -AUTO&VRRP&BGP6
                 127. autoOspfv3Isis6Pim6(127)    -AUTO&OSPFV3&ISIS6&PIM6
                 128. autoOspfBgpPim(128)         -AUTO&OSPF&BGP&PIM
                 129. autoIsisOspfPim(129)        -AUTO&ISIS&OSPF&PIM
                 130. autoIsisPimBgp(130)         -AUTO&ISIS&BGP&PIM
                 131. bgpOspfIsisPimRip(131)      -BGP&OSPF&ISIS&PIM&RIP
                 132. autoBgpOspfIsisPimRip(132)  -AUTO&BGP&OSPF&ISIS&PIM&RIP
                 133. bgpRsvp(133)                -BGP&RSVP
                 134. ospfRsvp(134)               -OSPF&RSVP
                 135. isisRsvp(135)               -ISIS&RSVP
                 136. pimRsvp(136)                -PIM&RSVP
                 137. ripRsvp(137)                -RIP&RSVP          
                 138. bgpOspfRsvp(138)            -BGP&OSPF&RSVP
                 139. bgpIsisRsvp(139)            -BGP&ISIS&RSVP
                 140. bgpPimRsvp(140)             -BGP&PIM&RSVP
                 141. bgpRipRsvp(141)             -BGP&RIP&RSVP
                 142. ospfIsisRsvp(142)           -OSPF&ISIS&RSVP
                 143. ospfPimRsvp(143)            -OSPF&PIM&RSVP
                 144. ospfRipRsvp(144)            -OSPF&RIP&RSVP
                 145. isisPimRsvp(145)            -ISIS&PIM&RSVP
                 146. isisRipRsvp(146)            -ISIS&RIP&RSVP
                 147. pimRipRsvp(147)             -PIM&RIP&RSVP
                 148. bgpOspfIsisRsvp(148)        -BGP&OSPF&ISIS&RSVP
                 149. bgpOspfPimRsvp(149)         -BGP&OSPF&PIM&RSVP
                 150. bgpOspfRipRsvp(150)         -BGP&OSPF&RIP&RSVP
                 151. bgpIsisPimRsvp(151)         -BGP&ISIS&PIM&RSVP
                 152. bgpIsisRipRsvp(152)         -BGP&ISIS&RIP&RSVP
                 153. bgpPimRipRsvp(153)          -BGP&PIM&RIP&RSVP
                 154. ospfIsisPimRsvp(154)        -OSPF&ISIS&PIM&RSVP
                 155. ospfIsisRipRsvp(155)        -OSPF&ISIS&RIP&RSVP
                 156. isisPimRipRsvp(156)         -ISIS&PIM&RIP&RSVP
                 157. bgpOspfIsisPimRsvp(157)     -BGP&OSPF&ISIS&PIM&RSVP
                 158. bgpOspfIsisRipRSvp(158)     -BGP&OSPF&ISIS&RIP&RSVP
                 159. bgpOspfPimRipRsvp(159)      -BGP&OSPF&PIM&RIP&RSVP
                 160. bgpIsisPimRipRsvp(160)      -BGP&ISIS&PIM&RIP&RSVP
                 161. ospfIsisPimRipRsvp(161)     -OSPF&ISIS&PIM&RIP&RSVP
                 162. bgpOspfIsisPimRipRsvp(162)  -BGP&OSPF&ISIS&PIM&RIP&RSVP       
                 163. autoRsvp(163)               -AUTO&RSVP
                 164. autoBgpRsvp(164)            -AUTO&BGP&RSVP
                 165. autoOspfRsvp(165)           -AUTO&OSPF&RSVP
                 166. autoIsisRsvp(166)           -AUTO&ISIS&RSVP
                 167. autoPimRsvp(167)            -AUTO&PIM&RSVP
                 168. autoRipRsvp(168)            -AUTO&RIP&RSVP
                 169. autoBgpOspfRsvp(169)        -AUTO&BGP&OSPF&RSVP
                 170. autoBgpIsisRsvp(170)        -AUTO&BGP&ISIS&RSVP
                 171. autoBgpPimRsvp(171)         -AUTO&BGP&PIM&RSVP
                 172. autoBgpRipRsvp(172)         -AUTO&BGP&RIP&RSVP
                 173. autoOspfIsisRsvp(173)       -AUTO&OSPF&ISIS&RSVP
                 174. autoOspfPimRsvp(174)        -AUTO&OSPF&PIM&RSVP
                 175. autoOspfRipRsvp(175)        -AUTO&OSPF&RIP&RSVP
                 176. autoIsisPimRsvp(176)        -AUTO&ISIS&PIM&RSVP
                 177. autoIsisRipRsvp(177)        -AUTO&ISIS&RIP&RSVP
                 178. autoPimRipRsvp(178)         -AUTO&PIM&RIP&RAVP
                 179. autoBgpOspfIsisRsvp(179)    -AUTO&BGP&OSPF&ISIS&RSVP
                 180. autoBgpOspfPimRsvp(180)     -AUTO&BGP&OSPF&PIM&RSVP
                 181. autoBgpOspfRipRsvp(181)     -AUTO&BGP&OSPF&RIP&RSVP
                 182. autoOspfIsisPimRsvp(182)    -AUTO&OSPF&ISIS&PIM&RSVP
                 183. autoOspfIsisRipRsvp(183)    -AUTO&OSPF&ISIS&RIP&RSVP
                 184. autoIsisPimRipRsvp(184)     -AUTO&ISIS&PIM&RIP&RSVP
                 185. autoBgpOspfIsisPimRsvp(185) -AUTO&BGP&OSPF&ISIS&PIM&RSVP
                 186. autoBgpOspfIsisRipRsvp(186) -AUTO&BGP&OSPF&ISIS&RIP&RSVP
                 187. autoOspfIsisPimRipRsvp(187) -AUTO&OSPF&ISIS&PIM&RIP&RSVP
                 188. rsvp(188)                   -RSVP
                "                       �"BFD session use default multicast IP as the detect peer-ip
                 Options:
                 1. no(1)  -do not use the default multicast IP
                 2. yes(2) -use the default multicast IP
                "                      V"The state of BFD session is associated with the state of the binding interface
                 Options:
                 1. false(1) -do not associate with interface state
                 2. true(2)  -associate with interface state
                 3. subif(3) -associate with interface and correlative sub interface
                "                      �"The binding type of the BFD session.
                 Options:
                 1. interfaceIp(1)   -BFD for IP with peer-ip and interface
                 2. peerIp(2)        -BFD for IP only with peer-ip
                 3. sourceIp(3)      -BFD for IP with peer-ip and source-ip
                 4. ifAndSourceIp(4) -BFD for IP with peer-ip, interface and source-ip
                 5. fec(5)           -BFD for FEC(NOT support now)
                 6. tunnelIf(6)      -BFD for Tunnel interface(NOT support now)
                 7. ospf(7)          -BFD for OSPF
                 8. isis(8)          -BFD for ISIS
                 9. ldpLsp(9)        -BFD for LDP-LSP
                 10. staticLsp(10)   -BFD for static LSP
                 11. teLsp(11)       -BFD for TE-LSP
                 12. teTunnel(12)    -BFD for TE-Tunnel
                 13. pw(13)          -BFD for PW;
                 14. vsiPw(15)       -BFD for VSI PW
                 15. ldpTunnel(21)   -BFD for LDP-Tunnel
                 16. bgpTunnel(22)   -BFD for BGP-Tunnel
                 17. vxlan(23)   -BFD for VXLAN
                 18. evpl(24)   -BFD for EVPN-VPWS
                "                       ("It is the next hop of the BFD session."                       /"It is the static LSP name of the BFD session."                       i"It is the index of the static LSP or LDP LSP in BFD session, mapping the channel index in MPLS network."                      "The role of the PW bound with BFD session.
                 Options:
                 1. flagMasterPW(1)    -master PW
                 2. flagSecondaryPW(2) -secondary PW
                 3. flagNoPW(3)        -no PW
                 Default: 1
                "                      A"Set the failure notifies policy type.
                 Options:
                 1. flagBothDown(1)     -notify applications when detecting both Detect-Down and Neighbor-Down
                 2. flagNeighborDown(2) -notify applications only when detecting Neighbor-Down
                 Default: 1
                "                       "It is the ID of VC."                       "It is the name of VSI."                       "It is the peer-ip of VSI."                      7"Describe whether the discriminator can be auto allocated.
                 Options:
                 1. enabled(1)   -the discriminator can be allocated automatically
                 2. disabled(2)  -the discriminator cannot be allocated automatically
                 Default: disabled
                "                       2"Define the peer IPv6 address of the BFD session."                       4"Define the source IPv6 address of the BFD session."                       ("It is the next hop of the BFD session."                       q"Whether the peer address of the BFD session is IPv6 address.
                 Default: false
                "                      *"Whether enable meticulous authentication for SHA-1 type.
                 Options:
                 1. enabled(1)  -enable meticulous authentication for SHA-1 type
                 2. disabled(2) -disabled meticulous authentication for SHA-1 type
                 Default: 2
                "                       �"Whether loose authentication check.
                 Options:
                 1. True(1)  -loose-check
                 2. False(2) -do not loose-check
                 Default: false
                "                      �"Authentication status of the bfd session
                 Options:
                 1. 0       -authentication disable
                 2. 1       -interface board do not support bfd authentication
                 3. 2       -keychain does not exist
                 4. 3       -auth BFD session number exceed
                 5. 4       -authentication in operation normally
                 100. 100   -exception
                 Default: 0
                "                      \"The value of this object identifies whether a session works in one-arm-echo mode.
                 Options:
                 1. enabled(1)  -indicates that the session works in one-arm-echo mode
                 2. disabled(2) -indicates that the session does not work in one-arm-echo mode
                 Default: disabled
                "                      �"The value of this object identifies the configuration mode of a TTL used by
                 the BFD session for PW.
                 Options:
                 1. config(1)   -indicates that the TTL is manually set
                 2. auto(2)     -indicates that the TTL is automatically calculated based on an IP address
                 3. default(3)  -indicates that the TTL is 255 by default
                 4. nottl(4)    -indicates that the TTL is not in PW mode
                "                       M"The value of this object identifies the TTL used by the BFD session for PW."                       �"The value of this object identifies the type of the destination address of the BFD
                 session for PW.
                "                       "The value of this object identifies the destination IP address of the BFD session
                 for PW.
                "                       C"This object indicates the main processing board of a BFD session."                      �"The value of this object identifies the node on which a BFD session is set up.
                 The values are as follows.
                 Options:
                 1. upe(1)  -indicates that a BFD session is set up on a UPE to detect a PW
                 2. spe(2)  -indicates that a BFD session is set up on an SPE to detect a PW
                 3. none(3) -indicates that a BFD session does not detect a PW
                 Default: none
                "                       J"This object indicates the interface monitored by the BFD session for PW."                      o"The value of this object identifies whether the BFD session for
                 PW monitors an interface. The values are as follows.
                 Options:
                 1. enabled(1)  -enables the BFD session for PW to monitor the interface
                 2. disabled(2) -disables the BFD session for PW from monitoring the interface
                "                      Z"The value of this object identifies the VC encapsulation type on an SPE.
                 The values are as follows:
                fr
                atm-aal5-sdu
                atm-trans-cell
                vlan
                ethernet
                hdlc
                ppp
                atm-nto1-vcc
                atm-nto1-vpc
                ip-layer2
                atm-1to1-vcc
                atm-1to1-vpc
                atm-aal5-pdu
                satop-e1
                satop-t1
                esopsn-basic
                ip-interworking
                "                       �"The value of this object identifies the outer tag of a sub-interface
                 for QinQ VLAN tag termination or the VLAN ID of a sub-interface for
                 dot1q VLAN tag termination.
                "                       D"The value of this object identifies the inner tag in QinQ packets."                       �"The value of this object identifies the type of the destination address of the BFD
                 session.
                "                       T"The value of this object identifies the destination IP address of the BFD session."                       v"The value of this object identifies the type of the next hop of the BFD
                 session.
                "                       F"The value of this object identifies the next hop of the BFD session."                      �"A value which indicates the set of applications that
                 this BFD session binds. Every bit indicates a application.
                 The corresponding bit and applications are as follows: 
                 bit  application
                   0  IFNET
                   1  Route-Management
                   2  OSPF
                   3  ISISL1
                   4  ISISL2
                   5  PIM
                   6  ISISL1L2
                   7  BGP
                   8  VRRP
                   9  LSPM
                  10  RSVP
                  11  LDP
                  12  TE
                  13  Product Private APP
                  14  L2VPN
                  15  OAM_MANAGER
                  16  VTE
                  17  VPW
                  18  MPLSFW
                  19  VGMP
                  20  LSPV
                  21  VSI_PW
                  22  ETHOAM
                  23  AUTO
                  24  E-TRUNK
                  25  OSPFv3
                  26  ISISL1_6
                  27  ISISL2_6
                  28  PIM6
                  29  ISISL1L2_6
                  30  BGP6
                  31  RM6
                  32  RBS
                  33  RIP
                  34  FRP
                  35  BGPLSP
                  36  STATICRTV6
                  37  STATICRT
                  38  VRRP6
                  39  PIMV6
                  40  ADM
                  41  BFD
                  42  GFD
                  43  SOCK
                  44  FES
                  45  DGNTL
                  46  BR_V5ADA
                  47  VSM
                  48  SEGR
                  49  LABELV4
                "                       b"This is the dscp value of bfd packet. 
                 255 is invalid value.
                "                       "It is the ID of PW."                       ""Description about a BFD session."                       ,"ID of the board where the session resides."                       "Session type."                       "Tunnel name."                       #"Reason why the session goes down."                        "It is the ID of EVPL instance."                       J"This table specifies BFD Session performance counters.
                "                       �"This table specifies BFD Session performance counters.
                 The index of this entry is hwBfdSessPerIndex.
                "                       �"The index of BFD session statistics.
                 This index is automatically allocated inside the system
                 and is not user-configurable.
                "                       �"The statistical information of the received Octets in local
                 system in this session.The total received packet number.
                "                       �"The statistical information of the received Octets in local
                 system in this session.The high 4 bytes of total received
                 packet number.
                "                       v"The statistical information of the send Packets in local
                 system in this session.
                "                       �"The statistical information of the send Packets in local
                 system in this session.The high 4 bytes of total send
                 packet number.
                "                       y"The statistical information of the received Errors in local
                 system in this session.
                "                       �"The statistical information of the received Errors in local
                 system in this session.The high 4 bytes of total received wrong
                 packet number.
                "                       u"The statistical information of the send Errors in local
                 system in this session.
                "                       �"The statistical information of the send Errors in local
                 system in this session.The high 4 bytes of total send
                 wrong packet number.
                "                       %"The time of session last time down."                       ""The total count of session down."                       ("The total count of session shortbreak."                       ("The time that session start detection."                       �"The Slot table of BFD.
                 BFD statistics on specify board of containing the following objects.
                "                       �"The Slot table of BFD.
                 BFD statistics on specify board of containing the following objects.
                 The index of this entry is hwBfdSlotID.
                "                       "The ID of slot."                       C"The number of session reserving for one-hop session on the board."                       9"The number of session for one-hop session on the board."                       0"The number of session on the board on current."                       >"Used to manage the creation and deletion of conceptual rows."                       "The TTL configuration table."                       �"The TTL configuration table.
                 The index of this entry is hwBfdTtlConfAddr, hwBfdTtlConfMaskLen and hwBfdTtlConfType."                       "IP address."                       "Length of IP address mask."                       �"Type of BFD session.
                 Options:
                 1. singleHop(1) -single hop bfd session
                 2. multiHop(2)  -multi hop bfd session
                "                       "TTL value."                       !"The status of this table entry."                       d"The authentication configuration table for entire dynamic bfd session on egress.
                "                       �"The authentication configuration table for entire dynamic bfd session on egress.
                 The index of this entry is hwBfdPassiveAuthPeerAddr and hwBfdPassiveAuthProtocol.
                "                       /"Specify the Lsr-id IP address of the ingress."                       �"Specify the protocol on ingress.
                 Options:
                 1. te(1)  -MPLS TE protocol
                 2. ldp(2) -MPLS LDP protocol
                "                       T"Specify the name of the keychain for authentication of entire dynamic bfd session."                      *"Whether enable meticulous authentication for SHA-1 type.
                 Options:
                 1. enabled(1)  -enable meticulous authentication for SHA-1 type
                 2. disabled(2) -disabled meticulous authentication for SHA-1 type
                 Default: 2
                "                       �"Whether loose authentication check.
                 Options:
                 1. True(1)  -loose-check
                 2. False(2) -do not loose-check
                 Default: false
                "                       !"The status of this table entry."                           �"This trap occurred when the state of the BFD session
                 became down. The BFD session is characterized
                 by the objects in this node.
                "                 �"This trap occurred when the state of the BFD session
                 became up. The BFD session is characterized
                 by the objects in this node.
                "                 E"There is the notify when the session number reach the global limit."                 H"There is the notify when the session number reach the interface limit."                 R"There is the notify when the session number reach the global limit was cleared. "                 U"There is the notify when the session number reach the interface limit was cleared. "                 ]"This notification is generated when the virtual access AP process BFD configuration failed."                 �"This trap occurred when the state of the BFD session
                 became down. The BFD session is characterized
                 by the objects in this node.
                "                 �"This trap occurred when the state of the BFD session
                 resume from down state. The BFD session is characterized
                 by the objects in this node.
                "                 8"This trap occurred when failed to config access point."                 �"This trap occurred when the state of the BFD session
                 FSM's board is different from the monitored link's board.
                 The BFD session is characterized by the objects in this node.
                "                 �"This trap occurred when the state of the BFD session
                 FSM's board is the same as the monitored link's board.
                 The BFD session is characterized by the objects in this node.
                "                 �"This trap occurred when the state of the BFD IPv6 session
                 became down. The BFD session is characterized
                 by the objects in this node.
                "                 �"This trap occurred when the state of the BFD IPv6 session
                 became up. The BFD session is characterized
                 by the objects in this node.
                "                 Y"There is the notify when the bit-error-detection session number reach the global limit."                 d"The session number in all the IO boards has reached the limit, the new session can not be created."                 e"The number of BFD sessions is restored within the specified range, the new session can be created. "                         o"The compliance statement for entities which
                 implement the Huawei BFD MIB.
                "                   ;"A collection of objects providing BFD global information."                 <"A collection of objects providing BFD session information."                 -"A collection of objects which are obsolete."                 "A collection of traps."                         6"The VLANID binding to BFD session.
                "                       4"The name of user failed to configure access point."                       :"The IP-address of user failed to configure access point."                       1"The ID of access point failed to be configured."                       0"The operation of confiuration to access point."                       1"The reason of failed to configure access point."                                       �"This notification is generated when the bfdSessState
                 object for one entry in bfdSessionTable is about to 
                 enter the up(3) state from some other state.
                "                 �"This notification is generated when the bfdSessState
                 object for one entry in bfdSessionTable is about to 
                 enter the down(1) or adminDown(0) states from some 
                 other state.
                "                 �"This notification is generated when the bfdSessState
                 object for one entry in bfdSessionTable is about to 
                 enter the up(3) state from some other state.
                "                 �"This notification is generated when the bfdSessState
                 object for one entry in bfdSessionTable is about to 
                 enter the down(1) or adminDown(0) states from some 
                 other state.
                "                 �"This notification is generated when the bfdSessState
                 object for one entry in bfdSessionTable is about to 
                 enter the up(3) state from some other state.
                "                 �"This notification is generated when the bfdSessState
                 object for one entry in bfdSessionTable is about to 
                 enter the down(1) or adminDown(0) states from some 
                 other state.
                "                 �"This notification is generated when the bfdSessState
                 object for one entry in bfdSessionTable is about to 
                 enter the up(3) state from some other state.
                "                 �"This notification is generated when the bfdSessState
                 object for one entry in bfdSessionTable is about to 
                 enter the down(1) or adminDown(0) states from some 
                 other state.
                "                            