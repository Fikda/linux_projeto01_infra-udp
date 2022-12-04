#!/bin/bash

echo "Criando os diretórios: público, adm, ven e sec."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários , GRP_ADM, GRP_VEN e GRP_SEC."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando três usuários para cada grupo e adicionando-os diretamente."

useradd carlos -c "Carlos Brown" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria Antonieta" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "John Snow" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "Debora Falabella " -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Salgado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Burle Marx" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "Josefina de Beauharnais" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda Seyfried" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Ceni" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Determinando o owner e as permissões." 

chown root: GRP_ADM /adm
chown root: GRP_VEN /ven
chown root: GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado a definição da  infraestrutura." 
 




