0-- =================================================================
-- Copyright (C) 2006 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:HUAWEI-BRAS-DPI-MIB
-- Reference:
-- Version: V1.0
-- History:
--     
-- =================================================================
                     "Description." )"The MIB contains objects of module DPI."        -- April 18, 2006 at 13:34 GMT
           H" DPI Service Policy Configuration.
                
                "                      �" Dpi Policy Entry.
                  The dpi policy table is uniquely identified by the policy name. The policy name is the key word entered when the policy table is created, and cannot be changed. 
                                  The index is hwDpiPolicyName.
                                  This table is used to configure the dpi policy.
                                  The description of operation constraints is as follows:
                  1.The DPI policy name must be entered when the policy table is created.
                  2.The DPI policy cannot be changed if it is referenced by some user.
                  3.The current DPI policy cannot be deleted if it is referenced by some domain.     
                        "                       P" Service Type.
                
                P2P/OTHER.
                "                       �" Dpi Policy Name.
                  The policy name is the key word entered when the policy table is created, and cannot be changed later.
                  The DPI policy name is assigned when DPI policy is created. 
                "                       �" Up Behavior Name.
                  Binding up DPI behavior policy is choosen to do, if up DPI behavior is binded, it need assingn behavior name.
                "                       �" Down Behavior Name.
                  Binding down DPI behavior policy is choosen to do, if down DPI behavior is binded, it need assingn behavior name.
                "                       f"Row admin status,either Add or Del.
                 Supports add and delete.    
                "                                              " Dpi Behavior Entry.
                  The dpi behavior table is uniquely identified by the behavior name. The behavior name is the key word entered when the behavior table is created, and cannot be changed. 
                                  The index is hwDpiBehaviorName.
                                  This table is used to configure the dpi behavior.
                                  The description of operation constraints is as follows:
                  1.The DPI behavior name must be entered when the behavior table is created.
                  2.The DPI behavior cannot be changed if it is referenced by some DPI policy.
                  3.The current DPI behavior cannot be deleted if it is referenced by global application. 
                    "                       �" Dpi Behavior Name.
                  The behavior name is the key word entered when the behavior table is created, and cannot be changed. 
                  The DPI behavior name is assigned when DPI behavior is created.
                "                       ;" Dpi Car Cir.
                
                Car Cir."                       b"Row admin status,either Add or Del.
                 Supports add and delete.
                "                               T"The compliance statement for systems supporting 
                the this module."                   "The Dpi policy group."                 "The Dpi behavior group."                            