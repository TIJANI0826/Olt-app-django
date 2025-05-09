--   =================================================================
--  Copyright (C) 2007 by HUAWEI TECHNOLOGIES. All rights reserved
--  
--  Description the HUAWEI-RSVPTE-MIB provides information about RSVPTE. 
--  Reference:
--  Version: V1.0
--  History:
--  zhuguangdong 2007-04-16 publish
--  =================================================================
-- 
                                                                     ."The MIB module to describe the RSVP Protocol"�"R&D BeiJing, Huawei Technologies co.,Ltd.
                                Huawei Bld.,NO.3 Xinxi Rd., 
                                Shang-Di Information Industry Base,
                                Hai-Dian District Beijing P.R. China
                                Zip:100085 
                                Http://www.huawei.com                                       
                                E-mail:support@huawei.com
                                 "        -- April 10, 2007 at 10:00 GMT
           V"A table of all sessions seen by a  given  sys-
                                tem."                       *"A single session seen by a given system."                       �"The number of this session.  This is for  SNMP
                                Indexing  purposes  only and has no relation to
                                any protocol value."                       d"The type of session (IP4, IP6, IP6  with  flow
                                information, etc)."                       `"The destination address used by all senders in
                                this  session."                       �"The CIDR prefix length of the session address,
                                which  is  32  for  IP4  host and multicast ad-
                                dresses, and 128 for IP6 addresses."                       m"The number of distinct senders currently known
                                to be part of this session."                       o"The number of reservations being requested  of
                                this system for this session."                       w"The number of reservation requests this system
                                is sending upstream for this session."                       ~"A 16-bit identifier used in the SESSION that remains 
                                constant over the life of the tunnel."                      �"An identifier used in the SESSION that remains
                                constant over the life of the tunnel.  Normally
                                the identifier is set to all zeros. Ingress nodes
                                that wish to narrow the scope of a SESSION to the
                                ingress-egress pair may place their IPv4 address
                                here as a globally unique identifier. "                       1"The number of LSPs that belong to this session."                       �"An enumerable value to identify the treatment of 
                                reservations for different senders within the 
                                same session: WF 10001b, FF01010b, SE 10010b."                       x"Information describing the  state  information
                                displayed by senders in PATH messages."                       ~"Information describing the  state  information
                                displayed by a single sender's PATH message."                       �"The number of this sender.  This is  for  SNMP
                                Indexing  purposes  only and has no relation to
                                any protocol value."                       d"The type of session (IP4, IP6, IP6  with  flow
                                information, etc)."                       `"The destination address used by all senders in
                                this  session."                       Z"The source address used by this sender in this
                                session."                       �"The length of the destination address in bits.
                                This  is  the CIDR Prefix Length, which for IP4
                                hosts and multicast addresses is 32 bits."                       �"The length of the sender's  address  in  bits.
                                This  is  the CIDR Prefix Length, which for IP4
                                hosts and multicast addresses is 32 bits."                       u"The address used  by  the  previous  RSVP  hop
                                (which may be the original sender)."                       �"The Logical Interface Handle used by the  pre-
                                vious  RSVP  hop  (which  may  be  the original
                                sender)."                       "The ifIndex value of the  interface  on  which
                                this PATH message was most recently received."                      N"The Average Bit  Rate  of  the  sender's  data
                                stream.   Within  a transmission burst, the ar-
                                rival rate may be as fast  as  hwRsvpTeSenderTSpec-
                                PeakRate  (if  supported by the service model);
                                however, averaged across two or more burst  in-
                                tervals,  the  rate  should not exceed hwRsvpTeSen-
                                derTSpecRate.
                                
                                Note that this is a prediction, often based  on
                                the  general  capability  of a type of codec or
                                particular encoding; the measured average  rate
                                may be significantly lower."                      m"The Peak Bit Rate of the sender's data stream.
                                Traffic  arrival is not expected to exceed this
                                rate at any time, apart  from  the  effects  of
                                jitter in the network.  If not specified in the
                                TSpec, this returns zero or noSuchValue."                       g"The size of the largest  burst  expected  from
                                the sender at a time."                       �"The minimum message size for  this  flow.  The
                                policing  algorithm will treat smaller messages
                                as though they are this size."                      "The maximum message size for  this  flow.  The
                                admission  algorithm  will  reject TSpecs whose
                                Maximum Transmission Unit, plus  the  interface
                                headers, exceed the interface MTU."                       o"The interval between refresh messages  as  ad-
                                vertised by the previous hop."                       �"If TRUE, the node believes that  the  previous
                                IP  hop is an RSVP hop.  If FALSE, the node be-
                                lieves that the previous IP hop may not  be  an
                                RSVP hop."                      "The contents of the policy  object,  displayed
                                as an uninterpreted string of octets, including
                                the object header.  In the absence of  such  an
                                object, this should be of zero length."                      "The global break bit general  characterization
                                parameter  from  the ADSPEC.  If TRUE, at least
                                one non-IS hop was detected in  the  path.   If
                                FALSE, no non-IS hops were detected."                      �"The hop count general characterization parame-
                                ter  from  the  ADSPEC.   A  return  of zero or
                                noSuchValue indicates one of the following con-
                                ditions:
                                
                                   the invalid bit was set
                                   the parameter was not present"                      �"The path bandwidth estimate general character-
                                ization parameter from the ADSPEC.  A return of
                                zero or noSuchValue indicates one of  the  fol-
                                lowing conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present"                      �"The minimum path latency general characteriza-
                                tion  parameter  from  the ADSPEC.  A return of
                                zero or noSuchValue indicates one of  the  fol-
                                lowing conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present"                      �"The composed Maximum Transmission Unit general
                                characterization  parameter from the ADSPEC.  A
                                return of zero or noSuchValue indicates one  of
                                the following conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present"                       �"If TRUE, the ADSPEC contains a Guaranteed Ser-
                                vice  fragment.   If FALSE, the ADSPEC does not
                                contain a Guaranteed Service fragment."                      ]"If TRUE, the Guaranteed Service  fragment  has
                                its  'break'  bit  set,  indicating that one or
                                more nodes along the path do  not  support  the
                                guaranteed  service.   If  FALSE,  and hwRsvpTe-
                                SenderAdspecGuaranteedSvc is TRUE, the 'break' 
                                bit is not set.
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, 
                                this returns FALSE or noSuchValue."                      �"If hwRsvpTeSenderAdspecGuaranteedSvc is TRUE, this
                                is   the  end-to-end  composed  value  for  the
                                guaranteed service 'C' parameter.  A return  of
                                zero  or  noSuchValue indicates one of the fol-
                                lowing conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, this
                                returns zero or noSuchValue."                      �"If hwRsvpTeSenderAdspecGuaranteedSvc is TRUE, this
                                is   the  end-to-end  composed  value  for  the
                                guaranteed service 'D' parameter.  A return  of
                                zero  or  noSuchValue indicates one of the fol-
                                lowing conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, this
                                returns zero or noSuchValue."                      �"If hwRsvpTeSenderAdspecGuaranteedSvc is TRUE, this
                                is  the  composed value for the guaranteed ser-
                                vice 'C' parameter  since  the  last  reshaping
                                point.   A  return of zero or noSuchValue indi-
                                cates one of the following conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, this
                                returns zero or noSuchValue."                      �"If hwRsvpTeSenderAdspecGuaranteedSvc is TRUE, this
                                is  the  composed value for the guaranteed ser-
                                vice 'D' parameter  since  the  last  reshaping
                                point.   A  return of zero or noSuchValue indi-
                                cates one of the following conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, this
                                returns zero or noSuchValue."                      �"If hwRsvpTeSenderAdspecGuaranteedSvc is TRUE, this
                                is  the  service-specific  override  of the hop
                                count general characterization  parameter  from
                                the  ADSPEC.   A  return of zero or noSuchValue
                                indicates one of the following conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, this
                                returns zero or noSuchValue."                      �"If hwRsvpTeSenderAdspecGuaranteedSvc is TRUE, this
                                is  the  service-specific  override of the path
                                bandwidth  estimate  general   characterization
                                parameter from the ADSPEC.  A return of zero or
                                noSuchValue indicates one of the following con-
                                ditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, this
                                returns zero or noSuchValue."                      �"If hwRsvpTeSenderAdspecGuaranteedSvc is TRUE, this
                                is the service-specific override of the minimum
                                path latency general characterization parameter
                                from  the  ADSPEC.  A return of zero or noSuch-
                                Value indicates one  of  the  following  condi-
                                tions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, this
                                returns zero or noSuchValue."                      "If hwRsvpTeSenderAdspecGuaranteedSvc is TRUE, this
                                is  the  service-specific  override of the com-
                                posed Maximum Transmission Unit general charac-
                                terization parameter from the ADSPEC.  A return
                                of zero or noSuchValue  indicates  one  of  the
                                following conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecGuaranteedSvc is FALSE, this
                                returns zero or noSuchValue."                       �"If TRUE, the ADSPEC contains a Controlled Load
                                Service  fragment.   If  FALSE, the ADSPEC does
                                not contain a  Controlled  Load  Service  frag-
                                ment."                      g"If TRUE, the Controlled Load Service  fragment
                                has its 'break' bit set, indicating that one or
                                more nodes along the path do  not  support  the
                                controlled   load   service.    If  FALSE,  and
                                hwRsvpTeSenderAdspecCtrlLoadSvc   is   TRUE,    the
                                'break' bit is not set.
                                
                                If hwRsvpTeSenderAdspecCtrlLoadSvc is  FALSE,  this
                                returns FALSE or noSuchValue."                      �"If hwRsvpTeSenderAdspecCtrlLoadSvc is  TRUE,  this
                                is  the  service-specific  override  of the hop
                                count general characterization  parameter  from
                                the  ADSPEC.   A  return of zero or noSuchValue
                                indicates one of the following conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecCtrlLoadSvc is  FALSE,  this
                                returns zero or noSuchValue."                      �"If hwRsvpTeSenderAdspecCtrlLoadSvc is  TRUE,  this
                                is  the  service-specific  override of the path
                                bandwidth  estimate  general   characterization
                                parameter from the ADSPEC.  A return of zero or
                                noSuchValue indicates one of the following con-
                                ditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecCtrlLoadSvc is  FALSE,  this
                                returns zero or noSuchValue."                      �"If hwRsvpTeSenderAdspecCtrlLoadSvc is  TRUE,  this
                                is the service-specific override of the minimum
                                path latency general characterization parameter
                                from  the  ADSPEC.  A return of zero or noSuch-
                                Value indicates one  of  the  following  condi-
                                tions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecCtrlLoadSvc is  FALSE,  this
                                returns zero or noSuchValue."                      "If hwRsvpTeSenderAdspecCtrlLoadSvc is  TRUE,  this
                                is  the  service-specific  override of the com-
                                posed Maximum Transmission Unit general charac-
                                terization parameter from the ADSPEC.  A return
                                of zero or noSuchValue  indicates  one  of  the
                                following conditions:
                                
                                   the invalid bit was set
                                   the parameter was not present
                                
                                If hwRsvpTeSenderAdspecCtrlLoadSvc is  FALSE,  this
                                returns zero or noSuchValue."                       ["The TTL value in the RSVP header that was last
                                received."                       �"A 16-bit identifier used in the SENDER_TEMPLATE
                                 and the FILTER_SPEC that can be changed to 
                                allow a sender to share resources with itself."                       �"Indicates that the message sender requests the 
                                peer to send an acknowledgment for the message.
                                (0x01: ACK desired.)"                       p"A value that indicates when the Message_Identi-
                                fier sequence has been reset."                       "When combined with the message generator's IP 
                                address, the Message_Identifier field uniquely 
                                identifies a message.  The values placed in this
                                 field change incrementally and only decrease 
                                when the Epoch changes or when the value wraps.
                                A return of 0 indicates the absence of the 
                                MESSAGE_ID object to be sent."                       �"The message ID flag of the message latest received.
                                It is used to identify whether ACK is desired or 
                                not. And it can be extended. (0x01: ACK desired.)"                       k"The message ID epoch of the message latest 
                                received form the interface."                       �"The message ID number of the message latest 
                                received form the interface. A return of 0 
                                indicates the absence of the MESSAGE_ID 
                                object received."                       r"Indicates the class-type. A return of zero
                                indicates the absence of the object."                       �"The type of label request (without label range,
                                 with ATM label range, with frame relay label 
                                range, etc)."                       ~"An identifier of the layer 3 protocol using 
                                this path. Standard Ethertype values are used."                      �"This 12 bit field specifies the lower bound of 
                                a block of Virtual Path Identifiers that is 
                                supported on the originating switch.  If the VPI
                                 is less than 12-bits it must be right justified
                                 in this field and preceding bits must be set to
                                 zero."                      �"This 16 bit field specifies the lower bound of 
                                a block of Virtual Connection Identifiers that 
                                is supported on the originating switch.  If the
                                 VCI is less than 16-bits it must be right 
                                justified in this field and preceding bits must
                                 be set to zero."                      �"This 12 bit field specifies the upper bound of 
                                a block of Virtual Path Identifiers that is 
                                supported on the originating switch.  If the 
                                VPI is less than 12-bits it must be right 
                                justified in this field and preceding bits must 
                                be set to zero."                      �"This 16 bit field specifies the upper bound of 
                                a block of Virtual Connection Identifiers that 
                                is supported on the originating switch.  If the
                                 VCI is less than 16-bits it must be right 
                                justified in this field and preceding bits must 
                                be set to zero."                      k"This 23-bit field specifies the lower bound of 
                                a block of Data Link Connection Identifiers 
                                (DLCIs) that is supported on the originating 
                                switch.  The DLCI must be right justified in 
                                this field and unused bits must be set to 0."                      k"This 23-bit field specifies the upper bound of 
                                a block of Data Link Connection Identifiers 
                                (DLCIs) that is supported on the originating 
                                switch.  The DLCI must be right justified in 
                                this field and unused bits must be set to 0."                       �"The type of the session_attribute (without 
                                resource affinities or with resource affinities)."                      ^"The priority of the session with respect to 
                                taking resources, in the range of 0 to 7.  The 
                                value 0 is the highest priority. The Setup 
                                Priority is used in deciding whether this 
                                session can preempt another session."                      e"The priority of the session with respect to 
                                holding resources, in the range of 0 to 7.  The
                                 value 0 is the highest priority. Holding 
                                Priority is used in deciding whether this 
                                session can be preempted by another session."                      �"A mixed value. (0x01: Local protection desired;
                                0x02: Label recording desired; 0x04: SE Style
                                 desired; 0x08: bandwidth protection desired;
                                0x10: node protection desired; 0x20: Path 
                                re-evaluation request; 0x40: Soft preemption
                                 desired)"                       3"Session name, a null padded string of characters."                       �"A 32-bit vector representing a set of attribute
                                 filters associated with a tunnel any of which 
                                renders a link unacceptable."                      W"A 32-bit vector representing a set of attribute
                                 filters associated with a tunnel any of which 
                                renders a link acceptable (with respect to this
                                 test).  A null set (all bits set to zero) 
                                automatically passes."                      i"A 32-bit vector representing a set of attribute
                                 filters associated with a tunnel all of which 
                                must be present for a link to be acceptable 
                                (with respect to this test).  A null set (all 
                                bits set to zero) automatically passes."                      �"The priority of the backup path with respect to
                                 taking resources, in the range 0 to 7.  The 
                                value 0 is the highest priority.  Setup Priority
                                 is used in deciding whether this session can 
                                preempt another session.  See [RSVP-TE] for the 
                                usage on priority."                      i"The priority of the backup path with respect to
                                 holding resources, in the range 0 to 7.  The 
                                value 0 is the highest priority.  Holding 
                                Priority is used in deciding whether this 
                                session can be preempted by another session.  "                      {"The maximum number of extra hops the backup path
                                 is allowed to take, from current node (a PLR) 
                                to an MP, with PLR and MP excluded from the count.
                                  For example, hop-limit of 0 means that only 
                                direct links between PLR and MP can be considered."                       "An enumerable value to indicate the protection
                                 schema desired (0x01, One-to-One Backup Desired;
                                 0x02, Facility Backup Desired; 0x03, No Backup 
                                Desired)."                       o"Bandwidth estimate; 32-bit IEEE floating point 
                                integer, in bits per second."                       �"A 32-bit vector representing a set of attribute
                                 filters associated with a backup path, any of 
                                which renders a link unacceptable."                      ]"A 32-bit vector representing a set of attribute
                                 filters associated with a backup path, any of 
                                which renders a link acceptable (with respect 
                                to this test).  A null set (all bits set to zero)
                                 automatically passes."                      o"A 32-bit vector representing a set of attribute
                                 filters associated with a backup path, all of 
                                which must be present for a link to be 
                                acceptable (with respect to this test).  A null
                                 set (all bits set to zero) automatically passes."                       �"An enumerable value to indicate the fast-reroute
                                state of this sender (normal, PLR in use, MP in
                                use, PLR in use and MP in use, under protection)."                       s"This 16 bits field indicates a PHB Scheduling 
                                Class to be supported by the LSP."                       z"Information describing the  state  information
                                displayed by receivers in RESV messages."                       �"Information describing the  state  information
                                displayed  by  a single receiver's RESV message
                                concerning a single sender."                       �"The number of this reservation request.   This
                                is  for  SNMP Indexing purposes only and has no
                                relation to any protocol value."                       d"The type of session (IP4, IP6, IP6  with  flow
                                information, etc)."                       `"The destination address used by all senders in
                                this  session."                       �"The source address of the sender  selected  by
                                this  reservation.  The value of all zeroes in-
                                dicates 'all senders'."                       �"The length of the destination address in bits.
                                This  is  the CIDR Prefix Length, which for IP4
                                hosts and multicast addresses is 32 bits."                       �"The length of the sender's  address  in  bits.
                                This  is  the CIDR Prefix Length, which for IP4
                                hosts and multicast addresses is 32 bits."                       p"The address used by the next RSVP  hop  (which
                                may be the ultimate receiver)."                       �"The Logical Interface Handle received from the
                                previous  RSVP  hop  (which may be the ultimate
                                receiver)."                       "The ifIndex value of the  interface  on  which
                                this RESV message was most recently received."                       _"The QoS Service  classification  requested  by
                                the receiver."                      S"The Average Bit  Rate  of  the  sender's  data
                                stream.   Within  a transmission burst, the ar-
                                rival rate may be  as  fast  as  hwRsvpTeResvTSpec-
                                PeakRate  (if  supported by the service model);
                                however, averaged across two or more burst  in-
                                tervals,    the    rate   should   not   exceed
                                hwRsvpTeResvTSpecRate.
                                
                                Note that this is a prediction, often based  on
                                the  general  capability  of a type of codec or
                                particular encoding; the measured average  rate
                                may be significantly lower."                      m"The Peak Bit Rate of the sender's data stream.
                                Traffic  arrival is not expected to exceed this
                                rate at any time, apart  from  the  effects  of
                                jitter in the network.  If not specified in the
                                TSpec, this returns zero or noSuchValue."                      "The size of the largest  burst  expected  from
                                the sender at a time.
                                
                                If this is less than  the  sender's  advertised
                                burst  size, the receiver is asking the network
                                to provide flow pacing  beyond  what  would  be
                                provided  under normal circumstances. Such pac-
                                ing is at the network's option."                       �"The minimum message size for  this  flow.  The
                                policing  algorithm will treat smaller messages
                                as though they are this size."                      "The maximum message size for  this  flow.  The
                                admission  algorithm  will  reject TSpecs whose
                                Maximum Transmission Unit, plus  the  interface
                                headers, exceed the interface MTU."                      U"If the requested  service  is  guaranteed,  as
                                specified   by  hwRsvpTeResvService,  this  is  the
                                clearing rate that is being requested.   Other-
                                wise,  it  is  zero,  or  the  agent may return
                                noSuchValue."                      "If the requested  service  is  guaranteed,  as
                                specified by hwRsvpTeResvService, this is the delay
                                slack.  Otherwise, it is zero, or the agent may
                                return noSuchValue."                       k"The interval between refresh messages  as  ad-
                                vertised by the Next Hop."                      �"The contents of the scope object, displayed as
                                an  uninterpreted  string  of octets, including
                                the object header.  In the absence of  such  an
                                object, this should be of zero length.
                                
                                If the length  is  non-zero,  this  contains  a
                                series of IP4 or IP6 addresses."                       �"If TRUE, a reservation shared among senders is
                                requested.  If FALSE, a reservation specific to
                                this sender is requested."                      �"If TRUE, individual senders are  listed  using
                                Filter  Specifications.   If FALSE, all senders
                                are implicitly selected.  The Scope Object will
                                contain  a list of senders that need to receive
                                this reservation request  for  the  purpose  of
                                routing the RESV message."                       �"If TRUE, the node believes that  the  previous
                                IP  hop is an RSVP hop.  If FALSE, the node be-
                                lieves that the previous IP hop may not  be  an
                                RSVP hop."                      "The contents of the policy  object,  displayed
                                as an uninterpreted string of octets, including
                                the object header.  In the absence of  such  an
                                object, this should be of zero length."                       ["The TTL value in the RSVP header that was last
                                received."                       "Receiver's address."                       v"Information describing the  state  information
                                displayed upstream in RESV messages."                       �"Information describing the  state  information
                                displayed  upstream in an RESV message concern-
                                ing a single sender."                       �"The number of this reservation request.   This
                                is  for  SNMP Indexing purposes only and has no
                                relation to any protocol value."                       d"The type of session (IP4, IP6, IP6  with  flow
                                information, etc)."                       `"The destination address used by all senders in
                                this  session."                       �"The source address of the sender  selected  by
                                this  reservation.  The value of all zeroes in-
                                dicates 'all senders'."                       �"The length of the destination address in bits.
                                This  is  the CIDR Prefix Length, which for IP4
                                hosts and multicast addresses is 32 bits."                       �"The length of the sender's  address  in  bits.
                                This  is  the CIDR Prefix Length, which for IP4
                                hosts and multicast addresses is 32 bits."                       g"The address of the (previous) RSVP  that  will
                                receive this message."                       }"The Logical Interface Handle sent to the (pre-
                                vious) RSVP that will receive this message."                       {"The ifIndex value of the  interface  on  which
                                this RESV message was most recently sent."                       +"The QoS Service classification requested."                      S"The Average Bit  Rate  of  the  sender's  data
                                stream.   Within  a transmission burst, the ar-
                                rival rate may be as fast as  hwRsvpTeResvFwdT-
                                SpecPeakRate  (if  supported by the service 
                                model);however, averaged across two or more 
                                burst  intervals,    the    rate   should   not
                                exceed hwRsvpTeResvFwdTSpecRate.
                                
                                Note that this is a prediction, often based  on
                                the  general  capability  of a type of codec or
                                particular encoding; the measured average  rate
                                may be significantly lower."                      m"The Peak Bit Rate of the sender's data  stream
                                Traffic  arrival is not expected to exceed this
                                rate at any time, apart  from  the  effects  of
                                jitter in the network.  If not specified in the
                                TSpec, this returns zero or noSuchValue."                      "The size of the largest  burst  expected  from
                                the sender at a time.
                                
                                If this is less than  the  sender's  advertised
                                burst  size, the receiver is asking the network
                                to provide flow pacing  beyond  what  would  be
                                provided  under normal circumstances. Such pac-
                                ing is at the network's option."                       �"The minimum message size for  this  flow.  The
                                policing  algorithm will treat smaller messages
                                as though they are this size."                      "The maximum message size for  this  flow.  The
                                admission  algorithm  will  reject TSpecs whose
                                Maximum Transmission Unit, plus  the  interface
                                headers, exceed the interface MTU."                      U"If the requested  service  is  Guaranteed,  as
                                specified   by  hwRsvpTeResvService,  this  is  the
                                clearing rate that is being requested.   Other-
                                wise,  it  is  zero,  or  the  agent may return
                                noSuchValue."                      "If the requested  service  is  Guaranteed,  as
                                specified by hwRsvpTeResvService, this is the delay
                                slack.  Otherwise, it is zero, or the agent may
                                return noSuchValue."                       l"The interval between refresh  messages  adver-
                                tised to the Previous Hop."                      "The contents of the scope object, displayed as
                                an  uninterpreted  string  of octets, including
                                the object header.  In the absence of  such  an
                                object, this should be of zero length."                       �"If TRUE, a reservation shared among senders is
                                requested.  If FALSE, a reservation specific to
                                this sender is requested."                      �"If TRUE, individual senders are  listed  using
                                Filter  Specifications.   If FALSE, all senders
                                are implicitly selected.  The Scope Object will
                                contain  a list of senders that need to receive
                                this reservation request  for  the  purpose  of
                                routing the RESV message."                       �"If TRUE, the node believes that  the  next  IP
                                hop  is  an  RSVP  hop.  If FALSE, the node be-
                                lieves that the next IP hop may not be an  RSVP
                                hop."                      "The contents of the policy  object,  displayed
                                as an uninterpreted string of octets, including
                                the object header.  In the absence of  such  an
                                object, this should be of zero length."                       ["The TTL value in the RSVP header that was last
                                received."                       �"Indicates that the message sender requests the 
                                peer to send an acknowledgment for the message.
                                 (0x01: ACK desired.)"                       p"A value that indicates when the Message_Identi-
                                fier sequence has been reset."                      �"When combined with the message generator's IP 
                                address, the Message_Identifier field uniquely 
                                identifies a message.  The values placed in this
                                 field change incrementally and only decrease 
                                when the epoch changes or when the value wraps.
                                A return of 0 indicates the absence of the 
                                MESSAGE_ID object."                       ]"The RSVP-specific attributes of  the  system's
                                interfaces."                       \"The RSVP-specific attributes of  the  a  given
                                interface."                       r"The number of neighbors perceived to be  using
                                only the RSVP UDP Encapsulation."                       q"The number of neighbors perceived to be  using
                                only the RSVP IP Encapsulation."                      "The number of neighbors  currently  perceived;
                                this  will  exceed hwRsvpTeIfIpNbrs + hwRsvpTeIfUdpNbrs
                                by the number of neighbors using both  encapsu-
                                lations."                       �"The value of the RSVP value 'Kb', Which is the
                                minimum   number   of  refresh  intervals  that
                                blockade state will last once entered."                      "The value of the RSVP value 'K', which is  the
                                number  of  refresh intervals which must elapse
                                (minimum) before a PATH or RESV  message  which
                                is not being refreshed will be aged out."                       �"The value of SEND_TTL used on  this  interface
                                for  messages  this node originates.  If set to
                                zero, the node determines  the  TTL  via  other
                                means."                       �"The value of the RSVP value 'R', which is  the
                                minimum period between refresh transmissions of
                                a given PATH or RESV message on an interface."                       �"The approximate period from the time  a  route
                                is  changed to the time a resulting message ap-
                                pears on the interface."                       d"Its value is always TRUE, if RSVP is enabled  
                                on this Interface."                      "If TRUE, manual configuration forces  the  use
                                of  UDP  encapsulation  on  the  interface.  If
                                FALSE, UDP encapsulation is only used if hwRsvpTeI-
                                fUdpNbrs is not zero."                       W"'active' on interfaces that are configured for
                                RSVP."                       �"If TRUE, RSVPTE hello is enabled on this 
                                Interface.  If  FALSE, RSVPTE hello is not
                                enabled on this interface"                       �"If TRUE, srefresh is enabled on this interface.
                                 If FALSE, srefresh  is not enabled on this 
                                interface."                       d"The srefresh interval. I.e. time difference 
                                between 2 refreshes."                      "Delta governs the speed with which the sender 
                                increases the retransmission interval.  The 
                                ratio of two successive retransmission intervals
                                 is (1 + Delta)."                       "The retransmission interval."                       �"If TRUE, authentication is enabled on this 
                                interface. If FALSE, authentication is not 
                                enabled on this interface."                       \"This states that authentication key is encrypted
                                 or not."                       )"Handshaking is enabled authentications."                       "Authentication life time."                       \"Authentication key, used for authentication 
                                processing. "                      �"Administrators can specify a message window 
                                corresponding to the worst case reordering 
                                behavior.  For example, one might specify that 
                                packets reordered within a 32 message window 
                                would be accepted.  If no reordering can occur, 
                                the window is set to one. The maximum value is 
                                64."                       ^"Information describing  the  Neighbors  of  an
                                RSVP system."                       V"Information describing a  single  RSVP  Neigh-
                                bor."                       �"The IP4 or IP6 Address used by this  neighbor.
                                This  object  may not be changed when the value
                                of the RowStatus object is 'active'."                       V"The encapsulation being used  by  this  neigh-
                                bor."                      l"'active' for all neighbors.  This  object  may
                                be  used  to configure neighbors.  In the pres-
                                ence of configured neighbors,  the  implementa-
                                tion may (but is not required to) limit the set
                                of valid neighbors to those configured."                       ("The number of senders on the neighbor."                       *"The number of receivers on the neighbor."                       ,"If TRUE, hello is enabled on the neighbor."                       ""Source instance of the neighbor."                       '"Destination instance of the neighbor."                       �"The number of times the hello messages have been
                                 sent to the neighbor for which hello ACK has 
                                not received yet."                       �"Hello type that is being  sent to the neighbor.
                                A  return of 3[none] indicates that hello is
                                disabled on the nbr."                      �"Gives neighbor capability to support GR or 
                                undergo GR, in case of control plane restart.
                                A mixed value. (0x01: Self GR capability of 
                                neighbor; 0x02: GR support capability of 
                                neighbor; 0x04: Neighbor capable of receiving 
                                RecoveryPath message; 0x08: Neighbor capable 
                                of sending RecoveryPath message)"                       '"Neighbor nodes GR restart time value."                       ("Neighbor nodes GR recovery time value."                      _"Neighbor nodes GR status. (0x01, No GR activity;
                                0x02, Neighbor router is supporting GR; 0x03, 
                                Neighbor router is restarting; 0x04, Restart 
                                timer is running; 0x05, Recovery timer is 
                                running; 0x06, Neighbor GR end.)"                       �"Neighbor's authentication key, used for 
                                authentication processing. A return of null
                                string indicates the absence of the item."                       ~"If TRUE srefresh is enabled on the neighbor, 
                                else srefresh is not enabled on the neighbor."                       �"If TRUE reliability is enabled on the neighbor,
                                else reliability is not enabled on the neighbor."                       ["Information describes the MessageIds of an 
                                RSVP system."                       "Description."                       p"A value that indicates when the Message_Identi-
                                fier sequence has been reset."                      t"When combined with the message generator's IP 
                                address, the Message_Identifier field uniquely 
                                identifies a message.  The values placed in this
                                 field change incrementally and only decrease 
                                when the epoch changes or when the value wraps."                       �"A enumerable value to indicate the type of this 
                                Message_Identifier. (1: SenderIncoming; 2: 
                                SenderOutgoing; 3: Resv; 4: ResvFwd; 5: RtBuff)"                       \"Information describes the FilterSpecs of an 
                                RSVP system."                       "Description."                       �"The number of this Filter_Spec.   This is for 
                                SNMP Indexing purposes only and has no relation
                                 to any protocol value."                       �"A 16-bit identifier used in the SENDER_TEMPLATE
                                 and the FILTER_SPEC that can be changed to 
                                allow a sender to share resources with itself."                       "IP address for a sender node."                       �"The value of the label arranged by next hop.
                                A return of 4294967295 indicates the absence 
                                of the item."                       `"Information describes the RRO sub-objects of 
                                an RSVP system."                       "Description."                       �"The number of this RRO sub-object.   This is 
                                for SNMP Indexing purposes only and has no 
                                relation to any protocol value."                       �"An enumerable value that indicates the type of 
                                this sub-object. (0x01: IPv4 address; 0x02: 
                                IPv6 address; 0x03: Label.)"                       �"IP address for this sub-object if the type is 
                                'IPv4 address' of 'IPv6 address'. A return of
                                null string indicates the absence of the item."                       �"IP prefix length for this sub-object if the 
                                type is 'IPv4 address' of 'IPv6 address'. A
                                return of 0 indicates the absence of the 
                                item."                       �"The value of the label if the type is 'Label'.
                                A return of 4294967295 indicates the absence 
                                of the item."                      &"If hwRsvpTeRroType is IPv4 or IPv6, it is a 
                                mixed value. (0x01: Local protection 
                                available; 0x02: Local protection in use; 0x04:
                                 bandwidth protection; 0x08: node protection; 
                                0x10: preemption pending; 0x20: node ID.) If
                                hwRsvpTeRroType is Label, 0x01 means global
                                label. A  return of zero indicates no bit was
                                set."                       `"Information describes the ERO sub-objects 
                                of an RSVP system."                       "Description."                       �"The number of this ERO sub-object. This is for 
                                SNMP Indexing purposes only and has no relation
                                 to any protocol value."                       �"An enumerable value that indicates the type of 
                                this sub-object. (0x01: IPv4 address; 0x02: 
                                IPv6 address.)"                       !"IP address for this sub-object."                       '"IP prefix length for this sub-object."                               ."These objects are required for RSVP Systems."                 ."These objects are required for RSVP Systems."                 ."These objects are required for RSVP Systems."                 Z"These objects are optional, used for some RSVP
                                Systems."                 ."These objects are required for RSVP Systems."                 ."These objects are required for RSVP Systems."                 "Description."                 "Description."                 "Description."                 "Description."                     �"The compliance statement.  Note that  the  im-
                                plementation  of this module requires implemen-
                                tation of the Integrated Services MIB as well."  �"The Reservation Requests table  is  appropriate
                                                 in  implementations that store upstream reserva-
                                                 tion messages, but not appropriate in  implemen-
                                                 tations  which  calculate them on each transmis-
                                                 sion." "This is optional."                            