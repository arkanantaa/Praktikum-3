#no 3
echo 'auto eth0
iface eth0 inet dhcp' > /etc/network/interfaces

#no 5
echo 'hwaddress ether 7a:a0:27:01:f3:3d' >> /etc/network/interfaces

#bashrc
apt-get update -y
apt-get install mariadb-client -y

#no 14
apt-get install software-properties-common
add-apt-repository ppa:ondrej/php

apt-get update

apt-get install php8.0-mbstring php8.0-xml php8.0-cli php8.0-common php8.0-intl php8.0-opcache php8.0-readline php8.0-mysql php8.0-fpm php8.0-curl unzip wget -y
apt-get install nginx -y