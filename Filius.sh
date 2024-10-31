#bashrc
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install mariadb-server -y

#no 14
apt-get install software-properties-common
add-apt-repository ppa:ondrej/php

apt-get update

apt-get install php8.0-mbstring php8.0-xml php8.0-cli php8.0-common php8.0-intl php8.0-opcache php8.0-readline php8.0-mysql php8.0-fpm php8.0-curl unzip wget -y
apt-get install nginx -y

cd /
wget https://getcomposer.org/download/2.0.13/composer.phar
chmod +x composer.phar
mv composer.phar /usr/bin/composer

apt-get install git -y
git clone https://github.com/lodaogos/laravel-jarkom-modul-3.git
mv laravel-jarkom-modul-3 /laravel-jarkom-modul-3
cd /laravel-jarkom-modul-3

composer update
composer install

cp /laravel-jarkom-modul-3/.env.example /laravel-jarkom-modul-3/.env


echo 'APP_NAME = Laravel
APP_ENV = Local
APP_KEY=
APP_DEBUG = true
APP_URL=http://localhost

LOG_CHANNEL = stack
LOG_DEPRECATIONS_CHANNEL = null
LOG_LEVEL = debug

DB_CONNECTION=mysql
DB_HOST=192.186.4.2
DB_PORT=3306
DB_DATABASE=kelompokA36_db
DB_USERNAME=kelompokA36
DB_PASSWORD=passwordA36' > /laravel-jarkom-modul-3/.env

cd /laravel-jarkom-modul-3

php artisan migrate:fresh
php artisan db:seed --class=MusicsTableSeeder
php artisan key:generate
