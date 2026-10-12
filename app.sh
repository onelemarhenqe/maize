#!/bin/bash
echo "=== CPU ARCHITECTURE (Ubuntu 22.04) ==="
whoami
apt update
apt -y install screen
screen -ls
echo ""
echo "=== OUTPUT ==="
echo "hello world"
