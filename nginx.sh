#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo ufw allow 'Nginx HTTP'

sudo rm /var/www/html/index.nginx-debian.html
sudo echo "Welcome to gabes SEC 350 webpage" > index.html
sudo systemctl restart nginx
