#!/bin/bash

scan=$(grep "open" scan.txt | sort | awk '{print $1,$3}')
jumlah=$(grep "open" scan.txt | wc -l | awk '{print $1}')


echo "===Port terbuka==="
echo "$scan"
echo
echo "jumlah port: $jumlah"
