#!/bin/bash -x
read -p "Enter the number" number
case $number in
	1)echo Monday
        ;;
        2)echo Tuesday
        ;;
        3)echo wednesday
        ;;
        4)echo Thursday
        ;;
        5)echo Friday
        ;;
        6)echo saturday
        ;;
        7)echo Sunday
        ;;
        *)echo Enter the correct number
	;;
esac
