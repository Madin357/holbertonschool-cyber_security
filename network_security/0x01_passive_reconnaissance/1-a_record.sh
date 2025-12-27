#!/bin/bash
echo "Retrieving A record for $1:"; nslookup -type=A "$1" | awk '/^Address: / {print $2} / {echo $2}'
