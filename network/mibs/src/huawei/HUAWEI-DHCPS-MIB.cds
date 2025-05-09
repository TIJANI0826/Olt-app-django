�-- =================================================================
-- Copyright (C) 2016 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: Huawei DHCP Server MIB
-- Reference:   HUAWEI Enterprise MIB
-- Version:     V2.07
-- History:
--              V2.05
--              modified by Huangjun 2009-12-08
-- =================================================================
                                                     7"modify  the description of node hwDHCPSWriteDataDelay" �"Huawei Industrial Base
             Bantian, Longgang
             Shenzhen 518129
             People's Republic of China
             Website: http://www.huawei.com
             Email: support@huawei.com
            " "201606220000Z" "201503050000Z" "201408250000Z" "201403170000Z" "201307040000Z" "201306190000Z" "201305170000Z" "200302120000Z" W"Add node hwDHCPSGlobalPoolConflictRecycleTime hwDHCPSInterfacePoolConflictRecycleTime""This MIB describes objects used for managing DHCP server,
             including objects used for DHCP server global pool, 
             interface pool and informations of ip address used and conflicted
             in DHCP server, some Statistic informations about DHCP server""This MIB describes objects used for managing DHCP server,
             including objects used for DHCP server global pool, 
             interface pool and informations of ip address used and conflicted
             in DHCP server, some Statistic informations about DHCP server""This MIB describes objects used for managing DHCP server,
             including objects used for DHCP server global pool, 
             interface pool and informations of ip address used and conflicted
             in DHCP server, some Statistic informations about DHCP server""This MIB describes objects used for managing DHCP server,
             including objects used for DHCP server global pool, 
             interface pool and informations of ip address used and conflicted
             in DHCP server, some Statistic informations about DHCP server""This MIB describes objects used for managing DHCP server,
             including objects used for DHCP server global pool, 
             interface pool and informations of ip address used and conflicted
             in DHCP server, some Statistic informations about DHCP server" )"The modify revision of this MIB module." *"The initial revision of this MIB module."       -- June22, 2016 at 16:00 GMT
           _"DHCP Server Global Pool table for creating 
            and deleting DHCP server global pool"                       �"An entry in DHCP Server Global Pool table 
             containing objects for creating or
            deleting a global pool for the DHCP server"                       ]"DHCP server global pool name for creating or deleting
            DHCP server global pool "                      l"This object is used to create new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6).While the hwDHCPSGlobalPoolRowStatus 
            object is in the `createAndGo(4),The DHCP server global pool to
            be deleted must be exist"                       �"A table containing the configuration informations of DHCP 
            server global pools, such as pool type, ip address, mask"                       �"An entry containing the objects for configuring
            the network ip or host ip etc. to global pools for
            DHCP server"                      �"Type of a DHCP global pool. Any operations of
            this object will be bound with the operations
            of hwDHCPSGlobalPoolNetwork and
            hwDHCPSGlobalPoolNetworkMask or with the 
            operations of hwDHCPSGlobalPoolHostIPAddr,
            hwDHCPSGlobalPoolMask and
            hwDHCPSGlobalPoolHostHAddr. That means any
            operation of this object alone will be regarded
            as invalid operation.
            The value means:
            null(0)- It is a pool without ip address,
            host(1)- It is a pool with manual allocation,
            network(2)- It is a pool with automatic allocation"                       �"Network ip address of a DHCP Server global pool. 
            To delete a configured network ip, please set
            hwDHCPSGlobalPoolConfigUndoFlag to 1"                      �"Net mask of a DHCP Server global pool(network).
            The SET operation to this object ought to be with
            the SET of hwDHCPSGlobalPoolNetwork together, and
            any SET operation alone to this object will be
            regarded as an invalid operation.
            When a network ip of a DHCP server global pool was 
            deleted, the net mask would also be deleted
            automatically, and no further operation needed"                       �"Host ip of a DHCP server global pool
            To detete a configured Host ip, please set
            hwDHCPSGlobalPoolConfigUndoFlag to 2"                      �"Host mask of a DHCP server global pool(host)
            The SET operation to this object ought to be with
            the SET of hwDHCPSGlobalPoolHostIPAddr together,
            and any SET operation alone to this object will be
            regarded as an invalid operation.
            When a host ip of a DHCP server global pool was 
            deleted, the Host mask would also be deleted
            automatically, and no further operation needed"                       �"Hardware address of a DHCP server global pool(host).
            To delete a configured hardware address, please
            set hwDHCPSGlobalPoolConfigUndoFlag to 3"                      �"Flag of undo operation for
            hwDHCPSGlobalPoolConfigTable
            
            Each value has the following meaning:
            undonetworkip(1): The value identifies the flag to delete a configured network ip
            undohostip(2): The value identifies the flag to delete a configured host ip
            undohosthaddr(3):The value identifies the flag to delete a configured hardware address
            invalid(4):The value is a default value,do nothing 
            "                       �"A table for configuring parameters to DHCP server global
            pool, include lease, Domain name,GateWayIP,DNSIP and so on"                       o"An entry containing the objects for the
            configurations of parameters of DHCP server global pools"                       �"A value which indicates number of days of the lease,
             The period over which a network address
             is allocated to a client is referred to as a 'lease'."                       �"A value which indicates number of hours of the lease,
            The period over which a network address
            is allocated to a client is referred to as a 'lease'."                       �"A value which indicates number of minutes of the lease,
            The period over which a network address
            is allocated to a client is referred to as a 'lease'."                      �"A flag denoting if the lease of a pool is
            unlimited.
            
            The value means:
            invalid(0)- The lease of the network address that clients be assigned is finite, 
                        the period is decided by hwDHCPSGlobalPoolLeaseDay,hwDHCPSGlobalPoolLeaseHour and
                        hwDHCPSGlobalPoolLeaseMinute
                        
            unlimited(1)-The lease of the network address that clients be assigned is infinite"                       �"Domain name for DHCP Clients,
            the domain name that client should use when
            resolving hostnames via the Domain Name System."                       �"String of gateway ip addresses for DHCP clients.
            Since mostly 8 ip addresses can be configured for a pool
            totally, a string is defined to get or configure 8 ip
            addresses at a time"                       |"A gateway ip address to be deleted. This object is
                only for deleting a given ip address of gateway router"                       �"String of DNS server ip addresses for DHCP clients.
            Since mostly 8 ip addresses can be configured for a pool
            totally, a string is defined to get or configure 8
            ip addresses at a time"                       {"A DNS server ip address to be deleted. This object
                is only for deleting a given ip address of DNS server"                      �"NetBios node type for DHCP Clients
            
            Each value has the following meaning:
            null(0)-  no type designated
            bnode(1)- Broadcast ('B') nodes,Broadcast (or 'B') nodes communicate using a mix of UDP datagrams
                      (both broadcast and directed) and TCP connections.
            pnode(2)- Point-to-point ('P') nodes,Point-to-point (or 'P') nodes communicate using only directed UDP
                      datagrams and TCP sessions. 
            mnode(4)- Mixed mode ('M') nodes,Mixed mode nodes (or 'M') nodes are P nodes which have been given
                      certain B node characteristics.
            hnode(8)- Hybrid mode ('H') nodes.
            "                       �"String of NetBios server ip addresses for DHCP
            clients. Since mostly 8 ip addresses can be configured for
            a pool totally, so a string is defined to get or
            configure 8 ip addresses at a time"                       �"A NetBios server ip address to delete. This
            object is only for deleting a given ip address of NetBios
            server"                      �"Flag of undo-operation for
            hwDHCPSGlobalPoolParaTable
            
            Each value has the following meaning:                
            undoDomain(1)  - It means to delete Domain,
            undoLease(2)   - It means to delete lease of a given ip address,
            undoGateway(3) - It means to delete a given ip address of gateway router,
            undoDns(4)     - It means to delete a given ip address of DNS server,
            undoNbns(5)    - It means to deletd a given ip address of NetBios
                             server,
            undoNbType(6)  - It means to delete NetBios node type ,
            invalid(7)     - The value is a default value,do nothing"                       �"Reset the auto binding ip of the given global
                pool for DHCP server. The invalid(2) is a 
                default vlaue, do nothing"                       X"Log the assigning IP addresses information  of the given global pool for DHCP server. "                       "Description."                       y"A table for configuring options to DHCP server global pools,
            include option code type and value and so on "                       ["An entry containing the objects for configuring
            options to DHCP global pools"                       g"Option code, All options begin with a tag octet, which uniquely
              identifies the option."                      @"The object means option type in DHCP server global pool
            
            The value means :
            ascii(1)- The option type is ascii string
            hex(2)  - The option type is hex number
            ip(3)   - The option type is ip address
           cipher(4) - The option type is cipher string"                       "Ascii string of a option"                       u"Hex string of a option. 1 to 10 2 bytes or 4 bytes
            hex string can be configured at most simultaneously"                       c"Ip string of a option. 1 to 8 ip addresses  can
            be configured at most simultaneously"                      ="This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6).
            while configuration new option, you must specify option type 
            and value"                       "Cipher string of a option."                       {"A table containing the information of the tree of
            DHCP global pools, and the relationship between the pools,"                       j"An entry of objects containing the information
            for displaying the tree of DHCP global pools"                       "Pool name of the parent node"                       "Pool name of the child node"                       ""Pool name of the presibling node"                       "Pool name of the sibling node"                       {"A table for configuring parameters to DHCP server interface
            pools, include lease, Domain Name, DNS and so on"                       �"An entry of objects for configuring parameters
            to DHCP interface pools.
            The index of this entry is the ifIndex of ethernet"                       �"A value which indicates number of days of the lease,
             The period over which a network address
             is allocated to a client is referred to as a 'lease'."                       �"A value which indicates number of hours of the lease,
            The period over which a network address
            is allocated to a client is referred to as a 'lease'."                       �"A value which indicates number of minutes of the lease,
            The period over which a network address
            is allocated to a client is referred to as a 'lease'."                      �"A flag denoting if the lease of a pool is unlimited.
            
            The value means:
            invalid(0)- The lease of the network address that clients be assigned is finite, 
                        the period is decided by hwDHCPSGlobalPoolLeaseDay,hwDHCPSGlobalPoolLeaseHour and
                        hwDHCPSGlobalPoolLeaseMinute
                        
            unlimited(1)-The lease of the network address that clients be assigned is infinite"                       �"Domain name for DHCP Clients,
            the domain name that client should use when
            resolving hostnames via the Domain Name System."                       �"String of DNS server ip addresses for DHCP clients.
            Since mostly 8 ip can be configured for a pool
            totally, a string is defined to get or configure 8
            ip at a time"                       o"A DNS server ip address to delete. This object
                is only for deleting a given ip of DNS server"                      �"NetBios node type for DHCP Clients
            
            Each value has the following meaning:
            null(0)-  no type designated
            bnode(1)- Broadcast ('B') nodes,Broadcast (or 'B') nodes communicate
                      using a mix of UDP datagrams (both broadcast and directed)
                      and TCP connections.
            pnode(2)- Point-to-point ('P') nodes,Point-to-point (or 'P') nodes 
                      communicate using only directed UDP datagrams and TCP sessions. 
            mnode(4)- Mixed mode ('M') nodes,Mixed mode nodes (or 'M') nodes are
                      P nodes which have been given certain B node characteristics.
            hnode(8)- Hybrid mode ('H') nodes.
            "                       �"String of NetBios server ip addresses for DHCP
            clients. Since mostly 8 ip can be configured for
            a pool totally, so a string is defined to get or
            configure 8 ip at a time"                       �"A NetBios server ip address to delete. This
            object is only for deleting a given ip of NetBios
            server"                      �"Flag of undo-operation for
            hwDHCPSInterfacePoolParaTable
            
            Each value has the following meaning:                
            undoDomain(1)  - It means to delete Domain,
            undoLease(2)   - It means to delete lease of a given ip address,
            undoGateway(3) - It means to delete a given ip address of gateway router,
            undoDns(4)     - It means to delete a given ip address of DNS server,
            undoNbns(5)    - It means to deletd a given ip address of NetBios
                             server,
            undoNbType(6)  - It means to delete NetBios node type
            invalid(7)     - The value is a default value,do nothing
            "                       �"Reset the auto or manual binding ip of the given interface
                pool for DHCP server. The invalid(2) is a default 
                vlaue, do nothing"                       Z"Log the assigning IP addresses information of the given interface pool for DHCP server. "                       "Description."                       t"A table for configuring options to DHCP interface pools,
            include option code type and value and so on"                       �"An entry of objects for configuring options
            to DHCP interface pools.
            The index of this entry is the inIndex of ethernet"                       f"Option Code,All options begin with a tag octet, which uniquely
              identifies the option."                      Q"The object means option type in DHCP server interface pool
            
            The value means :
            ascii(1)- The option type is ascii string
            hex(2)  - The option type is hex number
            ip(3)   - The option type is ip address
           cipher(4) - The option type is cipher string
            "                       "Ascii string of an option"                       u"Hex string of a option. 1 to 10 2 bytes or 4 bytes
            hex string can be configured at most simultaneously"                       c"Ip string of a option. 1 to 8 ip addresses  can
            be configured at most simultaneously"                      ="This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6).
            while configuration new option, you must specify option type 
            and value"                       "Cipher string of an option"                       �"A table for configuring static binding to DHCP
            interface pools,which manual binding ip address and Hardware address"                       �"An entry of objects for configuring static
            binding to DHCP interface pools.
            The index of this entry is the inIndex of ethernet"                       D"Ip address in static binding for DHCP
            interface pools"                       K"Hardware address in static binding for DHCP 
            interface pools"                      X"This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6).
            while configuration static binding, you must specify ip address
            and hardware address
            "                       g"A table for displaying the information of ip allocation to clients
            for DHCP server pools"                       `"An entry of objects for displaying information
            of ip in use for DHCP server pools"                       ;"The MAC addreess of host use the ip address in DHCP pools"                       0"Ip address allocation to clients in DHCP pools"                       �"End time of ip address leasese.
            The structure of the OCTET STRING is
            year/month/day:hour:munite:second --
            YYYY/MM/DD:hh:mm:ss"                      P"Type of binding
            
            The value means
                manual(1) - manual allocation
                auto(2)   - automatic allocation
                release(3)- The ip is automatic allocation,but it is already released            
                offered(4)-The ip is offered to client          
            "                       ;"Name of the DHCP server pool that allocated ip belongs to"                       7"Interface index information that ip address belong to"                       -"Vlan informationg that ip address belong to"                       0"ATM Pvc informationg that ip address belong to"                       m"A table for configuring forbidden ip to DHCP server, which 
            don't allow to allocate to clients"                       C"An entry for configuring forbidden ip to DHCP
            server"                       ""Start ip address of forbidden ip"                        "End ip address of forbidden ip"                       �"This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6)
            "                       �"
            A table for displaying the information of conflict
            ip for DHCP server,ip address is uesed by others 
            when allocate the address.
            "                       U"An entry for displaying the information of
            conflict ip for DHCP server"                       "Conflict ip address"                       �"Type of the detection of conflict ip,
             As a consistency check, the allocating
             server SHOULD probe the reused address before allocating the address,
             e.g., with ping or ARP"                       �"Time when the confict is detected.
            The structure of the OCTET STRING is
            year/month/day:hour:munite:second --
            YYYY/MM/DD:hh:mm:ss"                       �"The status of DHCP service, The default value is disabled, which
            mean disabled the DHCP service; the other value is enabled, which
            mean enable the DHCP service"                       �"The status of DHCP servers detecting function.
             If the value is enabled, It will check whether have other DHCP Servers.
             The default value is disabled"                       Y"The number of ping packets sent out when check address conflict,the default value is 2."                       �"The delay for the reply of a ping packet when check address conflict.
            Unit: millisecond, the default value is 500."                      "The status of the function writing data to the
            harddisk, It does not write data to the harddisk default,
            The information that written are the content that hwDHCPSConflictIPTable and hwDHCPSIPInUseTable,
            the default value is disable."                       b"The directory of writing data to a harddisk, The format is
             directory and file name"                       Q"The allowable delay of writing data to the
            harddisk. Unit: second."                       �"The flag used to recover DHCP data with the data on
            the harddisk,It means whether recover data from the data on
            the harddisk when system startup.
            The default value is disabled
            "                       N"An ip in use that will be cleared. 0 returned for SET
            operation"                       P"An conflict ip that will be cleared. 0 returned for
            SET operation"                       �"A flag that descript the reset operation,
            1 means deleting ip in use
            2 means deleting conflict ip addresses"                       ."The total number of DHCP server global pools"                       4"The total number of auto binding ip in DHCP server"                       6"The total number of manual binding ip in DHCP server"                       7"The total number of expired binding ip in DHCP server"                       1"The total number of DHCP server interface pools"                       D"The total number of auto binding ip in DHCP server interface pools"                       E"The total number of manual binding ip in DHCP server interface pool"                       F"The total number of expired binding ip in DHCP server interface pool"                       ="The total number of the bad packets received by DHCP server"                       e"The total number of the boot request packets recieved by DHCP
            Server from DHCP clients"                       \"The total number of the DHCP Discover packets 
            received from the DHCP clients"                       ["The total number of the DHCP Request packets 
            received from the DHCP clients"                       ["The total number of the DHCP Decline packets 
            received from the DHCP clients"                       ["The total number of the DHCP Release packets 
            received from the DHCP clients"                       Z"The total number of the DHCP Inform packets 
            received from the DHCP clients"                       ]"The total number of the boot reply packets sent by DHCP server
            to DHCP clients"                       R"The total number of the DHCP Offer packets 
            sent by the DHCP server"                       P"The total number of the DHCP Ack packets 
            sent by the DHCP server"                       P"The total number of the DHCP Nak packets 
            sent by the DHCP server"                       �"Reset the above statictics information of packets
            received and sent by the DHCP server.
            The value 1 means clear the statictics information"                       p"A table for configuring parameters of chasten , which 
            don't allow to deal with packet of clients"                       0"An entry for configuring parameters of chasten"                       "Slot of LPU"                       ."The threshold number of DHCP Discover packet"                       ."The threshold number of DHCP Discover packet"                       "The period of checking"                       "The period of chasten"                      C"This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6).
            while configuration new suboption, you must specify suboption type 
            and value"                       m"A table for configuring forbidden ip to DHCP server, which 
            don't allow to allocate to clients"                       C"An entry for configuring forbidden ip to DHCP
            server"                       ""Start ip address of forbidden ip"                        "End ip address of forbidden ip"                       %"Index: the VRFNAME of forbidden ip."                       �"This object is used to configuration new rows in this
            table, modify existing rows, and to delete
            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6)
            "                       �"
            A table for displaying the information of conflict
            ip for DHCP server,ip address is uesed by others 
            when allocate the address.
            "                       U"An entry for displaying the information of
            conflict ip for DHCP server"                       "Conflict ip address"                       $"Index: the VRFNAME of conflict ip."                       �"Type of the detection of conflict ip,
             As a consistency check, the allocating
             server SHOULD probe the reused address before allocating the address,
             e.g., with ping or ARP"                       �"Time when the confict is detected.
            The structure of the OCTET STRING is
            year/month/day:hour:munite:second --
            YYYY/MM/DD:hh:mm:ss"                       #"Set client request packet through"                               P"The compliance statement for systems supporting 
                this module."                   S"The basic collection of objects providing management of
            DHCP server."                                