#!/bin/bash
read -p "Instance Type: " instance
read -p "Key Name: " key

IP=$(aws ec2 describe-instances \
  --query "Reservations[*].Instances[*].[PublicIpAddress]" \
  --output text)
ami=$(aws ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --query 'Parameters[0].[Value]' --output text)
aws ec2 run-instances \
    --image-id $ami \
    --instance-type $instance \
    --count 1 \
    --key-name $key \
    --user-data file://my_script.txt
echo $(aws ec2 describe-instances \
  --query "Reservations[*].Instances[*].[InstanceId,PublicIpAddress]" \
  --output=text)

