o-- ======================================================================================
-- Copyright (C)  2009   by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:    CDP-COMPLIANCE-MIB
-- Reference:     
-- Version:          1.0
-- History:           
-- ======================================================================================
                                     �"This file is an file for CDP compliance. It provides such functions of 
           globally enabling or disabling the CDP compliance function, enabling the global
           alarm, querying and clearing statistics on ports." �"VRP Team Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd., 
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            http://www.huawei.com
        Zip:100085
            "                      W"The administratively desired status of the global CDP compliance function.
		If the associated hwCdpComplianceEnable object has a
		value of 'disable(2)', then the system will discard CDP packets.
		If the associated hwCdpComplianceEnable object has a
		value of 'enable(1)', then the system will counter and keep the latest CDP packets."                      J"The hwCdpComplianceNotificationInterval indicates the interval (in units of
		seconds) of sending CDP notifications.
		The default value for hwCdpComplianceNotificationInterval object is five seconds.
		The value of this object must be restored from non-volatile
		storage after a re-initialization of the management system."                       Q"The table that controls CDP compliance function setting on individual
		ports."                       �"CDP compliance configuration information for a particular port.
		This configuration parameter controls transmission and
		the reception of CDP frames on those ports whose rows are
		created in this table."                       G"The interface index of the configured bridge port, reference RFC2233."                      �"The administratively desired status of the CDP compliance of the port.
		If the associated hwCdpCompliancePortConfigAdminStatus object has a
		value of 'disabled(1)', then port will discard CDP packets received on this port.
		If the associated hwCdpCompliancePortConfigAdminStatus object has a
		value of 'rxOnly(2)', then the port will receive and store the CDP packet,
		but it will not transmit CDP frames on this port."                       �"The seconds of holding the recieved CDP packets.
		The received CDP packets wiil be aged if no new CDP packets received after 
		so many seconds. This value should equal to or greater than the TTL value 
		in the received CDP packets."                       �"The hwCdpCompliancePortConfigNotificationEnable controls, on a per
		port basis, whether or not notifications from the agent
		are enabled. The value true(1) means that notifications are
		enabled; the value false(2) means that they are not."                       @"Clears the statistics of packets received on the current port."                          J"The value of sysUpTime object (defined in IETF RFC 3418)
		at the time an entry is created, modified, or deleted in the
		in tables associated with the hwCdpComplianceRemoteSystemData 
		objects associated with remote systems.
		An NMS can use this object to reduce polling of the
		hwCdpComplianceRemoteSystemData objects."                      �"The number of times the complete set of information
		advertised by a particular MSAP has been deleted from tables
		contained in hwCdpComplianceRemoteSystemsData 
		because the information timeliness interval has expired.
		This counter should be incremented only once when the complete
		set of information is completely invalidated (aged out)
		from all related tables. Partial aging, similar to deletion
		case, is not allowed, and thus, should not change the value
		of this counter."                       �"A table containing CDP reception statistics for individual
		ports. Entries are not required to exist in this table while
		the hwCdpCompliancePortConfigEntry object is equal to 'disabled(1)'."                      S"CDP frame reception statistics for a particular port.
		All counter values in a particular entry shall be
		maintained on a continuing basis and shall not be deleted
		until ageed out.
		All statistical counters associated with a particular
		port on the port become frozen whenever the
		adminStatus is disabled for the same port."                       R"The interface index of the bridge port receiving CDP packets, reference RFC2233."                       s"The number of valid CDP frames received on the indicated port,
		 while this CDP compliance function is enabled."                      c"The counter that represents the number of age-outs that
		occurred on a given port. An age-out is the number of
		times the complete set of information advertised by a
		particular MSAP has been deleted from tables contained in
		hwCdpComplianceRemoteSystemsData because
		the information timeliness interval has expired.
		This counter is similar to hwCdpComplianceStatsRemTablesAgeouts, 
		exceptthat the counter is on a per port basis. This enables NMS to
		poll tables associated with the hwCdpComplianceRemoteSystemsData objects
		associated with remote systems on the indicated port only.
		This counter should be set to zero during agent initialization
		and its value should not be saved in non-volatile storage.
		When a port's admin status changes from 'disabled' to
		'rxOnly', the counter associated with
		the same port should reset to 0. The agent should also flush
		all remote system information associated with the same port.
		This counter should be incremented only once when the
		complete set of information is invalidated (aged out) from
		all related tables on a particular port. "                          b"This table contains one or more rows per physical network
		connection known to this agent. The agent may wish to ensure
		that only one hwCdpComplianceRemoteEntry is present for each local port,
		or it may choose to maintain multiple hwCdpComplianceRemoteEntry for
		the same local port.
		The following procedure may be used to retrieve remote
		systems information updates from an CDP compliance agent:
		1. NMS polls all tables associated with remote systems
		and keeps a local copy of the information retrieved.
		2. CDP compliance agent updates remote systems MIB objects, and
		sends out notifications to a list of notification destinations.
		3. NMS receives the notifications and compares the new
		values of objects listed in step 1.
		Periodically, NMS should poll the object
		hwCdpStatsRemTablesLastChangeTime to find out if anything
		has changed since the last poll. if something has
		changed, NMS will poll the objects listed in step 1 to
		figure out what kind of changes occurred in the tables.
		if value of hwCdpComplianceStatsRemTablesInserts has changed,
		then NMS will walk all tables by employing TimeFilter
		with the last-polled time value. This request will
		return new objects or objects whose values are updated
		since the last poll.
		if value of hwCdpComplianceStatsRemTablesAgeouts has changed,
		then NMS will walk the hwCdpComplianceStatsRxPortAgeoutsTotal and
		compare the new values with previously recorded ones.
		For ports whose hwCdpComplianceStatsRxPortAgeoutsTotal value is
		greater than the recorded value, NMS will have to
		retrieve objects associated with those ports from
		table(s) without employing a TimeFilter (which is
		performed by specifying 0 for the TimeFilter.)
		hwCdpComplianceStatsRemTablesDeletes and hwCdpComplianceStatsRemTablesDrops
		objects are provided for informational purposes."                       �"Information about a particular physical network connection.
		Entries may be created and deleted in this table by the agent,
		if a physical topology discovery process is active."                       W"The interface index of the local bridge port receving CDP packets, reference RFC2233."                       �"A time filter for this entry. See the time filter textual
		convention in IETF RFC 2021 and
		http://www.ietf.org/IESG/Implementations/RFC2021-Implementation.txt
		to see how time filter works." "IETF RFC 2021 section 6"                     /" The latest CDP packet recieved oon the port."                              �"A hwCdpComplianceRemTablesChange notification is sent when the value
		of hwCdpComplianceStatsRemTableLastChangeTime changes. It can be
		utilized by an NMS to trigger LLDP remote systems table
		maintenance polls.
		Note that transmission of hwCdpComplianceRemTablesChange
		notifications are throttled by the agent, as specified by the
		'hwCdpComplianceNotificationInterval' object."                         ^"The compliance statement for SNMP entities which implement
		the HUAWEI-CDP-COMPLIANCE-MIB."                   �"The collection of objects which are used to configure the
		CDP compliance implementation behavior.
		This group is mandatory for agents which implement the Huawei CDP compliance."                 �"The collection of objects which are used to represent LLDP
		 statistics.
		This group is mandatory for agents which implement the LLDP
		and have the capability of receiving and transmitting LLDP frames."                 &"The CDP packet received on the port."                "The collection of notifications used to indicate HUAWEI-CDP-COMPLIANCE-MIB
		data consistency and general status information.
		This group is mandatory for agents which implement the huawei CDP compliance
		and have the capability of receiving CDP frames."                                