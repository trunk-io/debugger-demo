#!/usr/bin/env bash

RED='\033[0;31m'
COUNT=10
while [ $COUNT -gt 0 ]; do
    echo $COUNT
    sleep 0.1
    let COUNT=COUNT-1
done
yes really interesting failure info is here | head -c 100KB > error.txt
dd bs=1M count=10 if=/dev/urandom of=error.txt
printf "${RED}See error.txt for more info"
exit 1
