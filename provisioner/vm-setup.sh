#!/bin/bash

sudo apt update -y
sudo apt install openssh-server -y
sudo apt install openssh-client -y
sudo apt install sshpass -y
sudo systemctl start sshd
sudo ufw enable
sudo ufw allow 22

echo "set ssh configuration"

if [ -e ~/.ssh/id_rsa ]; then
    rm ~/.ssh/id_rsa
    rm ~/.ssh/id_rsa.pub
    echo "previous ssh key deleted"
fi

ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa <<< $'\n'
sshpass -p "vagrant" ssh-copy-id -i ~/.ssh/id_rsa.pub -o StrictHostKeyChecking=no  vagrant@192.168.56.110

sudo systemctl restart sshd
