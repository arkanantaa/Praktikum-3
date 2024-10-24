# bashrc
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt-get install software-properties-common
add-apt-repository ppa:ondrej/php

apt-get update
apt-get install php8.0-mbstring php8.0-xml php8.0-cli php8.0-common php8.0-intl php8.0-opcache php8.0-readline php8.0-mysql php8.0-fpm php8.0-curl unzip wget -y

apt-get install nginx -y

#no 6
mkdir /var/www/gryffindor
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=17R4Zcxm3emHq21WdMJzSfCxO8FHqvATM' -O /var/www/gryffindor/website.zip
unzip -o /var/www/gryffindor/website.zip -d /var/www/gryffindor

echo 'server {

    listen 8002;

    root /var/www/gryffindor;

    index index.php index.html index.htm;
    server_name gryffindor.hogwarts.A36.com;

    location / {
            try_files $uri $uri/ /index.php?$query_string;
    }

    # pass PHP scripts to FastCGI server
    location ~ \.php$ {
    include snippets/fastcgi-php.conf;
    fastcgi_pass unix:/var/run/php/php8.0-fpm.sock;
    }

location ~ /\.ht {
            deny all;
    }

    error_log /var/log/nginx/hogwarts_error.log;
    access_log /var/log/nginx/hogwarts_access.log;
}' > /etc/nginx/sites-available/gryffindor.hogwarts.A36.com

ln -s /etc/nginx/sites-available/gryffindor.hogwarts.A36.com /etc/nginx/sites-enabled/

service php8.0-fpm start

service nginx restart