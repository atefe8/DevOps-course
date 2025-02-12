#!/bin/bash

MAXSPACE=80

disk_usage=$(df -h | awk '$6 ~ /^\/mnt/ {print $5}' | sed 's/%//' | sort -nr | head -n1)
TOKEN="7782590810:AAGBM_kt9u7xIUa9Ml3N3yknQt3RThIqsko"
CHAT_ID="74065734"
MESSAGE="Disk space is: "

if [ "$disk_usage" -gt "$MAXSPACE" ];then
   curl -s "https://api.telegram.org/bot$TOKEN/sendMessage" \
     -d "chat_id=$CHAT_ID" \
     -d "text=$MESSAGE $disk_usage"

fi
