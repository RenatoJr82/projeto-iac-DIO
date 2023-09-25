#!/bin/bash

echo "Atualização e Instalação dos Programas"

apt-get update
apt-get ugrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos necessários"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
