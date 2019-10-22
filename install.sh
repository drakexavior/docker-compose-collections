#!/bin/bash

# Install Docker
if pacman -Qi docker > /dev/null; then
  echo "Docker is alreay install"
else
  echo "---Installing Docker---"
  sudo pacman -S docker --noconfirm
fi

# Add $USER to group to start
sudo usermod -aG docker $USER
sudo systemctl stop docker
sudo systemctl start docker

# Start the docker login process
docker login
docker run hello-world
