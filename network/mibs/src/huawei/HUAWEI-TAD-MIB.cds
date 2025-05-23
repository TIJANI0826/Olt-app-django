3--==================================================================
-- Copyright (C) 2006 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI Transmission Alarm Damping MIB
-- Reference:
-- Version: V1.0
-- History:
-- <author>,  <date>,  <contents>
-- Jiangwei   2006-6-28
-- ==================================================================
-- ==================================================================
-- 
-- Variables and types be imported
--
-- ==================================================================
   '"A simple status value for the object."                                                 f"The Custom damping MIB module is defined to manage the configuration under system or interface view." �"VRP Platform Team Huawei Technologies co.,Ltd.
        Huawei Bld.,NO.3 Xinxi Rd., 
        Shang-Di Information Industry Base,
        Hai-Dian District Beijing P.R. China
        http://www.huawei.com
            Zip:100085"                   ;"Transmission alarm damping interface configuration table."                       F"The entry of a SDH or SONET interface with damping function enabled."                        "Index number of the interface."                       %"Whether filter function is enabled."                       E"How long the alarm will be postponed to process. Unit: millisecond."                       &"Whether damping function is enabled."                       n"The suppressing value. When figure-of-merit of alarm exceeds this value,
        this alarm will be damped."                       "The ceiling value. Figure-of-merit can't exceed this value. The ceiling
        value must be larger than suppressing value."                       �"The reusing value. When figure-of-merit becomes lower than this value.
        The alarm will be reused (exit from suppressing status). The reusing value must be
        less than suppressing value."                       C"The half decay time when alarm status is down. Unit: millisecond."                       A"The half decay time when alarm status is up. Unit: millisecond."                       G"Whether to reset alarm statistics. 1 means resetting statistics once."                       "Last reset time."                       #"B3tca threshold in form of 10e-n."                       $"Sdbere threshold in form of 10e-n."                       $"Sfbere threshold in form of 10e-n."                       7"Transmission alarm damping alarm configuration table."                       "The entry of an alarm."                        "Index number of the interface."                       �"Index number of the alarm. The range is from 1 to 22, corresponding to:
        auais, batca, lais, lof, lom, lop, los, lrdi, lrei, oof, pais, prdi, prei, pplm, rdool,
        rrool, sdbere, sfbere, trool, puneq, lcd, wlnk."                       w"Whether this alarm leads to interface down. In default lais, lof and los
        are enabled to lead interface down."                       P"Whether this alarm will be logged. In default all alarm types won't be logged."                       F"The status of the alarm. 1 means alarm is up, 2 means alarm is down."                       �"Whether this alarm is in filtering status. 1 means alarm is in filtering status,
        2 means alarm isn't in filtering status."                       f"This figure is used to evaluate the stability of the alarm. Large
        value means un-stability."                       �"Whether this alarm is in suppressing status. 1 means alarm is
        in suppressing status, 2 means alarm isn't in suppressing status."                       ("How many times alarm's status changed."                       %"How many times alarm is suppressed."                               k"A collection of objects providing device level control
        and status information for the interface."                 g"A collection of objects providing device level control
        and status information for the alarm."                            