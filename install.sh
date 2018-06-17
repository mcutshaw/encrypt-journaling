#!/bin/bash
user=`whoami`
curdir=`pwd`
basedir=/usr/lib/encrypt-journaling/
if [ $user != root ]
then
    echo "Must be run as root!"
    exit
fi
cd /usr/lib
mkdir encrypt-journaling
cp $curdir/"config.conf" $basedir
cp $curdir/"dir.conf" $basedir
cp $curdir/"journal.sh" $basedir
cp $curdir/"vim-journal.sh" $basedir
ln -sf $basedir"vim-journal.sh" /usr/bin/journal 
ln -sf $basedir"journal.sh" /usr/bin/journal
