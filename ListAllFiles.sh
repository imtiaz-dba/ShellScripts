#!/bin/bash

filename="*sh"

for file in $filename
do
 echo "Contents of $file"
 echo "---"
 cat "$file"
 echo
done

for i in {1..3};do curl v3.example.com; done
