#!/bin/bash -x
echo "1] Fahrenheit to celsius 2] Celsius to fehrenheit"
read -p "Enter the choice " choice
read -p "Enter the temperature" temp
conversion=0
if [[ ($choice -eq 1 && ($temp -ge 32 && $temp -le 212)) || 
	($choice -eq 2 && ($temp -ge 0 && $temp -le 100)) ]]
then
	function ferenhit() {
        	degF=$((($temp*9000/5)+32))
        	echo "Temperature in farenheit"
		printf %.3f "$((degF))e-3"
	}
	function celsius() {  
		degC=$((($temp-32)*5000/9)) 
		echo "Temperature in celsius is: "
		printf %.3f "$((degC))e-3"
	}
	case $choice in
		1)
		conversion="$( celsius $temp )"
		;;
		2)
		conversion="$( ferenhit $temp )"
		;;
		*)
		echo "Enter the correct choice"
		;;
	esac
else
	echo "give correct inputs"
fi
