#!/bin/sh

temp=$(df | grep "^/dev/sda1 " | awk '{print $5}' | tr -d '%')
if [ "$temp" -gt 50 ]; then
   echo "${temp}%"
   date "+Date:%d.%m.%Y Hour: %H:%M"
fi


#Looks for your mounted hdd or ssd and takes it's current usage 
#if it's greater then a threshold it prints the value and the date
#you must modify "sda1" part for your needs. 
#you can use this script with cron and check the hdd/ssd usage every minute.
