#!bin/bash
echo "Lets get the VPCs information for Hyderabd region"
aws ec2 describe-vpcs --region ap-south-2 | jq ".Vpcs[].VpcId" -r 
Vpc_count=$(aws ec2 describe-vpcs --region ap-south-2 | jq ".Vpcs[].VpcId" -r | wc -l)
echo $Vpc_count
echo "ap-south-2 region has total $(Vpc_count) vpc"
