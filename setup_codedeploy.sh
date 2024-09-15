#!/bin/bash

# Update the system
sudo apt update -y

# Install Ruby
sudo apt install -y ruby-full

# Install wget
sudo apt install -y wget

# Navigate to the home directory of the ubuntu user
cd /home/ubuntu

# Download the AWS CodeDeploy agent installer
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install

# Make the installer executable
chmod +x ./install

# Run the installer with auto mode
sudo ./install auto

# Check the status of the CodeDeploy agent
systemctl status codedeploy-agent

