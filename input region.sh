#!/bin/bash
Region=$1
echo $0
echo $1
echo "Lets get the VPCs information for the region $Region..."
aws ec2 describe-vpcs --region $Region | jq ".Vpcs[].VpcId" -r
vpc_count=$(aws ec2 describe-vpcs --region $Region | jq ".Vpcs[].VpcId" -r | wc -l)
echo $vpc_count
echo "$Region has total VPC counts of $vpc_count vpc...."
