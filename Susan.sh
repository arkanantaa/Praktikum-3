echo 'auto eth0
iface eth0 inet dhcp
hwaddress ether 52:dc:85:e1:f2:a3' > /etc/network/interfaces

#bashrc.sh
apt-get update 
apt-get install apache2-utils -y
apt-get install jq -y
apt-get install less -y
apt-get install htop -y

#testing no 15
echo '{
    "username": "username",
    "password": "password"
}' > /register.json

ab -n 100 -c 10 -g output15.data -p register.json -T application/json http://192.186.6.3:8002/api/auth/register

#testing no 16
echo '{
    "username": "username",
    "password": "password"
}' > /login.json

ab -n 100 -c 10 -g output16.data -p login.json -T application/json http://192.186.6.3:8002/api/auth/register

curl -X POST http://192.186.6.3:8002/api/auth/login -H "Content-Type: application/json" -d '{"username":"username","password":"password"}'

#testing no 17

curl -X POST http://192.186.6.3:8002/api/auth/me -H "Content-Type: application/json" -d '{"username":"username","password":"password"}' > /token.txt

token=$(cat token.txt | jq -r '.token')

ab -n 100 -c 10 -H "Authorization: Bearer $token" http://192.186.6.3:8002/api/me

#testing no 19
ab -n 100 -c 10 -g output15.data -p register.json -T application/json http://ravenclaw.hogwarts.a36.com/api/auth/register

#testing no 20
ab -n 100 -c 10 -g output15.data -p register.json -T application/json http://ravenclaw.hogwarts.a36.com/api/auth/register