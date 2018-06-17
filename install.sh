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
cp -p $curdir/"config.conf" $basedir
cp -p $curdir/"dir.conf" $basedir
cp -p $curdir/"journal.sh" $basedir
cp -p $curdir/"vim-journal.sh" $basedir
cp -p $curdir/"read-journal.sh" $basedir
ln -sf $basedir"vim-journal.sh" /usr/bin/vim-journal 
ln -sf $basedir"journal.sh" /usr/bin/journal
ln -sf $basedir"read-journal.sh" /usr/bin/read-journal

