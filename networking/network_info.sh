#!/bin/bash

ip=$(ip a | grep "scope global wlan0" | awk '{print $2}')
gateway=$(ip route | grep default | awk '{print $3}')
dns=$(grep nameserver  /etc/resolv.conf | awk '{print $2}' |head  -n 1)

if [ -z "$gateway" ]
then
   gateway="Tidak terdeteksi (proot limitation)"
fi

echo "===Network Information ==="
echo "IP Address: $ip"
echo "Gateway: $gateway"
echo "DNS: $dns"
