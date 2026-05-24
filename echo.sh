#! /bin/bash
Echo "Lets get the VPC information for this region Us-east-1...."
aws ec2 describe-vpc --region us-east-1 | jq ".Vpc[].VpcID" -r
VPC_COUNT=$(aws ec2 describe-vpc --region us-east-1 | jq ".Vpc[].VpcID" -r| wc -l)
echo "Us-east-1 has total count of $VPC_COUNT vpcs.."
