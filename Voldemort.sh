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

#no 9
apt-get install apache2-utils -y
htpasswd -c /etc/nginx/secretchamber jarkom
#modul3

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

                auth_basic "Restricted";
                auth_basic_user_file /etc/nginx/secretchamber;
        }
}' > /etc/nginx/sites-available/gryffindor.hogwarts.A36.com 

service nginx restart

#no 10
#untuk ini, cek satu satu dengan upstreamnya dihapus dari 3 -> tes, ubah ke 2 -> tes, lalu ubah ke 1 -> tes

#no 11
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

                auth_basic "Restricted";
                auth_basic_user_file /etc/nginx/secretchamber;
        }

        location /informatika {
                proxy_pass https://www.its.ac.id/informatika/id/beranda/;
                proxy_set_header Host www.its.ac.id;
                proxy_set_header X-Real-IP $remote_addr;
        }

}' > /etc/nginx/sites-available/gryffindor.hogwarts.A36.com 

service nginx restart

#no 12
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

                auth_basic "Restricted";
                auth_basic_user_file /etc/nginx/secretchamber;

                allow 192.186.2.64;  
                allow 192.186.2.100; 
                allow 192.186.5.50;  
                allow 192.186.5.155; 
                deny all;                
        }

        location /informatika {
                proxy_pass https://www.its.ac.id/informatika/id/beranda/;
                proxy_set_header Host www.its.ac.id;
                proxy_set_header X-Real-IP $remote_addr;
        }

}' > /etc/nginx/sites-available/gryffindor.hogwarts.A36.com 

service nginx restart