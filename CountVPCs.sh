#!/bin/bash


#Create an empty file
FileName=VPC-Counts.txt
> $FileName

for i in  MainVPC PrvtPub-NAT
do

aws ec2 describe-vpcs | grep $i >> $FileName
Count=`cat $FileName | wc -l`

done
echo "Total # of VPCs are: $Count"
