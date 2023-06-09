﻿#!/bin/bash
cat /var/log/secure | awk '/Failed/{print $(NF-3)}' | sort | uniq -c | awk '{print $2"="$1;}'> /root/black.txt
DEFINE=10
for i in `cat  /root/black.txt`
do
    IP=`echo | awk '{split("'${i}'", array, "=");print array[1]}'`
    NUM=`echo | awk '{split("'${i}'", array, "=");print array[2]}'`
    if [[ $NUM -gt $DEFINE ]];then
     grep $IP /etc/hosts.deny > /dev/null
      if [ $? -gt 0 ];then
          echo "sshd:$IP:deny" >> /etc/hosts.deny
      fi
    fi
done