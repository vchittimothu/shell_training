#!/bin/bash
Region1=$1
Region2=$2
Region3=$3
echo $0
echo $1
echo $2
echo $3

Echo "Lets get the VPC informations in $Region1"
aws ec2 describe-vpcs --region $Region1 | jq ".Vpcs[].VpcId" -r
vpc_count=$(aws ec2 describe-vpcs --region $Region1 | jq ".Vpcs[].VpcId" -r|wc -l)
echo " Total VPC count in $Region1 is $vpc_count"
echo ##################################################################################