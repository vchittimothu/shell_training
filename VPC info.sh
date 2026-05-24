#!bin/bash
Echo "Lets get the VPCs information for Hyderabd region"
aws ec2 describe-vpcs --region ap-south-2 | jq ".Vpcs[].VpcID" -r 

