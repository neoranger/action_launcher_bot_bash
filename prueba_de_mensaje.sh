#!/bin/bash

# Script de prueba para envio de mensajes por medio de un bot de Telegram

for line in $(cat token.txt); do TOKEN="$line" ; done

ID="5482488"
MENSAJE="Esto es un Mensaje de Prueba"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"
