#!/bin/bash
Region1=$1
Region2=$2
Region3=$3
echo $0
echo $1
echo $2
echo $3
echo "Lets get the VPC informations in $Region1"
aws ec2 describe-vpcs --region $Region1 | jq ".Vpcs[].VpcId" -r
vpc_count=$(aws ec2 describe-vpcs --region $Region1 | jq ".Vpcs[].VpcId" -r|wc -l)
echo " Total VPC count in $Region1 is $vpc_count"
echo ##################################################################################
echo "Lets get the VPC informations in $Region2"
aws ec2 describe-vpcs --region $Region2 | jq ".Vpcs[].VpcId" -r
vpc_count=$(aws ec2 describe-vpcs --region $Region2 | jq ".Vpcs[].VpcId" -r|wc -l)
echo " Total VPC count in $Region2 is $vpc_count"
echo ##################################################################################
echo "Lets get the VPC informations in $Region3"
aws ec2 describe-vpcs --region $Region3 | jq ".Vpcs[].VpcId" -r
vpc_count=$(aws ec2 describe-vpcs --region $Region3 | jq ".Vpcs[].VpcId" -r|wc -l)
echo " Total VPC count in $Region3 is $vpc_count"