�--  =================================================================
-- Copyright (C) 2006 by HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description the HUAWEI-BGP-GR-MIB provides information about BPG GR,
-- management of huawei can make simple configuration of BGP GR also. 
-- Reference:
-- Version: V1.0
-- History:
-- yefei60142 2006-11-22 publish
-- =================================================================
   �"This type is used to show status of GR,for example 'enable' 
                means capability of GR have enabled, 'disable' means
                capability of GR have disabled"               *"This type is used to show Address Family"               ."This type is used to show Sub Address Family"              �"This type is used to show Role of router in the process of GR,
                'restarter' means the router pay Restarter role in the process 
                of GR,'helper'means the router pay Helper role in the process of 
                GR,if each peer have conferred with each others on GR,we call the
                kind of state is 'grnormal',if negotiation is unsuccessful,the
                kind of state is 'grnegotiatefail'."                 �"The HUAWEI-BGP-GR-MIB contains objects to 
                Manage configuration and Monitor running state 
                for BGP Graceful Restart feature."\" R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085 
                Http://www.huawei.com                                       
                E-mail:support@huawei.com "       #-- November 22, 2006 at 00:00 GMT
           �"We can see status of GR by this node,the value 'enable'
                denotes that capability of GR have be actived, 'disable'
                denotes that capability of GR have be disabled."                       +"The Value of BGP GR restart timer(second)"                       5"The value of BGP GR wait-for-EndofRib timer(second)"                       ;"This table show state of local router for a special peer."                       8"State of local router for a special peer in this entry"                       �"Address family of BGP(
                notspecified(1),
                ipv4(2),
                ipv6(3),
                vpls(25),
                l2vpn(196))"                       �"Sub address family of BGP(
                notspecified(1),
                unicast(2),
                multicast(3),
                unicastandmulticast(4),
                mpls(5),
                vpls(65),
                vpnv4(128))"                       $"The instance index of linking peer"                       �"Ipv4 address family of peer,note:there is only one kind of IP Address at 
                a special address family,for example,there is ipv4 address at public 
                unicast,and there will not be ipv6 address."                      �"Role of router in the process of GR,'restarter' means the router
                pay Restarter role in the process of GR,'helper' means the
                router pay Helper role in the process of GR,if each peer have
                confered with each others on GR,we call the kind of state is
                'grnormal',if negotiation is unsuccessful,the kind of state is
                'grnegotiatefail'"                           R"We will report alarm when the local
                Router enters the GR state."                 h"We will recover the hwRestarterEnterGR alarm when the local
                Router exit the GR state."                 _"The Restart Timer of Helper is overtime for special reason
                in process of GR."                 g"The WaitForEndofRib Timer of Helper is overtime for special reason
                in process of GR."                         L"The compliance statement for Border GateWay Protocol Graceful Restart MIB."                   z"Required objects to provide hwBgpGRMIB objects configuration 
                information. hwBgpGRCfgGroup is optional."                 {"Required objects to provide hwBgpGRMIB objects configuration 
                information. hwBgpGRStatGroup is optional."                 #"Objects required for BGP GR Trap."                                