#bashrc
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install nginx -y

#no 7
echo 'upstream gryffindor {
        server 192.186.1.2:8001;
        server 192.186.1.3:8002;
        server 192.186.1.4:8003;
}

server {
        listen 80;
        server_name gryffindor.hogwarts.A36.com;

        location / {
                proxy_pass http://gryffindor;
        }
}' > /etc/nginx/sites-available/gryffindor.hogwarts.A36.com 

ln -s /etc/nginx/sites-available/gryffindor.hogwarts.A36.com /etc/nginx/sites-enabled/

service nginx restart


