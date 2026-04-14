#!/bin/bash
#Author: Balu_DevOps_Team
#Date: 0-0-26
#Version: v1
#this script chech pod health
#################################################################
NAMESPACE="default"

TOTAL=$(kubectl get pods -n $NAMESPACE --no-headers | wc -l)
RUNNING=$(kubectl get pods -n $NAMESPACE --field-selector=status.phase=Running --no-headers | wc -l)

PERCENT=$((RUNNING * 100 / TOTAL))

echo "Pod Health: $PERCENT%"
