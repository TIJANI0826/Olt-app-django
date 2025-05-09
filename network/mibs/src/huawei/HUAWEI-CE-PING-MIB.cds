q--  =================================================================
-- Copyright (C) 2008 by  HUAWEI TECHNOLOGIES. All rights reserved
-- 
-- Description: CE Ping MIB. 
-- Reference:
-- Version:     V1.0
-- History:
--              V1.0 zhuxiao 2008.10.16,publish 
--              
--  
-- =================================================================
                                     %"HUAWEI VPLS quality detect funcion."�"R&D BeiJing, Huawei Technologies co.,Ltd.
                                 Huawei Bld.,NO.3 Xinxi Rd.,
                                 Shang-Di Information Industry Base,
                                 Hai-Dian District Beijing P.R. China
                                 Zip:100085
                                 Http://www.huawei.com
                                 E-mail:support@huawei.com"       "-- October 16, 2008 at 18:55 GMT
       "The table of Ce Ping."                       "The entry of hwCePingTable."                       ,"The index of hwCePingTable,it is always 1."                       9"Specifies the IP address to be used as the destination."                       T"Specify an unused IP address in the same network that is associated with the VPLS."                       -"The VSI name that is uesd by the operation."                       Q"This value represents the inter-packet delay between packets and is in seconds."                       J"This value represents the number of packets that need to be transmitted."                       !"The operating state of the row."                       "The table of CE Ping result."                       #"The entry of hwCePingResultTable."                      "Reflects the operational state of a hwCePingEntry:
                                  sucessful(1)  - Test is sucessful.
                                  inProcess(2) - Test is in process.
                                  timeout(3) - Test is timeout."                       '"The Mac that is detected by the test."                           "Description."                 "Description."                                                