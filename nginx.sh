#!/bin/bash
index="/var/www/html/index.html"
sudo apt update
sudo apt install nginx
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status 
systemctl status nginx
cd /var/www/html
sudo rm index.html
sudo vi $index > /dev/null <<EOF
  
  Welcome to gabes webpage!
EOF
systemctl restart nginx
