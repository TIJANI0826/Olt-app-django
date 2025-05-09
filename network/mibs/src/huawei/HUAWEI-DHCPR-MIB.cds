~-- =================================================================
-- Copyright (C) 2022 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: Huawei DHCP Relay MIB
-- Reference: HUAWEI Enterprise MIB
-- Version: V3.04
-- History:
--         v1.1
--         modified by huangjun 2009-12-08
-- =================================================================
                     �"This MIB describes objects used for managing DHCP relay,
             including  configuring ip addresses for DHCP relay,
             selecting allocation mode of dhcp service, and some statistic information." �"Huawei Industrial Base
  Bantian, Longgang
   Shenzhen 518129
   People's Republic of China
   Website: http://www.huawei.com
   Email: support@huawei.com
 " "202202140000Z" "202102100000Z" "202101190000Z" "202007080000Z" "201907190000Z" "201408120000Z" "201310170000Z" "201306290000Z" "200307210000Z" "200302120000Z" Q"Update the attribute of these nodes: hwPDRouteExceed and hwPDRouteExceedResume." �"Update the attribute of these nodes: hwDHCPRelayIpUnnumberedUsrNum, hwDHCPRelayMaxIpUnnumberedUsrNum, hwDHCPv6RelayUsrNum, hwDHCPv6RelayMaxUsrNum, hwDHCPv6RelayIpNum and hwDHCPv6RelayMaxIpNum."�"Add these nodes: hwDHCPRelayIpUnnumberedUsrThreshold, hwDHCPRelayIpUnnumberedUsrThresholdResume, hwDHCPRelayIpUnnumberedUsrExhaust, 
            hwDHCPRelayIpUnnumberedUsrExhaustResume, hwDHCP6RelayUsrTblThreshold, hwDHCP6RelayUsrTblThresholdResume, hwDHCP6RelayUsrTblExhaust, 
            hwDHCP6RelayUsrTblExhaustResume, hwDHCP6RelayUsrIPThreshold, hwDHCP6RelayUsrIPThresholdResume, hwDHCP6RelayUsrIPExhaust and hwDHCP6RelayUsrIPExhaustResume." 4"This version add the hwPDRouteExceedResume   node." ."This version add the hwPDRouteExceed   node." ;"This version add the hwDHCPRelayReleaseLocalPktNum  node." *"V2.03 - V2.04 add the hwDHCP6RDUID node." w"Update the descriptions of these nodes: hwDHCPRTxClientPktNum, hwDHCPRTxClientUniPktNum and hwDHCPRTxClientBroPktNum." *"The initial revision of this MIB module." *"The initial revision of this MIB module."       --FEB 14, 2022 at 00:00 GMT
           q"A table for configuring ip addresses for DHCP relay, 
            The ip address means address of DHCP server."                       E"An entry for configuring ip addresses for DHCP 
            relay."                       I"Ip address for DHCP relay, The ip address means address of DHCP server."                       �"This object is used to configuration new rows in this
                            table, modify existing rows, and to delete
                            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6)."                       F"A table for selecting allocation mode of dhcp 
            service."                       L"An entry for configuring the allocation mode of
            DHCP service."                      �"Allocation mode of DHCP service.
            
            global(0)   - allocation address from global 
            interface(1)- allocation address from interface
            relay(2)    - allocation address from dhcp server, the request is relayed to server
            none(3)     - no allocation address mode
            globalAndRelay(4)   - allocation address from global and relay
            interfaceAndRelay(5)- allocation address from interface and relay.
            "                       �"Status of DHCP relay cycle mode,
             when the value is 0, cycle with the serveral DHCP servers addresses,
             when the value is 1, use one same DHCP server."                       K"The total number of the bad packets received by 
            DHCP relay."                       _"The total number of the packets received from
            DHCP servers by DHCP relay module."                       _"The total number of the packets transmited to
            DHCP servers by DHCP relay module."                       X"The total number of the packets received form DHCP
            clients by DHCP relay."                       X"The total number of the packets transmited
            to DHCP clients by DHCP relay."                       `"The total number of the unicast packets transmited
            to DHCP clients by DHCP relay."                       a"The total number of the brodcast packets transmited
            to DHCP clients by DHCP relay."                       S"The total number of the DHCP Discover packets handled
            by DHCP relay."                       R"The total number of the DHCP Request packets handled
            by DHCP relay."                       R"The total number of the DHCP Decline packets handled
            by DHCP relay."                       R"The total number of the DHCP Release packets handled
            by DHCP relay."                       Q"The total number of the DHCP Inform packets handled
            by DHCP relay."                       Q"The total number of the DHCP Offer packets handled
            by DHCP server."                       N"The total number of the DHCP Ack packets handled
            by DHCP relay."                       N"The total number of the DHCP Nak packets handled
            by DHCP relay."                       �"Reset the above statictics information of handled
            packets by DHCP relay.
            The value 1 means clear the statictics information. 
            "                       i"ARP process DHCP status.
             The value 1 means enable ARP process DHCP status. 
            "                       �"This object indicates whether detection against the pseudo DHCP server is enabled.
             The default value is disabled(2)."                       9"A table for configuring dhcp reply packet's Dscp value."                       :"An entry for configuring dhcp reply packet's Dscp value."                       �"Dhcp reply packet's dscp value.
            <0-63>    - Valid dscp value 
            <255>     - Set dscp value to default.
            "                       ="A table for configuring dhcp renew-reply packet local deal."                       ="An entry for configuring dhcp renw-reply packet local deal."                       H"Whether to enable dhcp renew-reply packet local-deal on this interface"                      "The dhcp renew-reply object is used to configuration new rows in this
                            table, modify existing rows, and to delete
                            existing rows.Only three actions are used: active(1),
            createAndGo(4), destroy(6)."                       "Config Dhcpv6 Duid."                       X"The total number of the DHCP local release packets handled
            by DHCP relay."                           :"Number of DHCP relay IP unnumbered tables on the device."                       B"Maximum number of DHCP relay IP unnumbered tables on the device."                       ."Number of DHCPv6 relay tables on the device."                       6"Maximum number of DHCPv6 relay tables on the device."                       1"Number of DHCPv6 relay IP tables on the device."                       9"Maximum number of DHCPv6 relay IP tables on the device."                               P"The compliance statement for systems supporting 
                this module."                   R"The basic collection of objects providing management of
            DHCP realy."                 %"The DHCPRelay's Notification group."                     /"A collection of objects for DHCP relay alarm."                     >"The number of PD route for DHCPv6 relay reached the maximum."                 F"The number of PD route for DHCPv6 relay descends to alarm threshold."                 �"This object indicates that an alarm is generated when the number of DHCP relay IP unnumbered tables on the device exceeds 80% of the upper limit."                 �"This object indicates that a clear alarm is generated when the number of DHCP relay IP unnumbered tables on the device falls below 70% of the upper limit."                 �"This object indicates that an alarm is generated when the number of DHCP relay IP unnumbered tables on the device reaches the upper limit."                 �"This object indicates that a clear alarm is generated when the number of DHCP relay IP unnumbered tables on the device falls below 90% of the upper limit."                 �"This object indicates that an alarm is generated when the number of DHCPv6 relay tables on the device exceeds 80% of the upper limit."                 �"This object indicates that a clear alarm is generated when the number of DHCPv6 relay tables on the device falls below 70% of the upper limit."                 �"This object indicates that an alarm is generated when the number of DHCPv6 relay tables on the device reaches the upper limit."                 �"This object indicates that a clear alarm is generated when the number of DHCPv6 relay tables on the device falls below 90% of the upper limit."                 �"This object indicates that an alarm is generated when the number of DHCPv6 relay IP tables on the device exceeds 80% of the upper limit."                 �"This object indicates that a clear alarm is generated when the number of DHCPv6 relay IP tables on the device falls below 70% of the upper limit."                 �"This object indicates that an alarm is generated when the number of DHCPv6 relay IP tables on the device reaches the upper limit."                 �"This object indicates that a clear alarm is generated when the number of DHCPv6 relay IP tables on the device falls below 90% of the upper limit."                                