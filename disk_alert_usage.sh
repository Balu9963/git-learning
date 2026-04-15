#!/bin/bash
#Author: Balu_DevOps_Team
#Date: 0-0-26
#Version: V1
#
#Disk Allert usage script
#############################################################
#
THRESHOLD=80

UASGE=$(df -h / | awk NR==2 {print 5}

echo "current disk usage: $USAGE%"

if["$USAGE -ge ,  $THRESHOLD%"] Then,
echo " ALERT:Disk usage is above $ {THRESHOLD}%"
else
echo "disk normal uasagr"
fi
