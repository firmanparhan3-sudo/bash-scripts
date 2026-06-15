#!/bin/bash

file="$1"

if [ -z "$1" ]
then
  echo "Usage: ./log_analyzer.sh <log.file>"
  exit 1
fi

if [ ! -f "$file" ]
then
  echo "file tidak ditemukan"
  exit 1
fi


info=$(grep "^INFO" "$file" | wc -l)
warning=$(grep "^WARNING" "$file" | wc -l)
error=$(grep "^ERROR" "$file" | wc -l)
most_error=$(grep "^ERROR" "$file" \
| awk '{$1=""; print $0}' \
| sort \
| uniq -c \
| sort -nr \
| head -n 1)
most_info=$(grep "^INFO" "$file" \
| awk '{$1=""; print $0}' \
| sort \
| uniq -c \
| sort -nr \
| head -n 1)


echo "=== Log Analyzer ==="
echo
echo "INFO: $info"
echo "WARNING: $warning"
echo "ERROR: $error"
echo
echo "Most Common Error:"
echo "$most_error"
echo "Most Common Info:"
echo "$most_info"
