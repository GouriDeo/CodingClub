#!/bin/bash -x
read -p "Enter the number" number
case $number in
        0)echo zero
        ;;
        1)echo One
        ;;
        2)echo Two
        ;;
       	3)echo Three
        ;;
	4)echo Four
	;;
	5)echo Five
	;;
	6)echo Six
	;;
	7)echo seven
	;;
	8)echo eight
	;;
	9)echo Nine
	;;
	*)echo Enter the correct number
	;;
esac

