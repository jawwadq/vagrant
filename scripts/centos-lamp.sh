#!/bin/bash

yum update -y --exclude=kernel

yum install -y nano git unzip screen wget

yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html
service httpd start

yum install -y php php-cli php-common php-devel php-mysql

yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on
service mysqld start
mysql -u root -e "show databases;"

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/jawwadq/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/jawwadq/vagrant/master/files/info.php

service httpd restart
