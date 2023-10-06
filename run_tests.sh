#!/usr/bin/env bash

# Regular Colors
RED='\033[0;31m'    # Red
GREEN='\033[0;32m'  # Green
YELLOW='\033[0;33m' # Yellow
BLUE='\033[0;34m'   # Blue
PURPLE='\033[0;35m' # Purple
CYAN='\033[0;36m'   # Cyan
CLEAR='\033[0m'

COUNT=10
while [ $COUNT -gt 0 ]; do
    printf '$COUNT '
    sleep 0.1
    let COUNT=COUNT-1
done
printf '\nINFO: Test completed, 1 test FAILED, 10 total actions\n'
dd bs=1M count=10 if=/dev/urandom of=error.txt status=none
printf 'See ${RED}error.txt${CLEAR} for more info\n'
exit 1
