#bashrc
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get install mariadb-server -y
service mysql start

#no 13
mysql
CREATE DATABASE kelompokA36_db;
CREATE USER 'kelompokA36'@'192.186.6.4' IDENTIFIED BY 'passwordA36';
CREATE USER 'kelompokA36'@'192.186.6.3' IDENTIFIED BY 'passwordA36';
CREATE USER 'kelompokA36'@'192.186.6.14' IDENTIFIED BY 'passwordA36';

GRANT ALL PRIVILEGES ON kelompokA36_db.* TO 'kelompokA36'@'192.186.6.4';
GRANT ALL PRIVILEGES ON kelompokA36_db.* TO 'kelompokA36'@'192.186.6.3';
GRANT ALL PRIVILEGES ON kelompokA36_db.* TO 'kelompokA36'@'192.186.6.14';

FLUSH PRIVILEGES;

echo '[mysqld]
skip-networking=0
skip-bind-address' > /etc/mysql/my.cnf

#cek : mariadb --host=192.186.4.2 --port=3306 --user=kelompokA36 --password 

