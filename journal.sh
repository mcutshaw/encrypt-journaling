#!/bin/sh
date=$(date -Iminutes)
uid=$(cat `dirname $0`"/"config.conf)
dir=$(cat `dirname $0`"/"dir.conf)
sudo touch $dir$date
libreoffice $dir$date 2>/dev/null
gpg --yes -e -r $uid $dir$date
sudo shred -u $dir$date
