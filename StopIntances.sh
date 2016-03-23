#!/bin/bash

echo `date` >> /home/ec2-user/ShellScripts/logs/StopIntances.log
ec2-stop-instances i-1dfcbf6d | tee /home/ec2-user/ShellScripts/logs/StopIntances.log
echo "===========================================================" >> /home/ec2-user/ShellScripts/logs/StopIntances.log
echo " "

