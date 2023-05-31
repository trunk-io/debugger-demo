#!/usr/bin/env bash

COUNT=10
while [ $COUNT -gt 0 ]; do
    echo $COUNT
    sleep 0.5
    let COUNT=COUNT-1
done
echo "Test failed"
exit 1
