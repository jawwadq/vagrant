#!/bin/bash

yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html

yum install -y php php-cli php-common php-devel php-mysql

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/jawwadq/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/jawwadq/vagrant/master/files/info.php

service httpd start
