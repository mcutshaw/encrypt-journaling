#!/bin/sh
date=$(date -Iminutes)
uid=$(cat /usr/lib/encrypt-journaling/config.conf)
dir=$(cat /usr/lib/encrypt-journaling/dir.conf)
touch $dir$date
vim $dir$date 2>/dev/null
gpg -e -r $uid $dir$date
sudo shred -u $dir$date
