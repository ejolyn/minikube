#!/bin/sh

# mysql_install_db --user=root --datadir=/var/lib/mysql
# mkdir /run/openrc
# touch /run/openrc/softlevel
# openrc boot
# rc-update add mariadb

# var=0
# while [ $var -eq 0 ]
# do 
rc default
/etc/init.d/mariadb setup
rc-service mariadb start
# done
# /usr/bin/mysqld_safe --datadir="/var/lib/mysql"
# /usr/bin/supervisord -c /etc/supervisord.conf
mariadb -e "CREATE DATABASE wordpress;"
mariadb -e "CREATE OR REPLACE USER 'admin'@'%' IDENTIFIED BY '1234';"
mariadb -e "GRANT ALL ON wordpress.* TO 'admin'@'%' IDENTIFIED BY '1234';"
mariadb -e "FLUSH PRIVILEGES;"
mysql wordpress < ./wordpress.sql
rc-service mariadb stop
/usr/bin/mysqld_safe
sh
# tail -f /dev/null