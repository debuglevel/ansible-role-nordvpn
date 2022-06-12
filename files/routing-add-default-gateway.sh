#!/bin/bash
gateway="192.168.0.1"
interface="eth0"

echo "Adding $gateway as default gateway via $interface..."
sudo route add default gw $gateway $interface
echo "Added $gateway as default gateway via $interface"
