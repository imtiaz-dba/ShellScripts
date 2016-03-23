#!/bin/bash

ec2-describe-volumes | grep available| awk '{print $2}' > us-east-1-volumes.txt
cat us-east-1-volumes.txt;
read -p "Do you wish to continue?" yn
    if ($y = U
        [Yy]* ) 
	echo "hello 1";
	echo "hello 2";
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac

for i in `cat /home/ec2-user/us-east-1-volumes.txt` ; do /opt/aws/bin/ec2-describe-volumes  $i; done
#for i in `cat /home/ec2-user/us-east-1-volumes.txt` ; do /opt/aws/bin/ec2-delete-volume  $i; done

