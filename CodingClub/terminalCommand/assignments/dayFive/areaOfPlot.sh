#!/bin/bash -x
area=$((60*40))
newPlot=$((25*$area))
acres=$(($newPlot/43560))
echo "Area in acres: "$acres
