#!/bin/bash

# This script allows you to create backups automatically and upload them to your
# Swift deployment. This scrit will allow you to backup accounts one by one

container="Backups"
date=`date +%Y-%m-%d`
maxload=10

/usr/local/cpanel/bin/cpuwatch $maxload /scripts/pkgacct $1
echo "Uploading: $1 backup to $container"
swiftpush -f /home/cpmove-$1.tar.gz -p $date/cpmove-$1.tar.gz -c $container
echo "Upload done!"
echo "Removing internal backup file..."
rm -rf /home/cpmove-$1.tar.gz
echo "Internal backup file removed!"
