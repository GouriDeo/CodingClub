#!/bin/bash -x
for file in `ls *.log.1`
 do
 	echo $file
 	nameFirst=`echo $file |awk -F. '{print $1}'`
 	nameSecond=`echo $file |awk -F. '{print $2}'`
 	fileName=$nameFirst"-"$(date '+%d%m%Y')"."$nameSecond
 	touch $fileName
 	mv $file $fileName
done
