#!/bin/sh
date=$(date -Iminutes)
uid=$(cat "/usr/lib/encrypt-journaling/"config.conf)
dir=$(cat "/usr/lib/encrypt-journaling/"dir.conf)
echo $dir $uid
touch $dir$date
chmod ug+w $dir$date
vim $dir$date 2>/dev/null
gpg --yes -e -r $uid $dir$date
shred -u $dir$date
chmod ug+w $dir$date".gpg"
