#!/bin/bash

# Atualize o sistema
sudo apt-get update -y
sudo apt-get upgrade -y

# Instale o Apache Web Server
sudo apt-get install apache2 -y

# Inicie o serviço Apache
sudo systemctl start apache2
sudo systemctl enable apache2

# Verifique se o servidor está respondendo corretamente
sudo systemctl status apache2

# Configure o firewall para permitir o tráfego na porta 80
sudo ufw allow 80/tcp
sudo ufw enable

# Verifique o status do firewall
sudo ufw status

# Verifique se o servidor está acessível na rede externa
curl http://YOUR_PUBLIC_IP
