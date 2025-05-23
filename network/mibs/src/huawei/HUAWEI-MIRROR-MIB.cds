�-- ==================================================================
-- Copyright (C) 2008 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI Private mirror MIB
-- Reference:
-- Version: 
-- History:
--       
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types be imported
-- 
-- ==================================================================
                                                 "MIB description of mirror.""8090 Team Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd., 
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei.com
                Zip:100085
                "                       :" The hwLocalObserveTable lists local mirror characters. "                       :" The hwLocalObserveEntry lists local mirror characters. "                       a"Ifindex is the index of the observing port and is used to search the name of an observing port."                      �"
      Index of an observing port that identifies the observing port. 

      Single chassis:
      (The index of a physical port corresponds to the slot number of a board. 
       The observe index ranges from 1 to 32.One board supports 32 logical 
       observing ports.)

      Multi-chassis:
      Supports physical observing ports only. The observe index ranges from 1 to 128.
      "                       �"
       Same interworking attribute. 
       1: different interworking, mirroring packets at and above the IP layer. 
       0: same interworking, mirroring packets at and above Layer 2. 
       Default value: 1. 
      "                       �"
       Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
       createAndGo[4] - create a row.        
       destroy[6] -delete a row.       
      "                       =" The hwLocalPortMirrorTable lists local mirror characters. "                       =" The hwLocalPortMirrorEntry lists local mirror characters. "                       S"Ifindex of the mirroring port and is used to search the name of a mirroring port."                       S"Mirroring direction: inbound, outbound, and in-out.1:inbound 2:outbound 3:in-out."                      %"
        Indicates whether the packets sent to the CPU need to be mirrored. 
        True: CPU packets are forwarded; 
        False: CPU packets are not forwarded. 
        You can configure this object only when the mirroring direction is 1 or 3.
        Default value: false.
      "                       �"
       CAR (CIR) of mirrored packets, expressed in thousand bits per second. 
       The default value is 0, which indicates that CAR is not performed.
      "                       �" 
       Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
       createAndGo[4] - create a row.        
       destroy[6] -delete a row. 
      "                       =" The hwLocalFlowMirrorTable lists local mirror characters. "                       =" The hwLocalFlowMirrorEntry lists local mirror characters. "                       "Traffic behavior view name."                       �"
        Indicates whether the flow mirroring is enabled. 
        Disable indicates that flow mirroring is disabled; 
        Enable indicates that flow mirroring is enabled. 
        Default value: disable.  
      "                       �"
       CAR (CIR) of mirrored packets, expressed in thousand bits per second.
       The default value is 0, which indicates that CAR is not performed.
      "                       �"
        Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
        createAndGo[4] - create a row.        
        destroy[6] -delete a row. 
      "                       =" The hwLocalSlotMirrorTable lists local mirror characters. "                       =" The hwLocalFlowMirrorEntry lists local mirror characters. "                       "Slot number of a board."                       ,"Indicates the index of the observing port."                       �"
        Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
        createAndGo[4] - create a row.        
        destroy[6] -delete a row.
      "                       G" The hwPortMirrorInfoTable lists local and remote mirror characters. "                       G" The hwPortMirrorInfoEntry lists local and remote mirror characters. "                       #"Port index of the mirroring port."                       4"Mirroring type: local or remote1: local 2: remote."                       G"CAR (CIR) of mirrored packets, expressed in thousand bits per second "                       %"Type: port/policy1: port 2: policy."                       �"
       Mirroring direction: inbound(1), outbound(2), and in-out(3).
       When the direction is in-out, commands for both inbound and outbound configurations are required.
      "                       �"
       Indicates whether the packets sent to the CPU need to be mirrored.
       True: CPU packets are forwarded; 
       False: CPU packets are not forwarded.
      "                       �"
        Same interworking attribute.
        1: different interworking, mirroring packets at and above the IP layer. 
        0: same interworking, mirroring packets at and above Layer 2. 
        Default value: 1.
      "                       *"mirror instance name. Max 31 characters."                           <" The hwRemoteObserveTable lists remote mirror characters. "                       A" The hwLocalPortMirrorInfoEntry lists local mirror characters. "                       '" Port ifindex of the observing port. "                       " Mirror Identifier. "                       &" Description of the observing port. "                       �" 
       Same interworking attribute. 
       1: different interworking, mirroring packets at and above the IP layer.
       0: same interworking, mirroring packets at and above Layer 2.
       Default value: 1.      
      "                       �" 
        Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
        createAndGo[4] - create a row.
        destroy[6] -delete a row.
        
      "                       ?" The hwRemotePortMirrorTable lists remote mirror characters. "                       >" The hwRemotePortMirrorTable lists local mirror characters. "                       %" Port index of the mirroring port. "                       �" 
       Mirroring direction: inbound(1), outbound(2), and in-out(3).
       When the direction is in-out, commands for both inbound and outbound configurations are required.     
      "                       �" 
        Indicates whether the packets sent to the CPU need to be mirrored. 
        True: CPU packets are forwarded; 
        False: CPU packets are not forwarded.      
      "                       h" 
       Name of the mirroring instance. It must already exist in the MIB table.             
      "                       �" 
      CAR (CIR) of mirrored packets, expressed in thousand bits per second by default, 
      CAR is not performed for mirrored packets. 
      "                       �" 
       Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
       createAndGo[4] - create a row.        
       destroy[6] -delete a row.
      "                       ?" The hwRemoteFlowMirrorTable lists remote mirror characters. "                       >" The hwRemoteFlowMirrorEntry lists local mirror characters. "                       !" Name of the traffic behavior. "                       #" Name of the mirroring instance. "                       �" CAR (Committed Access Rate) setting of the mirror flow. The value indicates the CIR(Committed information rate) measured in kbps. "                       �" 
       Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
       createAndGo[4] - create a row.       
       destroy[6] -delete a row.     
      "                       C" The hwRemoteMirrorInstanceTable lists remote mirror characters. "                       F" The hwRemoteMirrorInstanceEntry lists  mirror instance characters. "                       ." Mirroring instance name. Max 31 characters "                       " Remote mirror destination."                       " Mirror identifier. "                       �"
     Same interworking attribute.
     1: different interworking, mirroring packets at and above the IP layer. 
     0: same interworking, mirroring packets at and above Layer 2.      
     Default value: 1.
     "                      K" Type of mirrored flows. The value of 0 to 7 corresponds to <be,af1,af2,af3,af4,ef,cs6,cs7> respectively. 
        be           (0),
        af1          (1),
        af2          (2),
        af3          (3),
        af4          (4),
        ef           (5),
        cs6          (6),
        cs7          (7)
      "                       �"
       Number of bytes of intercepted packets, expressed in bytes.
       The value of size ranges from 64 to 9600.      
      "                       <" Index of the tunnel that uniquely identifies the tunnel. "                       m"
       Type of the tunnel:
       1: LSP tunnel
       2: TE  tunnel
       3: GRE tunnel     
      "                       M"
       status of tunnel       
       0:DOWN
       1:UP       
      "                       )" Tunnel policy name. Max 19 characters "                       �"
       Row status. The value ranges from 1 to 6 but usually 4 and 6 are used.
       createAndGo[4] - create a row.        
       destroy[6] -delete a row.
      "                               Z"The compliance statement for systems supporting 
              the HUAWEI-SECURITY-MIB."                   +"The group specifies local observing port."                 +"The group specifies local mirroring port."                 ;"The group specifies traffic behavior for local mirroring."                 4"The group specifies local observing port for slot."                 >"The group querys configuration of port-mirroring interfaces."                 ,"The group specifies remote observing port."                 ,"The group specifies remote mirroring port."                 <"The group specifies traffic behavior for remote mirroring."                 &"The group specifies mirror instance."                