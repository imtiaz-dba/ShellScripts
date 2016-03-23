#!/bin/bash

Command="cut -d: -f1,2 /etc/passwd"

exec $Command
#`$Command`

if [[ "$?" != "0" ]] 
then
	echo "Last command $Command failed with exit code $? "
else 
	echo "Last command $Command succeeded with exit code $? "
fi

	echo "Outside IfElse block: Last command $Command succeeded with exit code $? "


echo "hello"
