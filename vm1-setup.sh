#!/bin/bash
# Оновити список пакетів
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo apt-get install postgresql-client -y
# Генерація SSH-ключа
#ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
# Додавання публічного ключа до authorized_keys на vm2
#cat ~/.ssh/id_rsa.pub | ssh vagrant@192.168.0.151 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
