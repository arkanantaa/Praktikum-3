#bashrc
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install nginx -y

#no 18
echo 'upstream ravenclaw {
        server 192.186.6.14:8001;
        server 192.186.6.3:8002;
        server 192.186.6.4:8003;
}

server {
        listen 80;
        server_name ravenclaw.hogwarts.A36.com;

        location / {
                proxy_pass http://ravenclaw;
        }
}' > /etc/nginx/sites-available/ravenclaw.hogwarts.A36.com 

ln -s /etc/nginx/sites-available/ravenclaw.hogwarts.A36.com /etc/nginx/sites-enabled/

service nginx restart

#no 20
echo 'upstream ravenclaw {
        least_conn;
        server 192.186.6.14:8001;
        server 192.186.6.3:8002;
        server 192.186.6.4:8003;
}

server {
        listen 80;
        server_name ravenclaw.hogwarts.A36.com;

        location / {
                proxy_pass http://ravenclaw;
        }
}' > /etc/nginx/sites-available/ravenclaw.hogwarts.A36.com 

ln -s /etc/nginx/sites-available/ravenclaw.hogwarts.A36.com /etc/nginx/sites-enabled/

service nginx restart