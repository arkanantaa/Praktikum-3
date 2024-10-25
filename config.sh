#Dumbledore
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 192.186.1.1
	netmask 255.255.255.0

auto eth2
iface eth2 inet static
	address 192.186.2.1
	netmask 255.255.255.0

auto eth3
iface eth3 inet static
	address 192.186.3.1
	netmask 255.255.255.0

auto eth4
iface eth4 inet static
	address 192.186.4.1
	netmask 255.255.255.0

auto eth5
iface eth5 inet static
	address 192.186.5.1
	netmask 255.255.255.0

auto eth6
iface eth6 inet static
	address 192.186.6.1
	netmask 255.255.255.0

up iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 192.186.0.0/16


#Harry Potter
auto eth0
iface eth0 inet static
	address 192.186.1.2
	netmask 255.255.255.0
	gateway 192.186.1.1

#RonWeasley
auto eth0
iface eth0 inet static
	address 192.186.1.3
	netmask 255.255.255.0
	gateway 192.186.1.1

#HermioneGranger
auto eth0
iface eth0 inet static
	address 192.186.1.4
	netmask 255.255.255.0
	gateway 192.186.1.1

#DracoMalvoy
auto eth0
iface eth0 inet dhcp

#AstoriaGreengrass
auto eth0
iface eth0 inet dhcp

#ServerusSnape
auto eth0
iface eth0 inet static
	address 192.186.3.2
	netmask 255.255.255.0
	gateway 192.186.3.1

#McGongall
auto eth0
iface eth0 inet static
	address 192.186.3.3
	netmask 255.255.255.0
	gateway 192.186.3.1

#Hagrid
auto eth0
iface eth0 inet static
	address 192.186.4.2
	netmask 255.255.255.0
	gateway 192.186.4.1

#Voldemort
auto eth0
iface eth0 inet static
	address 192.186.4.3
	netmask 255.255.255.0
	gateway 192.186.4.1

#Dementor
auto eth0
iface eth0 inet static
	address 192.186.4.4
	netmask 255.255.255.0
	gateway 192.186.4.1
	
#SusanBones
auto eth0
iface eth0 inet dhcp

#HannahAbbott
auto eth0
iface eth0 inet dhcp

#ChoChang
auto eth0
iface eth0 inet static
	address 192.186.6.2
	netmask 255.255.255.0
	gateway 192.186.6.1

#FiliusFlitwick
auto eth0
iface eth0 inet static
	address 192.186.6.3
	netmask 255.255.255.0
	gateway 192.186.6.1

#LunaLovegood
auto eth0
iface eth0 inet static
	address 192.186.6.4
	netmask 255.255.255.0
	gateway 192.186.6.1