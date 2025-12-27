#!/bin/bash
# Flush existing rules
sudo iptables -F
sudo ip6tables -F
# Allow incoming TCP traffic on port 80
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo ip6tables -A INPUT -p tcp --dport 80 -j ACCEPT
# Drop all other incoming traffic
sudo iptables -A INPUT -j DROP
sudo ip6tables -A INPUT -j DROP
echo "Rules updated"
echo "Rules updated (v6)"
