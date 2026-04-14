#!/bin/bash   ##Tells system to run this script using bash shell
#Author: Balu_DevOps_Team
#Date: 0-0-26
#Version: v1
#this script chech pod health
#################################################################
NAMESPACE="default"      #"default" = default namespace

TOTAL=$(kubectl get pods -n $NAMESPACE --no-headers | wc -l)  #gets all pods in that namespace
RUNNING=$(kubectl get pods -n $NAMESPACE --field-selector=status.phase=Running --no-headers | wc -l) #filters only running pods

PERCENT=$((RUNNING * 100 / TOTAL)) #Calculates percentage of running pods

echo "Pod Health: $PERCENT%"       #Prints result
