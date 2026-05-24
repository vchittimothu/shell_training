#!bin/bash
Echo "Lets get the VPCs information for Hyderabd region"
aws ec2 describe-vpcs --region ap-south-2 | jq ".Vpcs[].VpcID" -r 
Vpc_count=$(aws ec2 describe-vpcs --region ap-south-2 | jq ".Vpcs[].VpcId" -r | wc-1)
Echo $(Vpc_count)
Echo "ap-south-2 region has total($Vpc_count) vpc"
