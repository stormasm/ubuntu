#!/bin/bash

#
# Run this file as the root user
#

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

Then add them to the sudoers group
usermod -aG sudo michael

# Relevant Links:
# https://help.ubuntu.com/lts/serverguide/user-management.html.en
