#!/bin/bash
nslookup -type=A "$1" | awk '/^Address: / {print "A record for " ARGV[1] ": "$2}'
