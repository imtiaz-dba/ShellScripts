#!/bin/sh


a=1
while [ "$a" -lt 8 ]    # this is loop1
do
    echo -n "$a "
Date=`date --date="$a day ago" +'%Y-%m-%d'`
   a=`expr $a + 1`
echo $Date

aws ec2 describe-instances --filters "Name=launch-time,Values=$Date*" >> /tmp/File.txt
echo "aws ec2 describe-instances --filters "Name=launch-time,Values=$Date*""
echo "####################################################################"
done

echo"################################################################################"

