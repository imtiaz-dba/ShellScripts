#!/bin/bash

#Log file location
LogFile=/tmp/Connections.log
#initializing variable
conn=0


#checking if there is any process listening on port 80 and then get a count and send the results to conn -- additional write the output to a log file

#conn=`/usr/sbin/lsof -i:80 | /usr/bin/ wc -l | /usr/bin/tee -a $LogFile`
conn=`/ssr/sbin/lsof -i:80 | /usr/bin/wc -l`

if [[ $? -ne 0 ]]
then 
    echo "`/bin/date` command to check httpd connectoins failed" >> $LogFile 
    exit 0
fi

echo "`/bin/date` Number of httpd connections $conn" >> $LogFile
if [[ $conn -gt 0 ]]
then 
	echo "httpd is running"
else
	echo "httpd is not running"
fi
