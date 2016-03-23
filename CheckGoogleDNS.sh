#!/bin/bash

while true; do
        date
        out=$(nslookup runsignup-shard1.cir94iyeq73b.us-east-1.rds.amazonaws.com 8.8.8.8)
        echo "$out" | grep '10.0.1.145' > /dev/null
        if [ $? -ne 0 ]; then
                echo "$out";
        else
                echo "Shard is good!"
        fi
        
        date
        out=$(nslookup runsignup-ro-2.cir94iyeq73b.us-east-1.rds.amazonaws.com 8.8.8.8)
        echo "$out" | grep '10.0.3.101' > /dev/null
        if [ $? -ne 0 ]; then
                echo "$out";
        else
                echo "Read-replica is good!"
        fi

        date
        out=$(nslookup www.google.com 8.8.8.8)
        echo "$out" | grep 'SERVFAIL' > /dev/null
        if [ $? -eq 0 ]; then
                echo "$out";
        else
                echo "Google is good!"
        fi

        sleep 1
done

