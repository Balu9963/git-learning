#!/bin/bash
# Author: Balu-Devops-team
# Date: 0-0-0
# version: v1
# this script willreports the aws usages
# ##########################################################
#
#
# list of s3 buckets
 echo "print s3 buckets"
  aws s3 ls
  
# list of Ec2 instances
 echo "print list of ec2_instances"
 aws ec2 describe-instances

# list of lamda 
 echo "print of lambda"
 aws lamda list-fuctions

# list of IAM Users
 echo "print list of iam users"
 aws iam users






