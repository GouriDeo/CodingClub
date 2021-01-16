#!/bin/bash -x
function number() {
	read -p "Enter the country code then mobile number " number
	pattern="^([0-9]{2})[[:space:]]{1}[0-9]{10}"
	if [[ $number =~ $pattern ]]
	then
		echo valid
	else
		echo not valid
	fi
}
number;
