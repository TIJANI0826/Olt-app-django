�-- =================================================================
-- Copyright (C) 2008 by HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: This MIB defines all the objects that containing VPLS tunnel information.
-- Reference: rfc4001
-- Version: V1.00
-- History:
--         V1.0 Rengaofeng, 2008-12-11, publish
-- =================================================================
                                                         4"Initial version 2008/12/11,L2VPN QOS OBJECT GROUP.""R&D BeiJing, Huawei Technologies co.,Ltd.
    Huawei Bld.,NO.3 Xinxi Rd., 
    Shang-Di Information Industry Base,
    Hai-Dian District Beijing P.R. China
    Zip:100085 
    Http://www.huawei.com                                       
    E-mail:support@huawei.com"       -- Dec 15, 2008 at 19:25 GMT
           c"Information about VPLS PW Tunnel. This object is used 
             to get VPLS PW tunnel table."                       1"It is  used to get detailed tunnel information."                       !"The name of this VPLS instance."                        "The ip address of the peer PE."                       4"Remote Site ID for BGP Mode, or PW id for LDP Mode"                       "The Tunnel ID."                       "The name of this Tunnel."                       1"The type of this Tunnel. e.g. LSP/GRE/CR-LSP..."                       '"The source ip address of this tunnel."                       ,"The destination ip address of this tunnel."                       "The index of lsp."                       "The out-interface of lsp."                       "The out-label of lsp."                       "The next-hop of lsp."                       "The Fec of lsp."                       &"The length of mask for hwVplsLspFec."                       #"Indicate whether the lsp is main."                       @"Property of Balance. Rerurn True if Tunnel-Policy is configed."                       !"The operating state of the row."                                   \"The compliance statement for systems supporting 
                the HUAWEI-VPLS-TNL-MIB."                   "The VPLS tunnel group."                            