#!/bin/sh

used=$(free -m | grep '^Mem' | awk '{print $3}')
total=$(free -m | grep '^Mem' | awk '{print $2}')
perct=$((($used*100)/$total))

if [ $perct -gt 60 ] ; then

echo "Ram usage: $perct is above 60%" | mail -s "Critical Ram Usage" "example@example.com"

fi


#This script checks current ram usage and mails the value.
