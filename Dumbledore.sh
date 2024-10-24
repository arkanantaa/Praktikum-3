#bashrc
apt-get update
apt-get install isc-dhcp-relay -y
service isc-dhcp-relay start

#no 2, 3, 4
echo 'SERVERS="192.186.3.2"  
INTERFACES="eth1 eth2 eth3 eth4 eth5 eth6"
OPTIONS=' > /etc/default/isc-dhcp-relay

echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

service isc-dhcp-relay restart
