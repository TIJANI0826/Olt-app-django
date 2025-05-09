                                                           ~"This table specifies per-protection-group MPLS PS 
                capability and associated information.
                "                       y"An entry in this table is created by an LSR for every 
                protection group capable of supporting mpls ps."                       ]"This is a unique index for an entry in the mplspsEntry.
                
                "                      �"The type of protection switch,can be 1:1,1+1,shared mesh,
                packet 1+1,the default choice is 1:1.
                In the 1+1 architecture type, a protection LSP is dedicated to 
                each working LSP with the working LSP bridged onto the 
                protection LSP at the source of the protection domain. 
                The traffic on working and protection LSPs is transmitted 
                simultaneously to the sink of the protection domain, 
                where a selection between the working and protection LSP is 
                made, based on some predetermined criteria, such as defect 
                indication.
                In the 1:1 architecture type, a protection LSP is dedicated to 
                each working LSP. The working traffic is transmitted either by 
                working or protection LSP.
                In the shared mesh architecture type, possible sharing of 
                protection capacity between disjoint link, node in the network 
                is achieved while guaranteeing recovery from a single failure.
                In the packet 1+1 architecture type, the traffic is transmitted 
                simultaneously onto two possibly disjoint routed LSPs to the 
                sink of the protection domain. Each pair of duplicate 
                transmitted packets is assigned the same identifier (sequence 
                number) but distinct from the other pairs of duplicate packets. 
                At the sink of the protection domain packet level selection 
                mechanism is employed to select one of the two possibly 
                received copies of each packet. 
                1:  1:1 protection switching,;
                2:  1+1 protection switching;
                3:  shared mesh protection swiching;
                4:  packet 1+1 protection switching.
                "                       "The name of work-tunnel."                       $"Work-tunnel id(session-tunnel-id)."                       "The name of protect-tunnel."                       '"Protect-tunnel id(session-tunnel-id)."                      Q"Revertive mode is a protection switching mode where revertive 
                action (switch back to the working LSP) is taken after the 
                working LSP is repaired.And switching does not occur in a
                non-revertive mode.
                1: revertive;
                2: non-revertive;
                "                      ""Wait to Restore timer is only applicable for the revertive mode 
                and applies to a working LSP,It prevents reversion back to 
                select the working LSP until the Wait to Restore timer has 
                expired.The default value is 12 minutes.step is 30s."                       �"The time between declaration of signal degrade or signal fail, 
                and the initialization of the protection switching algorithm.
                step is 100ms.maximum is 10s."                      2"The current switch condition of the protection group.
                1: clear,This command clears all of the externally 
                   initiated switch commands listed below;
                2: lockout of protection,Fix the selector position on the 
                   working LSP,Prevents the selector from switching to the 
                   protection LSP when it is selecting the working LSP. 
                   Switches the selector from the protection to the working LSP 
                   when it is selecting the protection LSP;
                3: forced protection,Switches the selector from the working LSP 
                   to the protection LSP (unless a higher priority switch 
                   request (i.e., LoP) is in effect);
                4: signal fail,for 1:1,Signal Fail (SF) is declared when the 
                   source of the protection domain enters the Defect State by 
                   receiving a BDI packet (from the return LSP or out of band).
                5: manual switch for working-lsp,Switches the selector from the 
                   working LSP to the protection LSP (unless an equal or higher 
                   priority switch request (i.e., LoP, FS, SF or MS) is in 
                   effect);
                6: manual switch for protection-lsp,Switches the selector from 
                   the protection LSP to the working LSP (unless an equal or 
                   higher priority switch request (i.e., LoP, FS, SF or MS) is 
                   in effect).
                7: WTR-timer;
                8: HoldOff-timer;
                9: Others;
                The pripority of the commands are:
                clear > lockout of protection > force switch > manual switch for working
                lsp = manual switch for protection lsp"                       �"The state of working tunnel state in one protection group,
                whether it is in detection,
                1: it is outof defect
                2: it enters defect
                "                       �"The state of protection tunnel state in one protection group,
                whether it is in detection,
                1: it is outof defect
                2: it enters defect"                       |"Which tunnel is used to transfer the data stream.
                1: working-tunnel
                2: protection-tunnel"                       �"The type of protection switch which is configured.
                1: 1:1
                2: 1+1
                3: shared mesh
                4: packet 1:1"                       '"Protect-tunnel id(session-tunnel-id)."                      c"Revertive mode is a protection switching mode where revertive 
                action (switch back to the working LSP) is taken after the 
                working LSP is repaired.And switching does not occur in a
                non-revertive mode.
                1: revertive;
                2: non-revertive;
                
                "                      ""Wait to Restore timer is only applicable for the revertive mode 
                and applies to a working LSP,It prevents reversion back to 
                select the working LSP until the Wait to Restore timer has 
                expired.The default value is 12 minutes.step is 30s."                       �"The time between declaration of signal degrade or signal fail, 
                and the initialization of the protection switching algorithm.
                step is 100ms.maximum is 10s."                      "This variable is used to create, modify, and
                delete a row in this table.
                1: active
                2: not in service
                3: not ready
                4: create and go
                5: create and wait
                6: destroy"                       '"1:enable;
                2:disable;"                       "Description."                      	"this table for these commands
                1.mpls te protection tunnel XXX
                2. mpls te reverse-lsp { lsp-name XXXX | lsr-id X.X.X.X tunnel-id x }                                               
                3. mpls te reserved-for-binding  "                       J"Description.the  index of working tunnel interface of Protection group  "                       D"Description.it is used by command ' mpls te reserved-for-binding '"                       C"Description.it is used for command ' mpls te reverse-lsp lspname'"                       �"Description.
                1: active;
                2: notInservice;
                3: notReady;
                4: CreateAndGo;
                5: CreateAndWait;
                6: destroy;"                       W"Description.it is used for command ' mpls te reverse-lsp lsr-id X.X.X.X tunnel-id XX'"                       W"Description.it is used for command ' mpls te reverse-lsp lsr-id X.X.X.X tunnel-id XX'"                           l"This notification is generated when switching from
                protection-lsp to working-lsp occured."                 }"This notification is generated when switching from woking-lsp
                to protection-lsp occured.
                "                         +"The compliance statement for mpls oam ps."                   6"The compliance statement for mpls oam ps management."                 7"The compliance statement for mpls oam ps reverse lsp."                 "Description."                    