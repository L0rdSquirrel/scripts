#!/bin/bash
IP_LIST=$(cat NEW-HOSTS.txt)

if [ $# -gt 0 ]
then
	filename=$1
else
        filename=`date +%M-%m-%d-%y`
fi

for i in $IP_LIST; do
	nmap -sC -sS -sV -p 1-65535 -T5 -A -oX /root/scans/$filename.xml $i
done
