#!/usr/bin/env bash
# using puppet to change configuration file

file {'ect/ssh/ssh_cofig':
	ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	passwordAuthentification no
	",

}
