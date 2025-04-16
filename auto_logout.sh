#!/bin/bash

LOGFILE="/var/log/auto_logout.log"
echo "Logout triggered at $(date)" >> $LOGFILE

for user in $(who | awk '{print $1}' | sort | uniq); do
  if [ "$user" != "root" ]; then
    pkill -KILL -u "$user"
    echo "Logged out user: $user" >> $LOGFILE
  fi
done
