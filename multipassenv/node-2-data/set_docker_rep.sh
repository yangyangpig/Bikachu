#!/bin/bash


echo "set repository start-------"

# 添加官方GPG的key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# 设置repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list

echo "set repository ending-------"
# 安装docker engine
sudo apt-get update

echo "update repository ending-------"
#sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
