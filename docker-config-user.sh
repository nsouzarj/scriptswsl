#!/bin/bash

# Referencias:
# https://docs.docker.com/engine/install/ubuntu/
# https://docs.docker.com/engine/install/linux-postinstall/

echo " "
echo "============ Criando o grupo docker"
sudo groupadd docker

echo " "
echo "============ Adicionando o usuário atual ao grupo docker para não necessitar executar o docker com o sudo"
sudo usermod -aG docker $USER

echo " "
echo "============ FIM"
echo "Reinicie o Linux, inicie o serviço do docker e execute sem o 'sudo' para testar: "
echo "  docker run hello-world"
echo " "

