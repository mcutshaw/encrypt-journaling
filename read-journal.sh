#!/bin/bash
date=$(date -Iminutes)
uid=$(cat /usr/lib/encrypt-journaling/config.conf)
dir=$(cat /usr/lib/encrypt-journaling/dir.conf)
journ=$(ls -r $dir )
item=1
while true
    do
        clear
text=$(echo $journ | awk '{print $'$item'}')
        echo $text $item
gpg -d -q $dir$text
read -n 1 key
if [ $key == 'a' ] && [ $item -gt 1 ]
then
    let item--
fi
if [ $key == 'd' ] && [ $item -lt $( ls -l $dir | wc -l)  ]
then
    let item++
fi

if [ $key == 'd' ] && [ $item -eq $( ls -l $dir | wc -l)  ]
then
    let item--
fi

if [ $key == 'q' ]
then
    exit
fi
done
