#!/bin/bash

# Criar grupo de usuários
groupadd developers

# Criar usuários
useradd -m -d /home/developer1 -g developers developer1
useradd -m -d /home/developer2 -g developers developer2

# Definir senhas para usuários
echo "developer1:password1" | chpasswd
echo "developer2:password2" | chpasswd

# Criar diretórios de trabalho
mkdir /work
mkdir /work/project1
mkdir /work/project2

# Configurar permissões para diretórios
chgrp developers /work
chmod g+rwx /work

chgrp developers /work/project1
chmod g+rwx /work/project1

chgrp developers /work/project2
chmod g+rwx /work/project2
