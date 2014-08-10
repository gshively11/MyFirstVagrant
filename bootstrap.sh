#!/usr/bin/env bash

sudo su -c 'rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm'
sudo yum -y install nginx
rm -rf /var/www
sudo ln -fs /vargrant /var/www
sudo chkconfig --levels 235 nginx on
sudo rm /etc/nginx/conf.d/default.conf
sudo cp /vagrant/playing_with_vagrant.conf /etc/nginx/conf.d/default.conf
sudo usermod -a -G vagrant nginx
sudo service nginx restart