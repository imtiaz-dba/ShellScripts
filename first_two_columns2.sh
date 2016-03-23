#!/bin/bash

Command="cat /etc/passwd | cut -d: -f1,2"
echo exit_code

cat /etc/passwd | cut -d: -f1,2

#if [ "$exit_code" -eq "0" ] 
if [ "$?" -eq "0" ] 
then
	echo "Last command $Command succeeded with exit code $? "
else 
	echo "Last command $Command failed with exit code $? "
fi

	echo "Outside IfElse block: Last command $Command succeeded with exit code $? "

