#!/bin/sh
date=$(date -Iminutes)
uid=$(cat `dirname $0`"/"config.conf)
dir=$(cat `dirname $0`"/"dir.conf)
touch $dir$date
chmod ug+w $dir$date
vim $dir$date 2>/dev/null
gpg --yes -e -r $uid $dir$date
shred -u $dir$date
chmod ug+w $dir$date".gpg"
