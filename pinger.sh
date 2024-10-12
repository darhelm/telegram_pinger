#!/bin/bash

# Telegram Bot details
BOT_TOKEN="BOT_TOKEN"
CHAT_IDS=("CHAT_ID_1" "CHAT_ID_2" "CHAT_ID_3")  # Add as many chat IDs as needed
SERVER="SERVER_ADDRESS"

send_telegram_message() {
  local message=$1
  for chat_id in "${CHAT_IDS[@]}"; do
    curl -s --data "chat_id=$chat_id&text=$message" "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" > /dev/null
  done
}

ping -c 1 $SERVER > /dev/null 2>&1

if [ $? -eq 0 ]; then
  send_telegram_message "🟢 The server $SERVER is up."
else
  send_telegram_message "🔴 The server $SERVER is down."
fi