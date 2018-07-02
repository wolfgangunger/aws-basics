#!/bin/bash
aws ec2 describe-instances --region eu-central-1
aws ec2 describe-instances --region sa-east-1
aws ec2 describe-instances --region sa-east-1 --query Reservations[].Instances[].InstanceId
aws ec2 describe-instances --region sa-east-1 --filters "Name=instance-type,Values=t2.micro" --query Reservations[].Instances[].InstanceId

aws ec2 describe-account-attributes

aws ec2 run-instances --image-id ami-6dca9001 --security-group-ids sg-7ee81907 --count 1 --instance-type t2.micro --key-name ungerw-sp

aws ec2 run-instances --image-id ami-6dca9001 --subnet-id subnet-9f0284f8 --security-group-ids sg-7ee81907 --count 1 --instance-type t2.micro --key-name ungerw-sp

aws ec2 create-tags --resources i-0102ae2a8c41715e8 --tags Key=Name,Value=MyWebserver

aws ec2 stop-instances --instance-ids i-0102ae2a8c41715e8

aws ec2 start-instances --instance-ids i-0102ae2a8c41715e8

aws ec2 terminate-instances --instance-ids i-0102ae2a8c41715e8

