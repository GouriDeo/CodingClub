#!/bin/bash -x
for file in `ls *.log.1`
 do
 	fileName=`echo $file |awk -F. '{print $1}'`
 	newfileName=$fileName"-"$(date '+%d%m%Y')".log"
 	mv $file $newfileName
done
