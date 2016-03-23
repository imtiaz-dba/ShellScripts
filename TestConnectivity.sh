#!/bin/bash

#LogFile
LogFile="/home/ec2-user/ShellScripts/logs/TestConnectivity.log"

#Outputting timestamp to a log file
echo `/bin/date` >> $LogFile

#Testing connectivity using nc command and using appropriate port number and then appending it to the log file
/usr/bin/nc -vz imtiaz.ci9hs5fmfulz.us-east-1.rds.amazonaws.com 3306 | /usr/bin/tee $LogFile
