#!/bin/bash
IP=$(curl ipecho.net/plain 2> /dev/null)
PORT=${1:-9000}
echo "Use the following command on the client:"
echo
echo "    wget -O /dev/null http://$IP:$PORT"
echo
(dd if=/dev/zero count=10000; echo -e "HTTP/1.1\n\n $(date)") | nc -l -p $PORT -q 1
