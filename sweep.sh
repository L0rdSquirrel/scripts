#!/bin/bash
NETWORK=$(echo $1 | cut -d. -f1-3)
START=$2
END=$3

RED='\033[0;31m'
GREEN='\033[0;32m'
function usage()
{
echo "usage: $0  Network Start_IP End_IP"
if [ $# -gt 0 ]
	then echo "ERROR: $1"
fi
}
if [ $# -gt 0 ]
then
	for i in $(seq $START $END); do
		IP=$NETWORK"."$i
		ping -c 1 $IP &>/dev/null && echo -e "${GREEN}$IP Live" || echo -e "${RED}$IP Fail"
	done

else
	usage
fi

