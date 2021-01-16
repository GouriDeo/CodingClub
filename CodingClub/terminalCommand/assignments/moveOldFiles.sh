#!/bin/bash -x
mkdir backUpFolder
oldFiles=`find -atime +2 -type f`  
cp $oldFiles backUpFolder
echo $oldFiles Moved to backup folder        
