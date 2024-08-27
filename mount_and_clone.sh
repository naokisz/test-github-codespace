#!/bin/bash

cd /workspaces/docker-services/rclone-mount
docker compose up -d
cd /workspaces
GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git clone ssh://vscode@172.17.0.1:2222/workspaces/onedrive/repo/tex.git --branch gitdoc --depth 1
mkdir -p /home/vscode/.texlive2024/texmf-var/luatex-cache