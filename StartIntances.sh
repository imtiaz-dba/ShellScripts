#!/bin/bash

echo `date` >> /home/ec2-user/ShellScripts/logs/StartIntances.log
ec2-start-instances i-1dfcbf6d | tee /home/ec2-user/ShellScripts/logs/StartIntances.log
echo "===========================================================" >> /home/ec2-user/ShellScripts/logs/StartIntances.log
echo " "

