#!/bin/bash
#deletando as pastas
echo "deletando pastas as pastas"
rm -rf /publico/ 
rm -rf /adm/ 
rm -rf /ven/ 
rm -rf /sec/


#removendo os usuários do grupo GRP_ADM
echo "removendo os usuários do grupo GRP_ADM"
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao 
#removendo os usuários do grupo GRP_VEN
echo "removendo os usuários do grupo GRP_VEN"
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
#demovendo os usuários do grupo GRP_SEC
echo "removendo os usuários do grupo GRP_SEC"
userdel -r -f josefina
userdel -r -f amanda 
userdel -r -f rogerio

#removendo os grupos de usuário
echo "removendo os grupos de usuário"
groupdel GRP_ADM 
groupdel GRP_VEN
groupdel GRP_SEC

