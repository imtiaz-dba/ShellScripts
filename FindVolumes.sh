ec2-describe-volumes | grep available| awk '{print $2}' > us-east-1-volumes.txt
cat us-east-1-volumes.txt;

