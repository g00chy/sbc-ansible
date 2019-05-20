#!/bin/bash
sudo yum install -y ansible
sudo echo 'vagrant:vagrant' | chpasswd
sed -i -e "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config
sudo systemctl restart sshd
echo 'export ANSIBLE_HOST_KEY_CHECKING=False' > /home/vagrant/.bashrc