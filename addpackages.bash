#!/bin/bash

#
# Run this file as the root user
#

sudo apt update
sudo apt -y install emacs25-nox
sudo apt -y install nginx
sudo apt -y install redis-server
sudo apt -y install zip
sudo apt -y install unzip
sudo apt -y install gcc
sudo apt -y install make
sudo apt -y install pkg-config

snap install go --classic

#
# We are now installing docker
# with a separate script
# From here
# https://kubernetes.io/docs/setup/cri/
# This is legacy
# For docker and kubernetes
#
# snap install docker
# snap install conjure-up --classic
