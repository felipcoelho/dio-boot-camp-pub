#!/bin/bash
#criando as pastas
echo "criando as pastas"
mkdir /publico /adm /ven /sec
#criando os grupos de usuário
echo "criando os grupos de usuário"
groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

#criando os usuários do grupo GRP_ADM
echo "criando os usuários do grupo GRP_ADM"
useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "Joao Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
#criando os usuários do grupo GRP_VEN
echo "criando os usuários do grupo GRP_VEN"
useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
#criando os usuários do grupo GRP_SEC
echo "criando os usuários do grupo GRP_SEC"
useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

#trabalhando com propriedades dos diretórios
echo "trabalhando com propriedades dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#trabalhando com permissões
echo "trabalhando com permissões"
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
