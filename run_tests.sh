#!/usr/bin/env bash

COUNT=10
while [ $COUNT -gt 0 ]; do
    echo $COUNT
    let COUNT=COUNT-1
done
echo "Exiting with error 3"
exit 3
