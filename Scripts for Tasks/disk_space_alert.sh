#!/bin/bash
# disk space

: '
step 1: finding the disk space using df -h
step 2: filter out file system and find the percentage of space using grep
step 3: Writting a shell script accordingly 
'

#!/bin/sh
df -H | grep -vE '^Filesystem|tmpfs' | awk '{ print $6 " " $1 }' | while read output;
do
  echo $output
  user_perc=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $user_perc -ge 90 ]; then
    echo "Running out of space \"$partition ($user_perc%)\" on $(hostname) as on $(date)" |
     mail -s "Alert: Almost out of disk space $user_perc%" you@somewhere.com
  fi
done





