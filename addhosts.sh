#!/bin/bash


#Acessando a rede pra fora

sudo sysctl net.ipv4.conf.all.forwarding=1
sudo iptables -P FORWARD ACCEPT


#Servidor dns padrao do google
echo "nameserver 8.8.8.8" >> /etc/resolf.conf

#Adicionando  os hosts de dns no  /etc/resolv.conf


echo "#Servidores de DSN da petrobra" >> /etc/resolv.conf
echo "nameserver 333.333.333.3" >>  /etc/resolv.conf
echo "nameserver 444.444.444.4" >> /etc/resolv.conf
echo "search petrobtas.biz" >> /etc/resolv.conf
echo "search petrobras.com.br" >> /etc/resolv.conf



#Adicionando  os hosts  para  resolver nome no /etc/hosts

echo "#Servidores  de banco de dados"  >> /etc/hosts
echo "10.30.198.129     pocoweb.cenpes.petrobras.com.br"  >>  /etc/hosts
echo "10.28.193.36      bdedmhmg.ep.petrobras.com.br" >> /etc/hosts
echo "10.30.43.82       bdedmdsv.petrobras.com.br"   >> /etc/hsots
echo "10.28.194.240     bdedmbr.ep.petrobras.com.br" >> /etc/hosts
echo "10.28.196.66	npaa6602.petrobras.biz"  >> /etc/hosts
echo "10.28.196.66	seprto0402" >> /etc/hosts

#register da petrobras do Docker

echo "10.28.204.48	registry-proxy.petrobras.com.br"  >> /etc/hosts
