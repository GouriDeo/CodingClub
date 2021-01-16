#!/bin/bash -x
read -p "Enter the number" number
if [[ $number -eq 1 ]]
then
        echo MOnday
elif [[ $number -eq 2 ]]
then
        echo Tuesday
elif [[ $number -eq 3 ]]
then
        echo Wednesday
elif [[ $number -eq 4 ]]
then
        echo Thursday
elif [[ $number -eq 5 ]]
then
        echo Friday
elif [[ $number -eq 6 ]]
then
        echo Saturday
elif [[ $number -eq 5 ]]
then
        echo Sunday
else
	echo Wrong input
fi

