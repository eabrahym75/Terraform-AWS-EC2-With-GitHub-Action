#!/bin/bash

sudo apt-get update
sudo apt-get install -y apache2

sudo ufw allow 80

sudo service apache2 start

echo "Apache has been installed and started."
