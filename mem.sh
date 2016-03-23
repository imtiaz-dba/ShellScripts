#!/bin/bash
 
export AWS_CLOUDWATCH_HOME=/home/ec2-user/CloudWatch-1.0.12.1
export AWS_CREDENTIAL_FILE=$AWS_CLOUDWATCH_HOME/credentials
export AWS_CLOUDWATCH_URL=https://monitoring.amazonaws.com
export PATH=$AWS_CLOUDWATCH_HOME/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/jre
 
# get ec2 instance id
instanceid=`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`
 
memtotal=`free -m | grep 'Mem' | tr -s ' ' | cut -d ' ' -f 2`
memfree=`free -m | grep 'buffers/cache' | tr -s ' ' | cut -d ' ' -f 4`
let "memused=100-memfree*100/memtotal"
 
mon-put-data --metric-name "FreeMemoryMBytes" --namespace "System/Linux" --dimensions "InstanceId=$instanceid" --value "$memfree" --unit "Megabytes"
 
mon-put-data --metric-name "UsedMemoryPercent" --namespace "System/Linux" --dimensions "InstanceId=$instanceid" --value "$memused" --unit "Percent"
