#!/bin/bash

echo "Installing DevOps tools..."

# Docker
if command -v docker &> /dev/null
then
    echo "Docker already installed"
else
    sudo apt update
    sudo apt install -y docker.io
fi

# Docker Compose
if command -v docker-compose &> /dev/null
then
    echo "Docker Compose already installed"
else
    sudo apt install -y docker-compose
fi

# Python
if command -v python3 &> /dev/null
then
    echo "Python already installed"
else
    sudo apt install -y python3 python3-pip
fi

# Django
if python3 -m django --version &> /dev/null
then
    echo "Django already installed"
else
    pip3 install django
fi

echo "Installation finished"
