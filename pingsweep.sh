#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'

IP_LIST=$(cat IP_LIST.txt)

for i in $IP_LIST; do
	ping -c 1 $i &>/dev/null && echo -e "${GREEN}$IP Live" || echo -e "${RED}$IP Fail"
done
