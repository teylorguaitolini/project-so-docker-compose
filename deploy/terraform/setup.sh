#!/bin/bash

echo "######################### Iniciando script #########################" > /tmp/setup.log

set -e >> /tmp/setup.log 2>&1
sudo su >> /tmp/setup.log 2>&1

# Instalando o Docker
echo "######################### Instalando o Docker #########################" >> /tmp/setup.log
sudo apt update -y >> /tmp/setup.log 2>&1
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common >> /tmp/setup.log 2>&1
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - >> /tmp/setup.log 2>&1
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" >> /tmp/setup.log 2>&1
sudo apt install docker-ce -y >> /tmp/setup.log 2>&1
# Instalando o Docker Compose
echo "######################### Instalando o Docker Compose #########################" >> /tmp/setup.log
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose >> /tmp/setup.log 2>&1
sudo chmod +x /usr/local/bin/docker-compose >> /tmp/setup.log 2>&1
# Baixando o projeto e executando o docker-compose
echo "######################### Baixando o projeto e executando o docker-compose #########################" >> /tmp/setup.log
sudo git clone https://github.com/teylorguaitolini/project-so-docker-compose.git >> /tmp/setup.log 2>&1
cd project-so-docker-compose/deploy/ >> /tmp/setup.log 2>&1
sudo docker-compose up -d >> /tmp/setup.log 2>&1

echo "Script finalizado" >> /tmp/setup.log
