#!/bin/bash
#script de compartilhamento internet


echo  "inicia servico ssh"

systemctl start ssh

sleep 1


echo "Ativando Modulo Nat"

modprobe iptable_nat


echo "Setando encaminhamento"

echo 1 > /proc/sys/net/ipv4/ip_forward


echo "Definindo rota de saida para internet"

iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE
