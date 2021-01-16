#!/bin/bash -x
dir="xyz"
if [ -d "$dir" ]
then
	echo folder already exists
else
 	mkdir $dir
 	echo Folder $dir created
fi
