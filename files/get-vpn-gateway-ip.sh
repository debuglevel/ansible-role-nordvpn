#!/bin/bash
openvpn_configuration="/etc/openvpn/client/active.conf"
#echo "Getting IP from OpenVPN configuration $openvpn_configuration..." 
ip=$(sudo cat $openvpn_configuration | grep "remote " | cut -d " " -f 2)
#echo "Got IP from OpenVPN configuration: $ip" 

echo $ip