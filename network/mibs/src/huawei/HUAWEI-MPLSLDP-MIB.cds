r-- ===================================================================
-- Copyright (C) 2014 by HUAWEI TECHNOLOGIES. All rights reserved.
-- Description: This MIB contains private managed object and notification 
--              trap definitions for MPLS LDP.
-- Reference:
-- Version: V2.46
-- ===================================================================
                                     l"This MIB contains private managed object and notification trap 
                definitions for MPLS LDP." �"Huawei Industrial Base
                 Bantian, Longgang
                 Shenzhen 518129
                 People's Republic of China 
                 Website: http://www.huawei.com
                   Email: support@huawei.com
                " "201411061640Z" "201408221126Z" "201405281126Z" "201401151600Z" "201307151600Z" "201306141000Z" "201301151000Z" "201301071000Z" "201207141000Z" "201111161000Z" "201109281000Z" "201109071000Z" "201105101000Z" "201008111600Z" "201007121600Z" "200903101600Z" �"V2.46, delete LDP GR timer  range's validity check, include hwLdpGrNeighborLivenessTimer,hwLdpGrReconnectTimer,hwLdpGrRecoveryTimer." O"V2.45, add hwMplsLdpSessionDownReason object type sessionProtectTimerExp(30)." �"V2.44, add four nodes for LDP session statistics: hwLdpLocalOperationalSessionNumber, hwLdpRemoteOperationalSessionNumber,
	            hwLdpLocalAndRemoteOperationalSessionNumber and hwLdpTotalOperationalSessionNumber." D"V2.43, add hwMplsLdpSessionDownReason object type modifyMp2mp(29)." C"V2.42, add hwMplsLdpSessionDownReason object type modifyP2mp(28)." �"V2.41, add trap hwMplsLdpHostIngressLspDownClear, hwMplsLdpHostIngressLspDown, and the trap VB:
        hwLdpLspDownReason, hwLdpLspDownMplsLsrId, hwLdpLspDownOutIfIndex, hwLdpLspDownOutIfMainIp, hwLdpLspDownOutIfState, hwLdpLspDownDownstreamPeerLsrId."D"V2.30,  modify the name for these nodes:hwLdpPolicyPeerGroupOutBoundRange, hwLdpPolicyPeerGroupOutBoundFecIpPrefix,
            hwLdpPolicyPeerGroupOutBoundBgpRange, hwLdpPolicyPeerGroupOutBoundBgpIpPrefix, hwLdpPolicyPeerGroupInBoundRange,
            hwLdpPolicyPeerGroupInBoundIpPrefix, hwLdpPolicyPeerGroupRowStatus.correct name is :hwLdpPeerGroupOutBoundRange,hwLdpPeerGroupOutBoundFecIpPrefix,
            hwLdpPeerGroupOutBoundBgpRange, hwLdpPeerGroupOutBoundBgpIpPrefix, hwLdpPeerGroupInBoundRange,
            hwLdpPeerGroupInBoundIpPrefix, hwLdpPeerGroupRowStatus." X"V2.20, add two nodes hwLdpRemoteLocalLsrIdIfIndex and hwLdpInterfaceLocalLsrIdIfIndex." ."V2.10, set the length of hwLdpPeerGroupName." �"V2.02, delete the default value in the description for these nodes: hwLdpGrReconnectTimer, hwLdpGrRecoveryTimer, hwLdpGrNeighborLivenessTimer."["V2.01, modify the description for these nodes: hwMplsLdpSessionTable, hwMplsLdpSessionEntry, hwMplsLdpSessionStateTable, hwMplsLdpSessionStateEntry,
