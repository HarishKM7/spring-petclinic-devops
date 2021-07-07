#!/bin/bash

apt update -y
apt install -y default-jdk

# Jenkins

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

apt update -y
apt install -y jenkins

systemctl enable jenkins
systemctl start jenkins

# Ansible

apt install -y ansible
