#!/bin/bash

echo "atualizando o servidor"

apt-get update -y
apt-get upgrade -y

echo "instalando o apache"

apt-get install apache2 -y

echo "instalando o unzip"

apt-get install unzip -y

echo "Baixando aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "extraindo arquivos da aplicação"

unzip main.zip

cd linux-site-dio-main

echo "copiando os aquivos da aplicação"

cp -R * /var/www/html/
