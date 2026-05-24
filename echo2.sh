#!/bin/bash
echo "Lets Get VPC Information For The Region us-east-1 ...."
aws ec2 describe-vpcs --region us-east-1 | jq ".Vpcs[].VpcId" -r
VPC_COUNT=$(aws ec2 describe-vpcs --region us-east-1 | jq ".Vpcs[].VpcId" -r | wc -l)
# echo $VPC_COUNT
# echo ${VPC_COUNT}
# echo "${VPC_COUNT}"
echo "US-EAST-1 Has A Total VPC Count Of ${VPC_COUNT} VPCs...."