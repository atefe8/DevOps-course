#!/bin/bash

TOKEN="7782590810:AAGBM_kt9u7xIUa9Ml3N3yknQt3RThIqsko"
CHAT_ID="74065734"
MESSAGE="🚫 Failed to log in to the server. ⛔"
LOGFILE="/var/log/auth.log"

tail -Fn0 "$LOGFILE" | while read line; do
echo "$line" | grep "Failed password"> /dev/null
if [ $? = 0 ];then
curl -s "https://api.telegram.org/bot$TOKEN/sendMessage" \
     -d "chat_id=$CHAT_ID" \
     -d "text=$MESSAGE"
fi
done
