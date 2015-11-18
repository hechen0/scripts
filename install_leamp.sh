#!/usr/bin/enb bash

# add nginx ppa to source
echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/nginx-stable.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C

sudo apt-get install -y build-essential nginx mysql-server php5-mysql php5-fpm
