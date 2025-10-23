#!/bin/bash

# Update system packages
sudo yum update -y

# Ensure Docker is installed and running
sudo systemctl enable docker
sudo systemctl start docker

# Pull Docker images for WordPress and MySQL
echo "Pulling Docker images..."
sudo docker pull mysql:5.7
sudo docker pull wordpress:latest

# Create a custom network for communication
sudo docker network create wp-network

# Run MySQL container
echo "Starting MySQL container..."
sudo docker run -d \
  --name wp-mysql \
  --network wp-network \
  -e MYSQL_ROOT_PASSWORD=password \
  -e MYSQL_DATABASE=wordpress \
  -e MYSQL_USER=wpuser \
  -e MYSQL_PASSWORD=password \
  mysql:5.7

# Run WordPress container
echo "Starting WordPress container..."
sudo docker run -d \
  --name wordpress \
  --network wp-network \
  -p 80:80 \
  -e WORDPRESS_DB_HOST=wp-mysql:3306 \
  -e WORDPRESS_DB_USER=wpuser \
  -e WORDPRESS_DB_PASSWORD=password \
  -e WORDPRESS_DB_NAME=wordpress \
  wordpress:latest

echo "Deployment complete!"
echo "Access your WordPress setup at: http://$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)"
