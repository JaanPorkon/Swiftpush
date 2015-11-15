#!/bin/bash

container="PBN-Backups"
date=`date +%Y-%m-%d`

for user in /var/cpanel/users/*
do
  username=("${user/\/var\/cpanel\/users\//}")
  /scripts/pkgacct $username
  echo "Uploading: $username backup to $container"
  swiftpush -f /home/cpmove-$username.tar.gz -p $date/cpmove-$username.tar.gz -c $container
  echo "Upload done!"
  echo "Removing internal backup file..."
  rm -rf /home/cpmove-$username.tar.gz
  echo "Internal backup file removed!"
done
