#!/bin/bash

#
# Run this file as the root user
#

#
# Be sure you start changing directories
# Copy this file to a known location
#
cp .bash_aliases /tmp

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
cd /home/michael
sudo chown michael .bash_aliases
sudo chgrp michael .bash_aliases

##
#   This command needs to be run last
#   because it takes you out of sudo mode
##

su -l michael

#
# No longer using the snap version of docker
#
# sudo groupadd docker
# sudo usermod -aG docker michael
# sudo systemctl restart snap.docker.dockerd.service

# Relevant Links:
# https://help.ubuntu.com/lts/serverguide/user-management.html.en
