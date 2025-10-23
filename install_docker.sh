#!/bin/bash

# Update system packages
sudo yum update -y

# Install Docker
sudo amazon-linux-extras enable docker
sudo yum install -y docker

# Enable and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Confirm Docker is running
sudo systemctl status docker
