#!/bin/bash
echo "A record for $1:"; nslookup -type=A "$1" | awk '/^Address: / {print $2}'
