#!/bin/bash -x
function password() {
	read -p "Enter the password " password
	if [[ ${#password} -ge 8 && "$password" == *[[:lower:]]* && "$password" == *[[:upper:]]* && "$password" == *[0-9]* && "$password" == *[@#%^-*+/]*  ]]
	then
		echo valid
	else
		echo not valid
	fi
}
password;
