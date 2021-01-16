#!/bin/bash -x
function firstName() {
	read -p "Enter the name " name
	pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"
	if [[ $name =~ $pattern ]]
	then
		echo Valid first name
	else
		echo Not valid first name
	fi
}
firstName;
