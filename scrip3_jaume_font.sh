#!/bin/bash


read -p"porfavor introduzca el nombre de mi amo: " NOM
TOKEN="5991621461:AAF3IWVeDtKU7m574zt53HfP6GqTQbBt9aw"
ID="5791354086"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
IP=$(curl ifconfig.co)
MENSAJE="hola amo ${NOM} usted esta conectado a la ip publica ${IP}"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"