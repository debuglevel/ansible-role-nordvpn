#!/bin/bash
openvpn_configuration="/etc/openvpn/nordvpn/active.ovpn"
sleep_duration=60

while true; do
  echo "Starting VPN with $openvpn_configuration..."
  sudo nice -n 19 openvpn $openvpn_configuration
  echo "OpenVPN returned with exit code: $?"
  
  echo "Sleeping for $sleep_duration seconds..."
  sleep $sleep_duration

  echo
  echo
done