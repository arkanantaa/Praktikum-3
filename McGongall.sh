# bash rc
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install bind9 -y

mkdir /etc/bind/hogwarts

#no 1 
echo 'zone "hogwarts.A36.com" {
        type master;
        file "/etc/bind/hogwarts/hogwarts.A36.com";
};

zone "4.186.192.in-addr.arpa" {
    type master;
    file "/etc/bind/hogwarts/4.186.192.in-addr.arpa";
};

zone "gryffindor.hogwarts.A36.com" {
        type master;
        file "/etc/bind/hogwarts/gryffindor.hogwarts.A36.com";
};

zone "ravenclaw.hogwarts.A36.com" {
        type master;
        file "/etc/bind/hogwarts/ravenclaw.hogwarts.A36.com";
};' > /etc/bind/named.conf.local

echo '
;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     hogwarts.A36.com. root.hogwarts.A36.com. (
			2023110101    ; Serial
                        604800        ; Refresh
                        86400         ; Retry
                        2419200       ; Expire
                        604800 )      ; Negative Cache TTL
;
@               IN      NS      hogwarts.A36.com.   
@               IN      A       192.186.3.3 ; IP McGongall
www             IN      CNAME   hogwarts.A36.com.
gryffindor      IN      A       192.186.4.3 ; IP Voldemort
ravenclaw       IN      A       192.186.4.4 ; IP Dementor' > /etc/bind/hogwarts/hogwarts.A36.com

echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     gryffindor.hogwarts.A36.com. root.gryffindor.hogwarts.A36.com. (
			2023110101    ; Serial
                        604800        ; Refresh
                        86400         ; Retry
                        2419200       ; Expire
                        604800 )      ; Negative Cache TTL
;
@               IN      NS      gryffindor.hogwarts.A36.com.   
@               IN      A       192.186.4.3 ; IP Voldemort
www             IN      CNAME   gryffindor.hogwarts.A36.com.' > /etc/bind/hogwarts/gryffindor.hogwarts.A36.com

echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ravenclaw.hogwarts.A36.com. root.ravenclaw.hogwarts.A36.com. (
			2023110101    ; Serial
                        604800        ; Refresh
                        86400         ; Retry
                        2419200       ; Expire
                        604800 )      ; Negative Cache TTL
;
@               IN      NS      ravenclaw.hogwarts.A36.com.   
@               IN      A       192.186.4.4 ; IP Dementor
www             IN      CNAME   ravenclaw.hogwarts.A36.com.' > /etc/bind/hogwarts/ravenclaw.hogwarts.A36.com

echo '
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     hogwarts.A36. root.hogwarts.A36. (
                        2023110101    ; Serial
                        604800        ; Refresh
                        86400         ; Retry
                        2419200       ; Expire
                        604800 )      ; Negative Cache TTL
;
4.186.192.in-addr.arpa.         IN      NS      hogwarts.A36.com.
3                               IN      PTR     gryffindor.hogwarts.A36.com.
4                               IN      PTR     ravenclaw.hogwarts.A36.com. ' > /etc/bind/hogwarts/4.186.192.in-addr.arpa

echo 'options {
        directory "/var/cache/bind";

        forwarders {
                192.168.122.1;
        };

        dnssec-validation no;
        allow-query{any;};
        auth-nxdomain no;    # conform to RFC1035
        listen-on-v6 { any; };
}; ' >/etc/bind/named.conf.options

service named restart


# if no 8 error ga bisa download from apache
echo 'options {
        directory "/var/cache/bind";

        forwarders {
                8.8.8.8; #DNS Google
        };

        dnssec-validation no;
        allow-query{any;};
        auth-nxdomain no;    # conform to RFC1035
        listen-on-v6 { any; };
}; ' >/etc/bind/named.conf.options

service named restart


# kembalikan semula lagi
echo 'options {
        directory "/var/cache/bind";

        forwarders {
                192.168.122.1;
        };

        dnssec-validation no;
        allow-query{any;};
        auth-nxdomain no;    # conform to RFC1035
        listen-on-v6 { any; };
}; ' >/etc/bind/named.conf.options

service named restart