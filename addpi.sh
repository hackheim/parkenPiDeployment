#!/bin/bash
sudo mkdir -p /tftpboot/$1
echo "/nfs/raspi1/boot /tftpboot/$1 none defaults,bind 0 0" | sudo tee -a /etc/fstab
sudo mount /tftpboot/$1
