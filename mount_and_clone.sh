#!/bin/bash

cd /workspaces/docker-services/rclone-mount
docker compose up -d
cd /workspaces
git clone ssh://vscode@172.17.0.1:2222/workspaces/onedrive/repo/tex.git --branch gitdoc --depth 1