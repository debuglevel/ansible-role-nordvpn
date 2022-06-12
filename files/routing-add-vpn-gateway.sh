#!/bin/bash
gateway="192.168.0.1"
interface="eth0"

echo "Getting IP from OpenVPN configuration..." 
openvpn_configuration="/etc/openvpn/nordvpn/active.ovpn"
ip=$(cat $openvpn_configuration | grep "remote " | cut -d " " -f 2)
echo "Got IP from OpenVPN configuration: $ip" 

echo "Adding route to VPN gateway $ip via $gateway through $interface..."
sudo ip route add $ip dev $interface via $gateway
echo "Added route to VPN gateway $ip via $gateway through $interface"
