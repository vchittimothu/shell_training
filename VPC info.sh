#!bin/bash
Echo "Lets get the VPCs information for Hyderabd region"
aws ec2 describe-vpcs --region ap-south-2 | jq ".Vpcs[].VpcId" -r 
Vpc_count=$(aws ec2 describe-vpcs --region ap-south-2 | jq ".Vpcs[].VpcId" -r | wc -l)
Echo $Vpc_count
Echo "ap-south-2 region has total $(Vpc_count) vpc"
