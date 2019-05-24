#!/bin/bash

echo "Backing up /home to /var/backups/home.tgz"
date
echo

tar -zcf /var/backups/home.tgz -C /home .

echo
echo "Backup finished"
date

notify-send Backup "/home/ugur has been backed up in /var/backup/"
