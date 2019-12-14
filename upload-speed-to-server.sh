#!/bin/bash
IP=$(curl ipecho.net/plain 2> /dev/null)
PORT=${1:-9000}
echo "Use the following command to upload the file to this server:"
echo
echo "    dd if=/dev/zero count=10000 2> /dev/null | pv | nc $IP $PORT -q 1"
echo
nc -l -p $PORT | dd of=/dev/null 2> /dev/null
