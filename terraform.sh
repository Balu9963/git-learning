#!/bin/bash/
#Author: Balu_DevOps_Team
#Date:0-0-26
#Version: V1
#
# Reusable Terraform-modules
# #############################################################################3
#
#Child_module
1: main.tf 
2: varible.tf
3: output.tf


# main.tf
 
provider "aws"{
reagion= "us-east-1"
{

resource= "aws-ec2-instances"{
ami= "var.ami-value"
instance_type= "t2.micro"
subnet_id= "var.submet_id_value"
}


# varible.tf

varible "value of ami"{
description= "ami_value"
{

varible "value of t2.micro"{
description= "t2.micro_value"
}

varible "subnet_id"{
description= "value of subnet_id_value"
}


# output.tf

output "aws-instance-ip-address"{
value= "aws- ip-address"
}




# Root_module
################################################################################
provider "aws"{
reagion= "us-east1"
}

module "aws-ec2-instances"{
resource= "./module/ec2-instance"
count= "3"
ami= "replace this"
instance_type= "t2.micro"
subnet_id= "replace this"
}


