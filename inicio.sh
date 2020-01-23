#!/bin/bash

# Script para bot de Telegram en el que avisa cuando el servidor está iniciado

TOKEN_PATH="/home/$USER/Documents/git/action_launcher_bot_bash"; export TOKEN_PATH

for line in $(cat "$TOKEN_PATH"/token.txt); do TOKEN="$line" ; done

ID="5482488"
MENSAJE="Se ha iniciado mi Raspberry"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"
