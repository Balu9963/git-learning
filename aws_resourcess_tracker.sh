#!/bin/bash
# Author: Balu_DevOps_Team
# Date:0-0-0
# Version: v1
# This script for aws resource tracker
# ##################################################################
#
# list s3 buckets
 echo "print list of s3 buckets"
       aws s3 ls

# list of ec2 instances
  echo "print list of ec2_instances"
        aws ec2 describe-instances


# list of Lambda
  echo "print  Lambda "
        aws lambda-functions

# list of IAM users
  echo "print list of iam users"
        aws iam-users

