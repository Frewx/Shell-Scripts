#!/bin/bash

##This script automates the creation of bash scripts.
##Takes the script name as an argument from terminal
##Creates the script file and makes it executable.

##Written by : Hikmet Ugur Akgul

[ $# -eq 0 ] && { echo "Invalid Argument. Usage: $0 scriptname"; exit 1; }

scriptname=$1

touch $scriptname
echo "#!/bin/bash" >> $scriptname
chmod +x $scriptname
