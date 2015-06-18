#!/bin/bash

LOCKFILE="/tmp/getmail-gmail.lock"
# try once to get the lock else exit
lockfile -r 0 "$LOCKFILE" || exit 0
trap 'rm -f "$LOCKFILE"; exit $?' INT TERM EXIT

# Note: -q means fetch quietly so that this program is silent
/usr/bin/getmail -q -r /home/pi/.getmail/getmail.gmail
