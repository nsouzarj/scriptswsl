#!/bin/bash

# Referencias:
# https://docs.docker.com/engine/install/ubuntu/
# https://docs.docker.com/engine/install/linux-postinstall/

# Atenção: o mecanismo systemd de inicialização de serviços do Linux não funciona com o WSL:
# https://askubuntu.com/questions/1379425/system-has-not-been-booted-with-systemd-as-init-system-pid-1-cant-operate
# https://stackoverflow.com/questions/55579342/why-systemd-is-disabled-in-wsl
# https://github.com/systemd/systemd/issues/8036

echo " "
echo "============ Iniciando o servico do Docker"
:q!
sudo service docker start

echo " "
echo "============ FIM"
echo "Teste com um dos comandos abaixo."
echo "- caso tenha configurado o grupo e o usuario para nao usar o sudo:"
echo "    docker run hello-world"
echo "- caso contrario, use:"
echo "    sudo docker run hello-world"
echo " "

