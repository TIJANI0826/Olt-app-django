-- ==================================================================
-- Copyright (C) 2005 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description:  HUAWEI Layer Two MAC management MIB
-- Reference:
-- Version: V1.0
-- History:
-- ==================================================================
-- HUAWEI-MPLSOAM-MIB.mib
-- ==================================================================
-- 
-- Variables and types to be imported
--
-- ==================================================================
                    "The HUAWEI-MPLSOAM-MIB contains objects to configure OAM module. 
				The Operation, Administration and Maintenance (OAM) 
				is an effective means for decreasing the cost of network maintenance. 
				The MPLS OAM is used to administrate and maintain MPLS.  "H"R&D BeiJing, Huawei Technologies co.,Ltd.
            	Huawei Bld.,NO.3 Xinxi Rd., 
            	Shang-Di Information Industry Base,
            	Hai-Dian District Beijing P.R. China
            	Zip:100085 
            	Http://www.huawei.com                                       
            	E-mail:support@huawei.com"        -- April 27, 2005 at 17:24 GMT
               k"Whether OAM is globally capable.
				1: capable;
				0: incapable;
				The default value is incapable."                       x"This table specifies per-LSP MPLS OAM capability and 
				associated information, such as IgrTunnName and IgrDetType."                       k"An entry in this table is created by an LSR for every LSP
				capable of supporting MPLS OAM at ingress."                       C"This is a unique index for an OAM ingress entry in the OAM table."                       �"The name of a tunnel.
				For ingress, it means the tunnel name of the detected LSP.
				For egress, it means the tunnel name of the reverse LSP."                      $"There are two types of OAM packets, CV and FFD.
				The CV flow is generated at the source LSR of the LSP with
				a nominal frequency of 1/s and terminated at the sink LSR of the LSP.
				FFD provides failure detection option for an LSP independent 
				of the CV based availability model and is not tied to the 
				CV insertion rate. Insertion rates at 1/s or faster may 
				also be used.
				The CV/FFD packet contains a network-unique identifier (TTSI) 
				so that all types of defects can be detected.    
				1: CV;
				2: FFD."                      ="For CV: the frequency is static, per second.
				For FFD: the frequency is set by user. The value 
				can be 10ms, 20ms, 50ms,100ms,200ms,500ms,3ms.
				Any other frequency is wrong.
				0: 1000ms(only for cv);
				1: 10ms;
				2: 20ms;
				3: 50ms;
				4: 100ms;
				5: 200ms;
				6: 500ms;
				7: 3ms."                      �"When an LSP is found to be in defect, the sink LSR if the LSP
				should send BDI to inform the source LSR of the LSP, the BDI is 
				transferred through the reverse LSP.
				The type of reverse LSP can be private or shared.
				If private, then the reverse LSP can be used only when the only 
				LSP is in defect;
				If shared, the reverse LSP which is shared between many forward 
				LSPs, whose source LSRs are the same and sink LSRs are the same.
				1: private;
				2: share."                       /"The object indicates name of the reverse LSP."                       o"Only for ingress, the object indicates the ingress LSR ID of the 
				reverse LSP,, expressed in IP address."                       X"Only for ingress, the object indicates the session tunnel ID of
				 the reverse LSP."                      J"Whether one LSP is OAM enable.
				If disable, LSP is not monitored;
				If enable, CV/FFD is generated at the source LSR of the LSP and 
				checked at the sink LSR of the LSP,and user can set 
				other configuration.
				0: The OAM function is disabled on the ingress;
				1: The OAM function is enabled on the ingress."                       ("0: stop detect;
				 1: start detect."                      �"If the LSP Timer (T1) expires, then the LSP enters the 
				Unavailable state. The start point of the Unavailable state 
				is deemed to be at the entry into the LSP defect state.
				An LSP re-enters the Available state after the LSP Defect state
				exists first.
				T1 defines the length of time the LSP is in the Defect state 
				before declaring an LSP Unavailable or returning to defect 
				free state. 
				0: available state;
				1: unavailable state."                      P"Defect is defined as interruption of the capability of a 
				transport entity (e.g., network connection) to transfer user 
				or OAM information. There are six types of defect:
				0: no defect;
				1: dServer;
				2: dPeerMe;
				3: dLOCV, Loss of Connectivity Verification defect;
				4: dTTSI-Mismatch, Trail Termination Source Identifier Mismatch defect;
				5: dTTSI-Mismerge, Trail Termination Source Identifier Mismerge defect;
				6: dExcess, Receiving excess rate of CV/FFD;
				7: dUnknown, Unknown defect in the MPLS network..
				8: rlsn down;
				9: dIngressDown."                       ^"This variable is used to create, modify, and
                 		delete a row in this table."                       z"This table specifies per-LSP MPLS OAM capability and 
				 associated information, such as DetectType, DetectFrequency."                       k"An entry in this table is created by an LSR for every LSP
				 capable of supporting MPLS OAM at egress."                       8"The object indicates the name of static LSP at egress."                       5"The object indicates the Ingress LSR ID of the LSP."                       E"The object indicates the the Ingress session tunnel ID of the LSP.."                       W"0: invalid, if auto-protocol, this detect type is invalid;
				 1: CV;
				 2: FFD."                       �"0: 1000ms(only for cv);
				 1: 10ms;
				 2: 20ms;
				 3: 50ms;
				 4: 100ms;
				 5: 200ms;
				 6: 500ms;
				 7: invalid;
				 8: 3ms."                      "When an LSP is found to be in defect, the sink LSR of the LSP 
				should send BDI to inform the source LSR of the LSP,the BDI is 
				transferred through the reverse LSP.
				The type of reverse LSP can be private or shared.
				If private, then the reverse LSP can be used only when the only 
				LSP in defect;
				If shared, the reverse LSP, which is shared between many forward 
				LSPs that have the same source LSRs and sink LSRs.
				0: invalid, when the reverse LSR does not exist;
				1: private;
				2: share."                       4"The object indicates the name of a reverse tunnel."                       �"If autoprotocol,  then the egress can process extended FDI sent 
				by ingress.
				0: disable;
				1: enable;
				Valid only for the egress configuration."                      K"This time is set at the egress.
				If the egress receives CV/FFD, it records the parameters 
				included in the packet, such as OAM type and frequency.
				If the egress does not receive any OAM packet before the timer
				expires, the sink LSR will send BDI with dLOCV defect.
				Valid only for the egress configuration."                      �"BDI is generated at the trail termination source point of 
				a return path in response to a defect detected at the trail 
				termination sink point of an LSP in the forwarding direction. 
				The frequency of BDI can be set by user.
				Only valid for egress configuration.
				The default value is detect frequency and it is valid only when a 
				backward-LSP exists.
				0: per-second;
				1: same as detect frequency."                      O"Whether one LSP is enabled with OAM.
				If disable, LSP is not monitored;
				If enable, CV/FFD is generated at the source LSR of the LSP and 
				checked at the sink LSR of the LSP, and user can set 
				other configuration.
				0: The OAM function is disabled on the egress;
				1: The OAM function is enabled on the egress."                       ("1: stop detect;
				 2: start detect."                      �"If the LSP Timer (T1) expires, then the LSP enters the 
				Unavailable state. The start point of the Unavailable state 
				is deemed to be at the entry into the LSP defect state.
				An LSP re-enters the Available state after the LSP Defect State.
				first exists.
				T1 defines the length of time the LSP is in the Defect state 
				before declaring an LSP Unavailable or returning to defect 
				free state
				0: available state;
				1: unavailable state."                      �"0: no defect;
				 1: dServer,
				 2: dPeerMe,
				 3: dLOCV, Loss of Connectivity Verification defect;
				 4: dTTSI-Mismatch, Trail Termination Source Identifier Mismatch defect;
				 5: dTTSI-Mismerge, Trail Termination Source Identifier Mismerge defect.;
				 6: dExcess, Receiving excess rate of CV/FFD;
				 7: dUnknown, Unknown defect in the MPLS network.
				 8: rlsn down;
				 9: dEgressDown."                       \"This variable is used to create, modify, and
                 delete a row in this table."                       j"This table specifies RLSN capability and 
				 associated information, such as RlsnLsrId and RlsnLsrId."                       p"An entry in this table is created by an LSR to binding the name,				lsr-id and tunnel-id of the LSP at egress."                       3"For egress, the object indicates name of the LSP."                       @"For egress, the object indicates the Ingress LSR ID of the LSP"                       Q"For egress, the object indicates the Ingress session tunnel ID 
				of the LSP"                       7"The object indicates the index of outbound interface."                       6"The object indicates the name of outbound interface."                       "1: up
				 2: down"                       P"This variable is used to create, modify, and
				delete a row in this table. "                       -"0: disable                 
				 1: enable"                           h"This notification is generated when the LSP is found
				 not in the defect state at the LSP ingress."                 d"This notification is generated when the LSP is found
				 in the defect state at the LSP ingress."                 g"This notification is generated when the LSP is found
				 in the available state at the LSP ingress."                 i"This notification is generated when the LSP is found
				 in the unavailable state at the LSP ingress."                 g"This notification is generated when the LSP is found
				 not in the defect state at the LSP egress."                 c"This notification is generated when the LSP is found
				 in the defect state at the LSP egress."                 f"This notification is generated when the LSP is found
				 in the available state at the LSP egress."                 h"This notification is generated when the LSP is found
				 in the unavailable state at the LSP egress."                 q"If autoprotocol is enabled, this notification is generated when 
				 egress receives the first CV/FFD packet."                 "The FDI packet is used by the upstream node in an LSP 
				to inform the egress of the defect information.
				It is also generated when the auto protocol is enabled, 
				with which the LSP ingress notifies the egress to stop 
				the OAM detection."                 7"This notification is generated when the Rlsn is down."                            