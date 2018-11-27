#!/bin/bash

#
# Run this file as the root user
#

#
# Be sure you start changing directories
# Copy this file to a known location
#
cp .bash_aliases /tmp
cp ./../top/id_rsa*  /tmp

# First add in a new user:
sudo adduser michael

cd /home/michael
mkdir .ssh
chown michael .ssh
chgrp michael .ssh

cd /root/.ssh
cp authorized_keys /home/michael/.ssh

cd /home/michael/.ssh
chown michael authorized_keys
chgrp michael authorized_keys

# To allow ssh access add the following to sshd_config

cd /etc/ssh
echo 'AllowUsers root michael' >> sshd_config

# Any time you change the sshd_config file you must run this command:
sudo systemctl restart sshd.service

# Then add them to the sudoers group
usermod -aG sudo michael

cp /tmp/.bash_aliases /home/michael
cp /tmp/id_rsa* /home/michael/.ssh
git config --global user.email stormasm@gmail.com
git config --global user.name "Michael Angerman"

# This is for docker, for now you still need to do a sudo reboot...
# until you figure out how to restart the docker daemon
sudo groupadd docker
sudo usermod -aG docker michael

# Relevant Links:
# https://help.ubuntu.com/lts/serverguide/user-management.html.en