hwMplsLspTriggerIpPrefix, hwMplsLspTriggerBgpRouteIpPrefix, hwLdpDeleteGtsmAll, hwMplsFrrLspTriggerIpPrefix, hwLdpVpnTable, hwLdpVpnEntry, hwMplsVpnFrrLspTriggerIpPrefix,
hwLdpRemoteEntityTable, hwLdpRemoteEntityEntry, hwLdpPeerTable. change the SYNTAX from DisplayString to OCTET STRING for these nodes: hwLdpPropagateIpPrefix,
hwMplsLspTriggerIpPrefix, hwMplsLspTriggerBgpRouteIpPrefix, hwMplsFrrLspTriggerIpPrefix, hwMplsVpnFrrLspTriggerIpPrefix."1"V2.00, modify the description for these nodes, hwMplsLspTriggerIpPrefix, hwMplsLspTrigger, hwMplsFrrLspTriggerIpPrefix, hwMplsFrrLspTrigger, 
hwLdpOutBoundPolicyPeerAllFecIpPrefix, hwLdpOutBoundPolicyPeerAllRange, hwLdpInBoundPolicyPeerAllIpPrefix, 
hwLdpInBoundPolicyPeerAllRange, hwLdpOutBoundPolicyPeerAllBgpIpPrefix, hwLdpOutBoundPolicyPeerAllBgpRange, 
hwMplsVpnFrrLspTrigger, hwMplsVpnFrrLspTriggerIpPrefix, hwLdpPeerOutBoundPolicyRange, hwLdpPeerOutBoundPolicyFecIpPrefix, 
hwLdpPeerOutBoundPolicyBgpRange, hwLdpPeerOutBoundPolicyBgpIpPrefix, hwLdpPeerOutBoundPolicyFecRange, 
hwLdpPeerInBoundPolicyFecIpPrefix, hwLdpPeerGroupOutBoundRange, hwLdpPeerGroupOutBoundFecIpPrefix, hwLdpPeerGroupOutBoundBgpRange, 
hwLdpPeerGroupOutBoundBgpIpPrefix, hwLdpPeerGroupInBoundRange, hwLdpPeerGroupInBoundIpPrefix." �"V1.03, add four nodes for MPLS LDP Graceful-Delete, hwLdpVpnGracefulDeleteCapability, hwLdpVpnGracefulDeleteTimer, hwLdpGracefulDeleteCapability, hwLdpGracefulDeleteTimer." &"V1.02, some description is modified." ."V1.01, some nodes support the set operation." "V1.00, initial version."       ,-- Nov 6, 2014 at 16:40:00 GMT            
           d"This object indicates the process name of LDP running on the router. By default, the value is LDP."                       �"This object indicates the destination address of an LSP. 
                 The value is either a destination IP address or a prefix of an IP address."                       _"This object indicates that labels are pushed into all the packets for direct MPLS forwarding."                       M"This object indicates that all the packets swap labels for MPLS forwarding."                       U"The value of this object identifies the index of the outgoing interface of the LSP."                      6"This object indicates the cause that the LSP becomes Down.
                 Options:
                 1. routeDelete(1)          -indicates that a route has been deleted.
                 2. lspmNotify(2)           -indicates that LSPM notify.
                 3. canNotRecoveryFromGr(3) -indicates that the recovery from GR was failed.
                 4. recvReleaseMsg(4)       -indicates that the release message was received.
                 5. recvWithdrawMsg(5)      -indicates that the withdraw message was received.
                 6. upStreamLost(6)         -indicates that the upstream route was lost.
                 7. downStreamLost(7)       -indicates that the downstream route was lost.
                 8. otherReason(8)          -indicates that another cause was involved.
                "                       �"This object is used to display the session parameters and session age.
                 The index of this table is hwMplsLdpSessionPeerLsrId.
                "                       �"This object is used to display the session parameters and session age.
                 The index of this entry is hwMplsLdpSessionPeerLsrId.
                "                       <"This object indicates the LSR ID of the peer in a session."                       W"This object indicates the index of the interface on which the session is established."                      5"This object indicates the cause that the session becomes Down.
                 Options:
                 1. sessionUp(0)                  -indicates that the session was Up.
                 2. helloHoldTimerExp(1)          -indicates that the Hello hold timer expired.
                 3. ssnHoldTimerExp(2)            -indicates that the session hold timer expired.
                 4. resetMplsLdp(3)               -indicates MPLS LDP was reset.
                 5. undoMplsLdp(4)                -indicates that MPLS LDP was disabled.
                 6. undoMpls(5)                   -indicates that MPLS was disabled.
                 7. undoMplsLdpRemotePeer(6)      -indicates that the remote peer was deleted.
                 8. modifyGRConfig(7)             -indicates that GR capability was modified.
                 9. modifyGRTimer(8)              -indicates that the GR timer was modified.
                 10. modifyKeepaliveTimer(9)      -indicates that the keepalive timer was modified.
                 11. modifyMD5Config(10)          -indicates that MD5 was configured.
                 12. ssnRoleSwitch(11)            -indicates that the session role was switched.
                 13. modifyMTUConfig(12)          -indicates that the MTU was modified.
                 14. modifyTransportAddress(13)   -indicates that the transport address was modified.
                 15. modifyLDPLsrID(14)           -indicates that the LDP LSR ID was modified.
                 16. recvNotification(15)         -indicates that the notification message was received.
                 17. transportAddressNotMatch(16) -indicates that the transport address was not matched.
                 18. protocolGR(17)               -indicates that the protocol GR was in processing.
                 19. ifStatusChanged(18)          -indicates that the interface status was changed.
                 20. tcpDown(19)                  -indicates that TCP was Down.
                 21. otherReason(20)              -indicates that another cause was involved.
                 22. sentNotification(21)         -indicates that the notification was sent.
                 23. canntBuildSessionRelation(22)    -indicates that the session relation cannot be built.
                 24. receiveErrorMessageFromPeer(23)  -indicates that error message from peer was received.
                 25. receiveSocketError(24)        -indicates that error pakcet from socket was received.
                 26. sessionDelete(25)           -indicates that the session was deleted.
                 27. modifyCapabilityAnnouncementConfig(26)    -indicates that the capability-announcement was modified.
                 28. modifyLocalLsrID(27)     -indicates that the Local LSR ID was modified.
                 29. modifyP2MP(28)               -indicates that the mLDP P2MP was modified.
                 30. modifyMP2MP(29)            -indicates that the mLDP MP2MP was modified.
                 31. sessionProtectTimerExp(30)        -indicates that the session protection timer expired.
                "                       A"This object indicates the duration since the session is set up."                       �"This object is used to display the detailed state parameters of the session.
                 The index of this table is hwMplsLdpSessionPeerId.
                "                       �"This object is used to display the detailed state parameters of the session.
                 The index of this entry is hwMplsLdpSessionPeerId.
                "                       U"This object indicates the LSR ID of the LDP peer to which the session is connected."                       0"This object indicates the ID of the local LSR."                       ;"This object indicates the TCP link status of the session."                       :"This object indicates the current status of the session."                       *"This object indicates the session roles."                       A"This object indicates whether the FT of the session is enabled."                       @"This object indicates whether the MD5 is enabled for the peer."                       �"This object indicates the value of the GR reconnection timer after the negotiation.
                 Unit: seconds
                "                       �"This object indicates the value of the GR recovery timer after the negotiation.
                 Unit: seconds
                "                       �"This object indicates the value of the KeepAlive timer after the negotiation.
                 Unit: seconds
                "                       V"This object indicates the number of the KeepAlive messages that the session obtains."                       T"This object indicates the number of the KeepAlive messages that the session sends."                       C"This object indicates the label distribution mode of the session."                       O"This object indicates the status of the local label resources of the session."                       J"This object indicates the status of the label resources of the LDP peer."                       :"This object indicates the existence time of the session."                       �"This object indicates the global configuration or deletion of the LDP capability. 
                 Before enabling LDP capability, ensure that the MPLS capability is enabled globally."                       �"This object indicates the way to change the LDP LSR ID. 
                 The default LDP LSR ID has the same value as the MPLS LSR ID. 
                 It is recommended not to change the LDP LSR ID unless necessary."                       "This object indicates the configuration or deletion of the transit policy for the LDP. 
                 The object has a valid length ranging from 1 to 169 characters. 
                 The length 0 characters shows that the transit policy is deleted."                      U"This object indicates the configuration or deletion of the policy for the LDP remote session. 
                 When the object is enabled, it is forbidden to send mapping message to the remote peer. 
                 By default, the policy is disabled, which means that there is no limitation to send mapping message to the remote peer."                       �"This object indicates the configuration or deletion of the MTU signaling function. 
                 By default, the MTU signaling function is enabled, and the MTU TLV type in the LDP message is 0x900.
                "                       �"This object conflicts with the object hwLdpMtuSignaling. 
                 If the object is enabled, it indicates that the MTU TLV type in the LDP message is 0x601 according to the RFC 3988."                       O"This object indicates the configuration or deletion of the LDP GR capability."                       "This object indicates the way to configure the value of GR neighbor life timer.
                 When the status of hwLdpGrCapabilityConfig is enabled, the default value returned by the object is valid.
                 Unit: seconds 
                "                       �"This object indicates the way to configure the value of GR reconnect timer.
                 When the status of hwLdpGrCapabilityConfig is enabled, the default value returned by the object is valid. 
                 Unit: seconds 
                "                       �"This object indicates the way to configure the value of GR recovery timer.
                 When the status of hwLdpGrCapabilityConfig is enabled, the default value returned by the object is valid.
                 Unit: seconds 
                "                      �"This object indicates the way to configure the LDP policy for the ingress LSP and egress LSP.
                 Options:
                 1. all(1)      -indicates that all FECs are triggered for the IGP.
                 2. none(2)     -indicates that no FEC is triggered for the IGP.
                 3. host(3)     -indicates that the host FEC is triggered for the IGP.
                 4. ipprefix(4) -indicates that the ip-prefix list is triggered for the IGP. 
                                 If the object is set as ipprefix, the value of hwMplsLspTriggerIpPrefix must be set together.
                 Default: host
                "                      ("This object indicates the IP prefix when configuring the LDP policy for the ingress LSP and egress LSP.
                 The object has a valid length ranging from 1 to 169 characters. 
                 If the object is set with a value, the value of hwMplsLspTrigger must be set as ipprefix."                       �"This object indicates the policy of triggering the BGP route to create the LDP LSP.
                 Default: disabled
                "                       �"This object indicates the IP prefix when triggering the BGP route to create the LDP LSP.
                 The object has a valid length ranging from 1 to 169 characters. "                      _"This object indicates the reset of the LDP protocol.
                 Options:
                 1. reset(1)    -indicates the reset of the LDP protocol.
                 2. resetall(2) -indicates the reset of all LDP instances.
                 3. ready(3)    -indicates that it is ready to reset LDP. This value cannot be set.
                "                       ~"This object indicates the way to set the flag of global split horizon.
                 Default: disabled
                "                      /"This object indicates the deletion of the global GTSM configurations.
                Options:
                1. delete(1) -indicates that global GTSM configurations are to be deleted.
                2. ready(2)  -indicates that it is ready to delete global GTSM configurations.
                "                      �"This object indicates the way to configure the LDP policy of global instance for LDP Auto FRR.
                 Options:
                 1. all(1)      -indicates that all FECs are triggered for the IGP.
                 2. none(2)     -indicates that no FEC is triggered for the IGP.
                 3. host(3)     -indicates that the host FEC is triggered for the IGP.
                 4. ipprefix(4) -indicates that the ip-prefix list is triggered for the IGP. 
                                 If the object is set as ipprefix, the value of hwMplsFrrLspTriggerIpPrefix must be set together.
                 Default: host
                "                      &"This object indicates the IP prefix when configuring LDP Auto FRR for the public network instance.
                 The object has a valid length ranging from 1 to 169 characters. 
                 If the object is set with a value, the value of hwMplsFrrLspTrigger must be set as ipprefix."                       �"This object indicates the initial value of backoff timer.
                 Default: 15
                 Unit: seconds
                "                       �"This object indicates the maximum value of backoff timer.
                 Default: 120
                 Unit: seconds
                "                       �"This object indicates that the LDP is enabled with the function of searching for routes according to the longest match rule to establish LSPs.
                 Default: disabled
                "                       �"The value of this object identifies whether the remote peer is globally enabled with the capability of automatically sending a DoD request."                       V"The value of this object identifies whether LDP has Capability-Announcement ability."                       �"This object is used to configure or delete the LDP multi-instance.
                 The index of this table is hwLdpVpnInstanceId.
                 Make sure the relevant VPN instance is already created.
                "                       �"This object is used to configure or delete the LDP multi-instance.
                 The index of this entry is hwLdpVpnInstanceId.
                 Make sure the relevant VPN instance is already created.
                "                       �"This object indicates the ID of the VPN instance. 
                 You can find the correct VPN instance ID based on hwL3vpnVrfIndex of hwL3vpnStatisticsTable."                      
