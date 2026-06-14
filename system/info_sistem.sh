#!/bin/bash
hostname=$(hostname)
currentUser=$(whoami)
kernelVersion=$(uname -r)
ip=$(ip a | grep "scope global wlan0" | awk '{print $2'})
dnsServer=$(grep nameserver /etc/resolv.conf | awk '{print $2}' | head -n 1)
memoryUsage=$(free -h | grep "Mem" | awk '{print $3}')
diskUsage=$(df -h | grep "/storage/emulated/0" | awk '{print $3 "/" $2}')
currentTime=$(date)
uptime=$(uptime -p 2>/dev/null)

if [ -z "$uptime" ]
then
   uptime="tidak terdeteksi (proot limitation)"
fi

echo "=== System Information ==="
echo "Hostname: $hostname"
echo "Current User: $currentUser"
echo "Kernel Version: $kernelVersion"
echo "IP Address: $ip"
echo "DNS Server: $dnsServer"
echo "Memory Usage: $memoryUsage"
echo "Disk Usage: $diskUsage"
echo "Current Time: $currentTime"
echo "Uptime : $uptime"
