#!/usr/bin/bash

## get EC2 instance filtered by tags, this will get all instances with its ID and Name
echo "Get all EC2 instances"
aws ec2 describe-instances --filter "Name=tag-key,Values=Name" "Name=tag-value,Values=*" |jq '.Reservations[].Instances[] | (.Tags | from_entries) as $tags  | {InstanceID: .InstanceId, Name: $tags.Name,}'

echo "Get the status of the instance  i-0ef9611c8c0a27830"
 aws ec2 describe-instance-status --instance-id=i-0ef9611c8c0a27830