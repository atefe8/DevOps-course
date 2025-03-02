#!/bin/bash

sudo apt update -y
sudo apt install openssh-server -y
sudo apt install openssh-client -y
sudo apt install sshpass -y
sudo systemctl start sshd

echo "set ssh configuration"

ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@10.0.2.15
sudo systemctl restart sshd
