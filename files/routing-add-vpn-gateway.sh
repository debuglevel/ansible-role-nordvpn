#!/bin/bash
gateway="192.168.0.1"
interface="eth0"

openvpn_configuration="/etc/openvpn/client/active.conf"
echo "Getting IP from OpenVPN configuration $openvpn_configuration..." 
ip=$(./get-vpn-gateway-ip.sh)
echo "Got IP from OpenVPN configuration: $ip" 

echo "Adding route to VPN gateway $ip via $gateway through $interface..."
sudo ip route add $ip dev $interface via $gateway
echo "Added route to VPN gateway $ip via $gateway through $interface"
