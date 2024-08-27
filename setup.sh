#!/bin/bash

ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
# ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o GlobalKnownHostsFile=/dev/null vscode@localhost

sudo apt install keychain
cat ./keychain_config.sh >> ~/.bashrc

cd /workspaces
git clone https://github.com/Mumie-hub/docker-services.git
cp /workspaces/test-github-codespace/docker-compose.yml /workspaces/docker-services/rclone-mount
mkdir /workspaces/rclone_config