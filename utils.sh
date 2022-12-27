#!/bin/bash
apt-get update ; apt-get install locales neofetch curl wget git make -y
locale-gen en_US.UTF-8
apt-get install systemd -y
rm /bin/systemctl
curl -o /bin/systemctl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py
chmod 775 /bin/systemctl
