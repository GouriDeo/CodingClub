#!/bin/bash -x
function lastName() {
	read -p "Enter the name " last
	pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"
	if [[ $last =~ $pattern ]]
	then
	        echo Valid last name
	else
	        echo Not valid last name
	fi
}
lastName;
