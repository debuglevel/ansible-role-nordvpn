#!/bin/bash
echo "Adding route to VPN..."
sudo ./routing-add-vpn-gateway.sh

echo "Connecting to VPN..."
tmux new-window -n OpenVPN bash -c "./vpn-maintain-connection.sh; bash"

echo "Starting ping..."
tmux new-window -n ping bash -c "while ! sudo ping -n 8.8.8.8; do sleep 1; done"
