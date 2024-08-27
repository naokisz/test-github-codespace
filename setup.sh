#!/bin/bash

ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
# ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o GlobalKnownHostsFile=/dev/null vscode@localhost

export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get update
sudo -E apt-get install -y -qq keychain
cat ./keychain_config.sh >> ~/.bashrc

cd /workspaces
git clone https://github.com/Mumie-hub/docker-services.git
cp /workspaces/test-github-codespace/docker-compose.yml /workspaces/docker-services/rclone-mount
mkdir /workspaces/rclone_config
sudo mount --make-shared /
sudo mount --make-shared /workspaces
sudo passwd vscode