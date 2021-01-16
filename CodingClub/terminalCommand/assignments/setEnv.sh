#!/bin/bash -x
if [[ ! -v userSecret ]]
then 
	export userSecret=dH23xJaa23
	echo updated 
else 
	echo already present
fi
