#!/bin/bash -x
read -p "Enter the number: " number
size=${#number}
case $size in
	1)echo Unit
	;;
	2)echo Ten
	;;
	3)echo Hundred
	;;
	4)echo Thousand
	;;
esac
