#!/bin/ksh


IFS="
"

for line in  `s3cmd ls s3://imtiaz`
do
 echo $line
done
 



