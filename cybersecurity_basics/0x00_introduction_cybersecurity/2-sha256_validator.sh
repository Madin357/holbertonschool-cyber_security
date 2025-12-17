#!/bin/bash
echo "$(sha256sum "$1" | cut -d' ' -f1) $1" | grep -q "^$2 $1$" && echo "$1: OK" || echo "$1: FAIL"
