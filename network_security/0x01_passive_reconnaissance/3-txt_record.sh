#!/bin/bash
nslookup -type=TXT $1 | awk -F'= ' '/text/ {gsub(/^ +| +$/,"",$2); print $2}'
