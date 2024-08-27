#!/bin/bash

ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
# ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o GlobalKnownHostsFile=/dev/null vscode@localhost