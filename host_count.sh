#!/bin/bash

scan=$(grep "Nmap scan report" scan.txt )
jumlah=$(grep "Nmap scan report" scan.txt | sort | uniq | wc -l )
host=$(grep "Nmap scan report" scan.txt | awk '{print $5}' | sort | uniq )

echo "=== Host ditemukan ==="
echo "$host"
echo
echo "jumlah host: $jumlah"
