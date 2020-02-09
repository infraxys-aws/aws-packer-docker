#!/usr/bin/env bash

set -eo pipefail;

export DEBIAN_FRONTEND=noninteractive

sudo apt-get install -y apt-transport-https software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update;

echo "Installing docker-ce";
sudo apt-get install -y docker-ce=18.06.*;

sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose;
