#!/bin/bash
apt-get update
apt-get install -y snapd
snap istall -y docker
echo "Docker Installed Successfully"