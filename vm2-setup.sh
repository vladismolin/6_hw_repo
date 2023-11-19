#!/bin/bash
# Оновити список пакетів
sudo apt-get update -y
sudo apt-get upgrade -y
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx HTTP'
sudo ufw --force enable
# Генерація SSH-ключа
#ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
# Додавання публічного ключа до authorized_keys на vm1
#cat ~/.ssh/id_rsa.pub | ssh vagrant@192.168.0.150 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
