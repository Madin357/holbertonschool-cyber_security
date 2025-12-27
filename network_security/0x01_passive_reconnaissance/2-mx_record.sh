#!/bin/bash
nslookup -type=MX $1 | awk -F'= ' '/mail exchanger/ {gsub(/^ +| +$/,"",$2); print $2}'
