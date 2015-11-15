#!/bin/bash

# This script allows you to create backups automatically and upload them to your
# Swift deployment. It takes all usernames and automatically generates backups for them.
# Make sure you edit all variables below to match your own setup.

container="Backups"
date=`date +%Y-%m-%d`
maxload=10

for user in /var/cpanel/users/*
do
  username=("${user/\/var\/cpanel\/users\//}")
  /usr/local/cpanel/bin/cpuwatch $maxload /scripts/pkgacct $username
  echo "Uploading: $username backup to $container"
  swiftpush -f /home/cpmove-$username.tar.gz -p $date/cpmove-$username.tar.gz -c $container
  echo "Upload done!"
  echo "Removing internal backup file..."
  rm -rf /home/cpmove-$username.tar.gz
  echo "Internal backup file removed!"
done
