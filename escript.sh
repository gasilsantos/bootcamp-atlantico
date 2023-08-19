#!/bin/bash

echo "criando diretórios"

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "criando grupos..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "criando usuários"

sudo useradd carlos -c "carlos matkowsky" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
sudo useradd maria -c "maria grelina" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
sudo useradd joao -c "joão jibão" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
sudo useradd debora -c "debora kinsbury" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo useradd sebastiana -c "sebastiana esparteira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo useradd roberto -c "roberto carlos" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo useradd josefina -c "josefina guimarães" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo useradd amanda -c "amanda hattenberger" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo useradd rogerio -c "rogerio neves" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "permissões..."

sudo chmod 777 /publico

sudo chown root:GRP_ADM /adm

sudo chmod 770 /adm

sudo chown root:GRP_VEN /ven

sudo chmod 770 /ven

sudo chown root:GRP_SEC /sec

sudo chmod 770 /sec

echo "Fim..."
