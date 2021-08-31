#!/bin/bash 




echo "Iniciando script..."


iptables -P INPUT DROP
iptables -A INPUT -p icmp  --icmp-type echo-request -j DROP
iptables -A INPUT -s 10.0.0.0/24  -p udp --dport 500 -j ACCEPT
iptables -A INPUT -s 10.0.0.0/24  -p udp --dport 1 -j ACCEPT
iptables -A INPUT -s 10.0.0.0/24  -p udp --dport 5500 -j ACCEPT
iptables -A INPUT -s 10.0.2.0/24  -p tcp --dport 80 -j ACCEPT 
iptables -A INPUT -s 10.0.2.0/24  -p tcp --dport 443 -j ACCEPT 
iptables -A INPUT -s 10.0.2.0/24  -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -s 10.0.2.0/24  -p tcp --dport 631 -j ACCEPT
iptables -A FORWARD -s 192.168.1.0/24 -d 10.0.2.0/24 -p udp --dport 500 -j ACCEPT
iptables -A FORWARD -s 192.168.1.0/24 -d 10.0.2.0/24 -p udp --dport 5500 -j ACCEPT
iptables -A FORWARD -s 192.168.1.0/24 -d 10.0.2.0/24 -p udp --dport 1 -j ACCEPT
iptables -A FORWARD -s 10.0.2.0/24 -d 192.168.1.0/24 -p udp --dport 1723 -j ACCEPT
iptables -A FORWARD -s 10.0.2.0/24 -d 192.168.1.0/24 -p udp --dport 701 -j ACCEPT 
iptables -A FORWARD -s 10.0.2.0/24 -d 192.168.1.0/24 -p udp --dport 5500 -j ACCEPT
iptables -A FORWARD -s 10.0.2.0/24 -d 192.168.1.0/24 -p udp --dport 500 -j ACCEPT
iptables -A FORWARD -s 192.168.1.0/24 -d 10.0.2.0/24 -p tcp --dport 443 -j ACCEPT
iptables -A FORWARD -s 192.168.1.0/24 -d 10.0.2.0/24 -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -s 192.168.1.0/24 -p tcp -j LOG
iptables -A FORWARD -s 192.168.1.0/24 -d 10.0.2.0/24  -j LOG 
iptables -A INPUT -i eth0 -j LOG
iptables -A INPUT -i eth1 -j LOG
echo "Finalizado com Sucesso!!!"

