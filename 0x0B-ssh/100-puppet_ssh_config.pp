#!/usr/bin/env bash
# using puppet to change configuration file

file {'etc/ssh/ssh_config':
	ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	passwordAuthentification no
	",

}
