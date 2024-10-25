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
    max-lease-time 6000;
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
    default-lease-time 1200;
    max-lease-time 6000;
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
'  > /etc/dhcp/dhcpd.conf

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
    max-lease-time 6000;
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
    default-lease-time 1200;
    max-lease-time 6000;
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
    hardware ethernet 6e:70:b4:5f:d9:eb;
    fixed-address 192.186.1.14;
}

host ChoChang {
    hardware ethernet 7a:a0:27:01:f3:3d;
    fixed-address 192.186.6.14;
}'  > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
 
#no 12
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
    max-lease-time 6000;
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
    default-lease-time 1200;
    max-lease-time 6000;
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
    hardware ethernet 6e:70:b4:5f:d9:eb;
    fixed-address 192.186.1.14;
}

host ChoChang {
    hardware ethernet 7a:a0:27:01:f3:3d;
    fixed-address 192.186.6.14;
}

host DracoMalvoy {
    hardware ethernet 7e:6d:c9:92:4e:ab;
    fixed-address 192.186.2.64;
}

host AstoriaGreengrass {
    hardware ethernet 6a:03:b8:52:f5:fc;
    fixed-address 192.186.2.100;
}

host SusanBones {
    hardware ethernet 52:dc:85:e1:f2:a3;
    fixed-address 192.186.5.50;
}

host HannahAbott {
    hardware ethernet 0a:3e:8b:99:8f:c8;
    fixed-address 192.186.5.155;
}'  > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart