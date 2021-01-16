#!/bin/bash -x
read -p "Enter the number" number
table=0
for ((i=0;i<number;i++))
do
	table=$((table+2))
	echo $table
done	
