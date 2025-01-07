#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHHOLD=5

while read -r line
do 
   USAGE=$(echo $line |awk -F " " '{print$6F}' cut -d "%" -f1)
   PARTITION=$(echo $line | awk -F " " '{print $NF}')
   echo "Partition: $PARTITION , Usage: $USAGE"

done <<< $DISK_USAGE