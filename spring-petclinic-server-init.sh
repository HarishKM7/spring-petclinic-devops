#!/bin/bash

apt update -y
apt install -y default-jdk

# Docker

apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt update -y
apt install -y docker-ce
usermod -aG docker ubuntu
