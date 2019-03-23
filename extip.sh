#!/bin/sh


extip=$(curl -s "http://myexternalip.com/raw")
echo " Your external ip is : $extip"
