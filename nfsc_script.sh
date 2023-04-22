#!/bin/bash
sudo yum install nfs-utils -y
sudo systemctl enable firewalld --now
sudo systemctl enable nfs --now
sudo systemctl status firewalld
sudo systemctl status nfs
echo "192.168.50.11:/srv/share/ /mnt nfs vers=3,proto=udp,noauto,x-systemd.automount 0 0" >> /etc/fstab
sudo systemctl daemon-reload
sudo systemctl restart remote-fs.target
