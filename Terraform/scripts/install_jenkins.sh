#!/bin/bash

# Update packages and install Java
sudo apt update
sudo apt install -y openjdk-11-jdk

# Add Jenkins repository and key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Install Jenkins
sudo apt update
sudo apt install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Install Docker
sudo apt install -y docker.io

# Add Jenkins user to Docker group
sudo usermod -aG docker jenkins
