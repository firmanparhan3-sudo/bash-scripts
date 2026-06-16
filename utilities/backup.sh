#!/bin/bash

folder="$1"

if [ -z "$1" ]
then
  echo "Usage: ./backup.sh <name_folder>"
  exit 1
fi

if [ ! -d "$folder" ]
then
  echo "Error: directory notfound!"
  exit 1
fi

backup_name="backup_$(date +%Y%m%d_%H%M%S.tar.gz)"

tar -czf "$backup_name" "$folder"

backup_size=$(du -h "$backup_name" | awk '{print $1}')
echo "Folder ditemukan"
echo "backup berhasil dibuat:"
echo "$backup_name"
echo "backup_size: $backup_size"
