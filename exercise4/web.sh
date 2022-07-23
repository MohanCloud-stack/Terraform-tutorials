#!/bin/bash
sudo yum install httpd wget unzip -y
systemctl start httpd
systemctl enable  httpd 
wget https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip
unzip -o 2129_crispy_kitchen.zip
cp -r 2129_crispy_kitchen/* /var/www/html
systemctl restart httpd