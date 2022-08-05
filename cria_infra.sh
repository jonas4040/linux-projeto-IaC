#!/bin/bash
cd /

echo "Criando diretórios . . ."
mkdir publico adm ven sec

echo " Criando grupos . . ."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários . . ."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Cuidando do diretório publico . . ."
chmod 777 publico

echo "Cuidando do diretório adm . . ."
chown root:GRP_ADM adm
chmod 770 adm

echo "Cuidando do diretório ven . . ."
chown root:GRP_VEN ven
chmod 770 ven

echo "Cuidando do diretório sec . . ."
chown root:GRP_SEC sec
chmod 770 sec

cd
echo "Finalizado."
