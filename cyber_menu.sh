#!/bin/bash

lihat_ip() {
   ip a
}

ping_google() {
    ping -c 1 google.com
}

lihat_dns() {
    cat /etc/resolv.conf
}

while true
do
    echo "=== CyberMenu ==="
    echo "1. Look IP"
    echo "2. Ping Google"
    echo "3. Look DNS"
    echo "4. Exit"
    read pilihan

    case $pilihan in
       1)
         lihat_ip
         ;;
       2)
         ping_google
         ;;
       3)
         lihat_dns
         ;;
       4)
         break
         ;;
     esac
done
