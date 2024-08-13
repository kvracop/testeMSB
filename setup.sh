#!/bin/bash
apt update
# Baixa e instala o aaPanel
URL=https://www.aapanel.com/script/install_7.0_en.sh
if [ -f /usr/bin/curl ]; then
    curl -ksSO "$URL"
else
    wget --no-check-certificate -O install_7.0_en.sh "$URL"
fi
yes | bash install_7.0_en.sh 93684c35 > installTest.log 2>&1

# Baixa e instala o Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Instala o plugin docker-compose
apt install docker-compose-plugin
###Fim
