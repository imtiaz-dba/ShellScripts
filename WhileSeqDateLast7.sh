#!/bin/sh


for i in `seq 1 7`      # this is loop using seq
do
Date=`date --date="$i day ago" +'%Y-%m-%d'`
echo "For $Date here are the instance launches:"  >> /tmp/File.txt

aws ec2 describe-instances --filters "Name=launch-time,Values=$Date*" >> /tmp/File.txt
echo "aws ec2 describe-instances --filters "Name=launch-time,Values=$Date*""
echo "####################################################################"
done

