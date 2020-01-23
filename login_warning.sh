#!/bin/bash

# Este script sirve para que se ejecute desde .bashrc para que muestre la IP del equipo que se está logueando

TOKEN_PATH="/home/$USER/Documents/git/action_launcher_bot_bash"; export TOKEN_PATH

for line in $(cat "$TOKEN_PATH"/token.txt); do TOKEN="$line" ; done

ID="5482488"
MENSAJE="Se acaba de conectar por ssh con la IP $(echo $SSH_CLIENT | awk '{ print $1}')"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE" &> /dev/null
