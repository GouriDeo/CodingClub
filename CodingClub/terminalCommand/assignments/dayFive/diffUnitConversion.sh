#!/bin/bash -x
read -p "Enter the choice: " choice
case $choice in
	1)echo "Feet to Inch"
	read -p "Enter the number in feet:" feet
	printf %.f "$(($feet*12))"
	;;
	2)echo "Feet to Meter"
	read -p "Enter the number in feet:" feet
	printf %.4f "$((1000000000 * ($feet*3048)/10000))e-9"
	;;
	 3)echo "inch to feet"
        read -p "Enter the number in inch:" inch
        printf %.4f "$((1000000000 * ($inch*1)/12))e-9"
        ;;
	4)echo "Meter to Feet"
        read -p "Enter the number in meter:" meter
        printf %.4f "$((1000000000 * ($meter*10000)/3048))e-9"
	;;
	*)echo "Enter the correct option"
	;;
esac
