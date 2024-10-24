# bashrc
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt-get install software-properties-common
add-apt-repository ppa:ondrej/php

apt-get update
apt-get install php8.0-mbstring php8.0-xml php8.0-cli php8.0-common php8.0-intl php8.0-opcache php8.0-readline php8.0-mysql php8.0-fpm php8.0-curl unzip wget -y

apt-get install nginx -y