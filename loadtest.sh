#!/bin/bash
#
# Check if a port is open.

if [ $# -ne 1 ]; then
  echo "usage: loadtest.sh PORT"
  exit 1
fi

declare -i errs=0

while true; do
  if ! nc -z 127.0.0.1 $1 2>/dev/null; then
    ((errs++))
    echo $errs
  fi
done
