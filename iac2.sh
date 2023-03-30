#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache2, Unzip e wget..."
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Criando diretório tmp..."
cd /tmp

echo "Baixando no diretório tmp..."
wget https://github.com/denilsonbonattti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo"
unzip main.zip

echo "Acessando diretório criado linux-site-dio-main e copiando arquivos para pasta do Apache..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim..."

