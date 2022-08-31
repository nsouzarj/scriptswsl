#!/bin/bash

# Referencias:
# https://docs.docker.com/engine/install/ubuntu/
# https://docs.docker.com/engine/install/linux-postinstall/

echo " "
echo "============ Removendo versoes antigas do Docker"
sudo apt-get remove docker docker-engine docker.io containerd runc

echo " "
echo "============ Atualizando a lista de pacotes"
sudo apt-get update

echo " "
echo "============ Instalando pacotes para o apt usar repositorios por HTTP"
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

	
echo " "
echo "============ Adicionando apt-key do Docker"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7EA0A9C3F273FCD8
	
echo " "
echo "============ Adicionando chave GPG oficial do Docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --batch --yes --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo " "
echo "============ Configurando o apt source para o Docker"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
echo " "
echo "============ Atualizando a lista de pacotes"
sudo apt-get update

echo " "
echo "============ Instalando o Docker"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

echo " "
echo "============ FIM"
echo "Voce pode configurar um grupo e o usuario para nao precisar do sudo para executar o Docker"
echo "Para testar a instalacao, inicie o servico do Docker e execute:"
echo "- caso tenha configurado o grupo e o usuario para nao usar o sudo:"
echo "    docker run hello-world"
echo "- caso contrario, use:"
echo "    sudo docker run hello-world"
echo " "




