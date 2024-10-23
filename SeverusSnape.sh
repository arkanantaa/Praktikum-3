#bash rc
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install isc-dhcp-server -y

# no 2
echo 'INTERFACESv4="eth0"' >  /etc/default/isc-dhcp-server

echo 'subnet 192.186.1.0 netmask 255.255.255.0 {
}

subnet 192.186.2.0 netmask 255.255.255.0 {
    range 192.186.2.64 192.186.2.65;
    range 192.186.2.100 192.186.2.101;
    option routers 192.186.2.1;
    option broadcast-address 192.186.2.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 6900;
}

subnet 192.186.3.0 netmask 255.255.255.0 {
}

subnet 192.186.4.0 netmask 255.255.255.0 {
}

subnet 192.186.5.0 netmask 255.255.255.0 {
    range 192.186.5.50 192.186.5.51;
    range 192.186.5.155 192.186.5.156;
    option routers 192.186.5.1;
    option broadcast-address 192.186.5.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 6900;
}

subnet 192.186.6.0 netmask 255.255.255.0 {
}'  > /etc/dhcp/dhcpd.conf

service isc-dhcp-server start

#no 3
echo 'INTERFACESv4="eth0"' >  /etc/default/isc-dhcp-server

echo 'subnet 192.186.1.0 netmask 255.255.255.0 {
    range 192.186.1.10 192.186.1.15;
    range 192.186.1.20 192.186.1.25;
    option routers 192.186.1.1;
    option broadcast-address 192.186.1.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 6900;
}

subnet 192.186.2.0 netmask 255.255.255.0 {
    range 192.186.2.64 192.186.2.65;
    range 192.186.2.100 192.186.2.101;
    option routers 192.186.2.1;
    option broadcast-address 192.186.2.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 6900;
}

subnet 192.186.3.0 netmask 255.255.255.0 {
}

subnet 192.186.4.0 netmask 255.255.255.0 {
}

subnet 192.186.5.0 netmask 255.255.255.0 {
    range 192.186.5.50 192.186.5.51;
    range 192.186.5.155 192.186.5.156;
    option routers 192.186.5.1;
    option broadcast-address 192.186.5.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 6900;
}

subnet 192.186.6.0 netmask 255.255.255.0 {
    range 192.186.6.10 192.186.6.15;
    range 192.186.6.20 192.186.6.25;
    option routers 192.186.6.1;
    option broadcast-address 192.186.6.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 6900;
}'  > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
# hermione dan chochang ganti jadi 
#auto eth0
#iface eth0 inet dhcp


#no 4
echo 'INTERFACESv4="eth0"' >  /etc/default/isc-dhcp-server

echo 'subnet 192.186.1.0 netmask 255.255.255.0 {
    range 192.186.1.10 192.186.1.15;
    range 192.186.1.20 192.186.1.25;
    option routers 192.186.1.1;
    option broadcast-address 192.186.1.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 600;
    max-lease-time 6000;
}

subnet 192.186.2.0 netmask 255.255.255.0 {
    range 192.186.2.64 192.186.2.65;
    range 192.186.2.100 192.186.2.101;
    option routers 192.186.2.1;
    option broadcast-address 192.186.2.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 1200;
}

subnet 192.186.3.0 netmask 255.255.255.0 {
}

subnet 192.186.4.0 netmask 255.255.255.0 {
}

subnet 192.186.5.0 netmask 255.255.255.0 {
    range 192.186.5.50 192.186.5.51;
    range 192.186.5.155 192.186.5.156;
    option routers 192.186.5.1;
    option broadcast-address 192.186.5.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 1200;
}

subnet 192.186.6.0 netmask 255.255.255.0 {
    range 192.186.6.10 192.186.6.15;
    range 192.186.6.20 192.186.6.25;
    option routers 192.186.6.1;
    option broadcast-address 192.186.6.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 600;
    max-lease-time 6000;
}'  > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart


#no 5
echo 'INTERFACESv4="eth0"' >  /etc/default/isc-dhcp-server

echo 'subnet 192.186.1.0 netmask 255.255.255.0 {
    range 192.186.1.10 192.186.1.15;
    range 192.186.1.20 192.186.1.25;
    option routers 192.186.1.1;
    option broadcast-address 192.186.1.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 600;
    max-lease-time 6000;
}

subnet 192.186.2.0 netmask 255.255.255.0 {
    range 192.186.2.64 192.186.2.65;
    range 192.186.2.100 192.186.2.101;
    option routers 192.186.2.1;
    option broadcast-address 192.186.2.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 1200;
}

subnet 192.186.3.0 netmask 255.255.255.0 {
}

subnet 192.186.4.0 netmask 255.255.255.0 {
}

subnet 192.186.5.0 netmask 255.255.255.0 {
    range 192.186.5.50 192.186.5.51;
    range 192.186.5.155 192.186.5.156;
    option routers 192.186.5.1;
    option broadcast-address 192.186.5.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 300;
    max-lease-time 1200;
}

subnet 192.186.6.0 netmask 255.255.255.0 {
    range 192.186.6.10 192.186.6.15;
    range 192.186.6.20 192.186.6.25;
    option routers 192.186.6.1;
    option broadcast-address 192.186.6.255;
    option domain-name-servers 192.186.3.3;
    default-lease-time 600;
    max-lease-time 6000;
}

host HermioneGranger {
    hardware ethernet 76:8a:9f:bf:61:a7;
    fixed-address 192.186.1.4;
}

host ChoChang {
    hardware ethernet 3a:95:48:56:e1:97;
    fixed-address 192.186.6.2;
}'  > /etc/dhcp/dhcpd.conf


 
