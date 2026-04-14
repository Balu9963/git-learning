#!/bin/bash
# Author:Balu_DevOps_Team
# Date: 0-0-26
# Version: V1
# This script is used for checkthe aws services at console
###################################################################
#
#
# list of s3 buckets
  echo "print of s3buckets"
        aws s3 ls


# list ec2_instances
  echo "print of Ec2_instances"
        aws describe_instances


# list Lambda
  echo "print Lambda"
        aws lambda-functions

# list of IAM
 echo "print list of iam-users"
       aws iam-users

 # list of VPC
   echo "print vpc"
         aws vpc 
