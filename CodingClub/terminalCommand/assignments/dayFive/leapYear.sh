#!/bin/bash -x
read -p "Enter the year: " year
size=${#year}
if [[ $size -eq 4 ]]
then
	if [[ ( $year%4 -eq 0 && $year%100 -ne 0 ) || $year%400 -eq 0 ]]
	then
		echo Year $year is leap year 
 	else 
		echo year $year not leap year
	fi
else
echo Enter right year
fi
