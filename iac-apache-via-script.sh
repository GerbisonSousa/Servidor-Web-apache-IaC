#!/bin/bash

echo "Verificando status de atualização do servidor"

apt install update

apt install upgrade

echo "Efetuando a instalação do Apache2!"

apt install apache2 -y

echo "Instalando o pacote de descompactação unzip!"

apt install unzip -y

cd /tmp/

echo "Realizando o Download do Arquivo de Aplicação!"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip /tmp/main.zip

rm /var/www/html/index.html

echo "Cópiando Arquivos da Aplicação!"

cp /tmp/linux-site-dio-main/* -rf /var/www/html/

echo "O provisionamento do Servidor Web está Concluído!"
