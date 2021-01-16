#!/bin/bash -x
dayCheck=0
monthCheck=0
read -p "Enter the day:" day
read -p "Enter the month" month
if [[ ($month -eq 3 && $day -ge 19 )|| $month -eq 4 || $month -eq 5 || 
               ( $month -eq 6 && $day -le 21 ) ]] 
then
	echo True
else
	echo false
fi