"This object indicates the way to configure the LDP LSR ID. 
                 If the value of the LDP LSR ID is the same as the value of the MPLS LSR ID, the LDP LSR ID is deleted. 
                 It is recommended not to change the LDP LSR ID unless necessary."                       �"This object indicates the way to set the flag of split horizon for all LDP VPN peers.
                 Default: disabled
                "                      E"This object indicates the reset of the LDP multi-instance corresponding to the VPN.
                 Options:
                 1.reset(1) -indicates that the LDP multi-instance will be reset.
                 2.ready(2) -indicates that it is ready to reset ldp multi-instance. This value cannot be set.
                "                      n"This object indicates the way to configure the LDP policy of vpn instance for LDP Auto FRR.
                 Options:
                 1. all(1)      -indicates that all FECs are triggered for the IGP.
                 2. none(2)     -indicates that no FEC is triggered for the IGP.
                 3. host(3)     -indicates that the host FEC is triggered for the IGP.
                 4. ipprefix(4) -indicates that the ip-prefix list is triggered for the IGP. 
                                 If the object is set as ipprefix, the value of hwMplsVpnFrrLspTriggerIpPrefix must be set together.
                "                      -"This object indicates the IP prefix when configuring the LDP policy of vpn instance for LDP Auto FRR. 
                 The object has a valid length ranging from 1 to 169 characters. 
                 If the object is set with a value, the value of hwMplsVpnFrrLspTrigger must be set as ipprefix."                       a"This object indicates whether the LDP graceful-delete capability is enabled for a VPN instance."                      3"The value of this object identifies the value of a graceful-delete timer for a VPN instance. 
                 When the status of hwLdpVpnGracefulDeleteCapability is enabled, the default value returned by the object is valid.
                 Default: 5
                 Unit: seconds
                "                      L"This object indicates whether one entry of hwLdpVpnTable is created or destroyed. 
                 The value of this object can be CreatAndGo or Destroy. 
                 When the value of the object is set as CreatAndGo, and the entry is correctly created, 
                 the status of the object will change into active."                       �"This object is used to configure or delete the LDP remote peer.
                 The index of this table is hwLdpRemoteName.
                "                       �"This object is used to configure or delete the LDP remote peer.
                 The index of this entry is hwLdpRemoteName.
                "                       s"This object indicates the name of the LDP remote peer.
                 Range: 1-32 characters
                "                      '"This object indicates the configuration of the remote peer LSR ID. 
                 If being set, the ID cannot be modified. 
                 To modify the ID, delete the original ID and create a new one. 
                 If the ID is set as 0.0.0.0, it indicates that the ID is deleted."                      "This object indicates the configuration or deletion of the policy for the remote LDP session. 
                 When the object is enabled, it is forbidden to send the mapping message to the remote peer.
                 Default: disabled
                "                       �"This object indicates the value of LDP Keepalive timer.
                 Default: 45
                 Unit: seconds
                "                       �"This object indicates the value of LDP Hello hold timer.
                 Default: 45
                 Unit: seconds
                "                       �"This object indicates the value of LDP Keepalive send timer. 
                 By default, the value of the timer is 0, configuration does not take effect.
                 Default: 0
                 Unit: seconds
                "                       �"This object indicates the value of LDP Hello send timer. 
                 By default, the value of the timer is 0, configuration does not take effect.
                 Default: 0
                 Unit: seconds
                "                       �"This object indicates the value of IGP-Sync timer.
                 Default: 10
                 Unit: seconds
                "                       �"This object identifies whether the remote peer is enabled with the capability of automatically sending a DoD request.
                 Default: disabled
                "                       �"This object indicates whether the remote ip auto dod request function blocked.
                 Default: disabled
                "                      "This object indicates the label distribution mode.
                 Options:
                 1. dod(1) -indicates that the label distribution mode is dod.
                 2. du(2)  -indicates that the label distribution mode is du.
                 Default: du 
                "                      �"This object indicates the way to specify the interface that the local LDP LSR-ID based on remote entity is assigned to. 
                 Value: 0..2147483647  
                 The default value of the object is the interface that the global LDP LSR ID is assigned to. 
                 If the global LDP LSR ID is not assigned to any interface, then the value of the object is 0.
                 If set 0, the value of the object will be the default value.
                 "                      U"This object indicates whether one entry of hwLdpRemoteEntityTable is created or destroyed. 
                 The value of this object can be CreatAndGo or Destroy. 
                 When the value of the object is set as CreatAndGo, and the entry is correctly created, 
                 the status of the object will change into active."                       "This object is used to configure the LDP peer.
                 The index of this table is hwLdpPeerLsrId.
                "                      "An entry of the peer feature table, used to configure and display features, 
                 such as the MD5 password and split horizon policy negotiated with the local peer.
                 The index of this entry is hwLdpPeerLsrId.
                "                       3"This object indicates the LSR ID of the LDP peer."                      �"This object indicates the Md5 type.
                 Options:
                 1. cipher(1) -indicates that the MD5 password is in cipher text mode.
                 2. plain(2)  -indicates that the MD5 password is in plain text mode.
                 3. null(3)   -indicates that the MD5 type is null, which means that the MD5 authentication is not configured for the LDP peer. 
                "                       �"This object indicates the MD5 password of LDP neighbor. 
                 To delete the password, set the password length as zero.
                 When read, it always returns an Octet string with the length of zero.
                "                       �"This object indicates the number of GTSM hops. 
                 The valid number of GTSM hops ranges from 1 to 255. 
                 To clear the configuration of GTSM hops, set the number of GTSM hops as 0."                       �"This object indicates the way to set the flag of split horizon for the specified LDP peer.
                 Default: disabled
                "                      j"This object indicates the reset of the neighbor services.
                 Options:
                 1. reset(1) -indicates that the neighbor services will be reset. Only when the object is ready, can this value take effect.
                 2. ready(2) -indicates that it is ready to reset the neighbor services. This value cannot be set.
                "                       t"This object indicates the Keychain name. To cancel the Keychain authentication, set the Keychain name length as 0."                       �"This object indicates the range of IGP routes for an outbound policy. The default value is clear. 
                 If the object is set as ipprefix, the value of hwLdpPeerOutBoundPolicyFecIpPrefix must be set together."                       �"This object indicates the IP prefix list name of IGP routes for an outbound policy. 
                 If the object is set with a value, the value of hwLdpPeerOutBoundPolicyRange must be set as ipprefix."                       �"This object indicates the range of BGP routes for an outbound policy. The default value is clear. 
                 If the object is set as ipprefix, the value of hwLdpPeerOutBoundPolicyBgpIpPrefix must be set together."                       �"This object indicates the IP prefix list name of BGP routes for the outbound policy. 
                 If the object is set with a value, the value of hwLdpPeerOutBoundPolicyBgpRange must be set as ipprefix."                       �"This object indicates the route range for the inbound policy. The default value is clear. 
                 If the object is set as ipprefix, the value of hwLdpPeerInBoundPolicyFecIpPrefix must be set together."                       �"This object indicates the IP prefix list name for the inbound policy. 
                 If the object is set with a value, the value of hwLdpPeerInBoundPolicyRange must be set as ipprefix."                      M"This object indicates whether one entry of hwLdpPeerTable is created or destroyed. 
                 The value of this object can be CreatAndGo or Destroy. 
                 When the value of the object is set as CreatAndGo, and the entry is correctly created, 
                 the status of the object will change into active."                      $"This table is used to create and delete peer configurations in the LDP multi-instance.
                 The indexs of this table are hwLdpVpnInstanceId, hwLdpVpnPeerLsrId.
                 Make sure the corresponding LDP VPN-instance is already created in hwLdpVpnTable.
                "                      �"An entry of the VPN peer feature table, used to configure and display features, 
                 such as the MD5 password and split horizon policy negotiated with the local peer on the VPN.
                 The indexs of this entry are hwLdpVpnInstanceId, hwLdpVpnPeerLsrId.
                 Make sure the corresponding LDP VPN-instance is already created in hwLdpVpnTable.
                "                       3"This object indicates the LSR ID of the LDP peer."                      x"This object indicates the Md5 type.
                 1. cipher(1) -indicates that the MD5 password is in cipher text mode.
                 2. plain(2)  -indicates that the MD5 password is in plain text mode.
                 3. null(3)   -indicates that the MD5 type is null, which means that the MD5 authentication is not configured for the LDP peer. 
                "                       �"This object indicates the MD5 password of VPN LDP neighbor. 
                 To delete the password, set the password length as zero.
                 When read, it always returns an Octet string with the length of zero.
                "                       �"This object indicates the way to set the flag of split horizon for the specified LDP peer.
                 Default: disabled
                "                      j"This object indicates the reset of the neighbor services.
                 Options:
                 1. reset(1) -indicates that the neighbor services will be reset. Only when the object is ready, can this value take effect.
                 2. ready(2) -indicates that it is ready to reset the neighbor services. This value cannot be set.
                "                       t"This object indicates the Keychain name. To cancel the Keychain authentication, set the Keychain name length as 0."                      P"This object indicates whether one entry of hwLdpVpnPeerTable is created or destroyed. 
                 The value of this object can be CreatAndGo or Destroy. 
                 When the value of the object is set as CreatAndGo, and the entry is correctly created, 
                 the status of the object will change into active."                       �"This table is used to configure or delete the LDP capability on the interface.
                 The index of this table is hwLdpInterfaceIndex.
                "                       �"An entry of the LDP interface table, 
                 used to configure and display the LDP negotiation parameters on the interface enabled with LDP capabilities.
                 The index of this entry is hwLdpInterfaceIndex.
                "                       �"This object indicates the interface index. 
                 You can get the correct interface index based on ifIndex of ifTable."                       �"This object indicates the value of static FRR protect timer.
                 Default: 10
                 Unit: seconds
                "                       �"This object indicates the value of Keepalive timer.
                 Default: 45
                 Unit: seconds
                "                       �"This object indicates the value of IGP-Sync timer. By default, the timer is set to 10 seconds.
                 Default: 10
                 Unit: seconds
                "                       �"This object indicates the value of Hello hold timer. By default, the value of the timer is 15 seconds.
                 Default: 15
                 Unit: seconds
                "                      �"This object indicates the way to specify the interface that the Transport Address is assigned to. 
                 Value: 0..2147483647
                 The default value of the object for the public interface is the interface that the LDP LSR ID is assigned to. 
                 If the LDP LSR ID is not assigned to any interface, then the value of the object is 0, and 0 cannot be set.
                 The default value of the object for the private interface is the private interface itself. 
                 Based on mplsL3VpnIfConfRowStatus of mplsL3VpnIfConfTable, you can find which interface belongs to the VPN.
                 The interface must be bound with the same VPN instance.
                 "                       �"This object indicates the value of LDP Keepalive send timer.
                 Default: 0
                 Unit: seconds
                "                       �"This object indicates the value of LDP Hello send timer.
                 Default: 0
                 Unit: seconds
                "                      "This object indicates the label distribution mode.
                 Options:
                 1. dod(1) -indicates that the label distribution mode is dod.
                 2. du(2)  -indicates that the label distribution mode is du.
                 Default: du 
                "                      �"This object indicates the way to specify the interface that the local LDP LSR-ID based on interface is assigned to. 
                 Value: 0..2147483647  
                 The default value of the object for the public interface is the interface that the global LDP LSR ID is assigned to. 
                 If the global LDP LSR ID is not assigned to any interface, then the value of the object is 0.
                 If set 0, the value of the object will be the default value.
                 The default value of the object for the private interface is the interface that the global LDP LSR ID of VPN Instance is assigned to. 
                 Based on mplsL3VpnIfConfRowStatus of mplsL3VpnIfConfTable, you can find which interface belongs to the VPN.
                 The interface which the object specified must be bound with the same VPN instance with the interface which is configured.
                 "                      R"This object indicates whether one entry of hwLdpInterfaceTable is created or destroyed. 
                 The value of this object can be CreatAndGo or Destroy. 
                 When the value of the object is set as CreatAndGo, and the entry is correctly created, 
                 the status of the object will change into active."                       5"This table is used to configure an LDP peer group. "                       "An entry of this table."                       1"This object indicates the name of a peer group."                       �"This object indicates the range of IGP routes for an outbound policy. 
                 The default value is clear. If the object is set as ipprefix, the value of hwLdpPeerGroupOutBoundFecIpPrefix must be set together."                       �"This object indicates the IP prefix list name of IGP routes for an outbound policy. 
                 If the object is set with a value, the value of hwLdpPeerGroupOutBoundRange must be set as ipprefix."                       �"This object indicates the range of BGP routes for an outbound policy. The default value is clear. 
                 If the object is set as ipprefix, the value of hwLdpPeerGroupOutBoundBgpIpPrefix must be set together."                       �"This object indicates the IP prefix list name of BGP routes for an outbound policy. 
                 If the object is set with a value, the value of hwLdpPeerGroupOutBoundBgpRange must be set as ipprefix."                       �"This object indicates the route range for an inbound policy. The default value is clear. 
                 If the object is set as ipprefix, the value of hwLdpPeerGroupInBoundIpPrefix must be set together."                       �"This object indicates the IP prefix list name of routes for an inbound policy. 
                 If the object is set with a value, the value of hwLdpPeerGroupInBoundRange must be set as ipprefix."                      "This object indicates whether one entry of hwLdpPolicyPeerGroupTable is created or destroyed. The value of this object is CreatAndGo or Destroy. When the value of the object is set to CreatAndGo, and the entry is correctly created, the status of the object will change into active."                       �"This object indicates the range of IGP routes for a global outbound LDP policy. The default value is all.
                 If the object is set as ipprefix, the value of hwLdpOutBoundPolicyPeerAllFecIpPrefix  must be set together."                       �"This object indicates the IP prefix list name of IGP routes for a global outbound LDP policy. The default value is NULL. 
                 If the object is set with a value, the value of hwLdpOutBoundPolicyPeerAllRange must be set as ipprefix."                       �"This object indicates the range of BGP routes for a global outbound LDP policy. The default value is all.
                 If the object is set as ipprefix, the value of hwLdpOutBoundPolicyPeerAllBgpIpPrefix must be set together."                       �"This object indicates the IP prefix list name of BGP routes for a global outbound LDP policy. The default value is NULL. 
                 If the object is set with a value, the value of hwLdpOutBoundPolicyPeerAllBgpRange must be set as ipprefix."                       �"This object indicates the range of routes for a global inbound LDP policy. The default value is all.
                 If the object is set as ipprefix, the value of hwLdpInBoundPolicyPeerAllIpPrefix must be set together."                       �"This object indicates the IP prefix list name of routes for a global inbound LDP policy. The default value is NULL. 
                 If the object is set with a value, the value of hwLdpInBoundPolicyPeerAllRange must be set as ipprefix."                       N"This object indicates whether the LDP graceful-delete capability is enabled."                      "The value of this object identifies the value of a graceful-delete timer. 
                 When the status of hwLdpGracefulDeleteCapability is enabled, the default value returned by the object is valid.
                 Default: 5
                 Unit: seconds
                "                      �"The LDP LSP down reason. 
                 Options:
                 1. other(1)                     -indicates other reasons.
                 2. session down(2)   		 -indicates the ldp session went down.
                 3. route change(3)   		 -indicates the route changed.
                 4. cannot recovery from GR(4)   -indicates LSP cannot recovery from graceful-restart.
                 5. policy change(5)             -indicates the policy changed.
                "                       4"This object indicates the LSR ID of failed router."                       J"This object indicates the outgoing interface index of the failed router."                       V"This object indicates the main ip address of the failed router's outgoing interface."                      "The state of the failed router's outgoing interface. 
                 Options:
                 1. up(1)      -indicates that the state of the outgoing interface is Up.
                 2. down(2)    -indicates that the state of the outgoing interface is Down.
                "                       E"This object indicates the failed router's downstream peer's LSR ID."                           E"This object indicates the number of local LDP operational sessions."                       F"This object indicates the number of remote LDP operational sessions."                       P"This object indicates the number of local and remote LDP operational sessions."                       E"This object indicates the total number of LDP operational sessions."                           }"When the trap indicating that a session is down is sent, the cause for the down LDP session is displayed.
                "                 k"When the trap indicating that a session is down is sent, the cause for the down LSP session is displayed."                 I"A trap is sent to clear the down trap of a specified FEC's ingress lsp."                 G"A trap is sent when all the ingress lsp of a specified FEC went down."                     Z"The Compliance statement for systems supporting
                the HUAWEI-MPLSLDP-MIB."                   "Infomation about LDP LSP."                 /"Notification information included in the mib."                     	"No use."                     -"Information about Ldp Global configuration."                 *"Information about Ldp Vpn configuration."                 ""Information about remote entity."                 "Information about Ldp Peer."                 !"Information about Ldp Vpn Peer."                 -"Information about Ldp interface capability."                 0"Information about Ldp ingress Lsp down reason."                 /"Notification information included in the mib."                     0"Information about Ldp Policies of peer groups."                 *"Information about Ldp FRR protect timer."                 +"Information about Ldp Session Statistics."                            