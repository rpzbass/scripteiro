#!/bin/bash


echo "+-------------------------------------+"
echo "+EXECUTANDO REGRAS DE SEGURANÇA BASICA+"
echo "+-------------------------------------+"

iptables -A INPUT -p icmp --icmp-type echo-request -j DROP    
iptables -A INPUT -p TCP --destination-port 5000 -j DROP
iptables -A INPUT -p TCP --destination-port 631 -j DROP
iptables -A INPUT -p TCP --destination-port 25 -j DROP
iptables -A INPUT -p TCP --destination-port 1234 -j DROP
iptables -A INPUT -p TCP --destination-port 21 -j DROP
iptables -A INPUT -p TCP --destination-port 23 -j DROP
iptables -A INPUT -p tcp --syn -j DROP 
iptables -A INPUT -p TCP -j LOG
iptables -A INPUT -p UDP -j LOG


echo ""

echo "+------------------------------+"
echo "+ REGRAS APLICADAS COM SUCESSO +"
echo "+------------------------------+"




   



exit 0



