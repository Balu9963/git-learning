#!/bin/bash
#Author: Balu_DevOps_Team
#Date: 0-0-26
#Version: V1
#
#Disk Allert usage script
#############################################################!/bin/bash

THRESHOLD=80

# Get disk usage (root partition)
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current Disk Usage: $USAGE%"

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "⚠️ ALERT: Disk usage is above ${THRESHOLD}%"
else
    echo "✅ Disk usage is normal"
fi
