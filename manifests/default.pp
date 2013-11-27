node default {
	include 'ntp'
	include 'timezone'
	class { 'motd': ensure => 'present' }
}
