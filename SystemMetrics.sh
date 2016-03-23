/bin/bash

echo `date` >> /tmp/TopCpuUsers2.txt
/bin/ps auxwww --sort -%cpu | head -10 >> /tmp/TopCpuUsers2.txt
echo "===========================================================" >> /tmp/TopCpuUsers2.txt
echo " "

