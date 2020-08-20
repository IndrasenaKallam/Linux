#!/bin/bash
while [ true ];
do 
used =  `free -m | awk 'NR==3 {print $4}'`

if [$used -lt 1000] && [$used -gt 800]; then

echo "Free memory space is in between 800 and 1000 MB,There is a change of memory leak !!!" | mail -s "Memory Alert ($used)"  some@whichdomain.com

fi
sleep 5
done


