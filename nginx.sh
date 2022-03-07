#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo ufw allow 'Nginx HTTP'
cd /var/www/html
sudo rm index.nginx-debian.html
sudo echo "Welcome to gabes SEC 350 webpage" > index.html
sudo systemctl restart nginx
