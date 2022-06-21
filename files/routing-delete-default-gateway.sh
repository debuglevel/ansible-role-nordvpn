#!/bin/bash
gateway="192.168.0.1"
interface="eth0"

echo "Deleting $gateway as default gateway via $interface..."
sudo route del default gw $gateway $interface
echo "Deleted $gateway as default gateway via $interface"
