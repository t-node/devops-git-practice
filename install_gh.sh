#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🔄 Updating package lists and checking dependencies..."
sudo apt update -y
sudo apt install wget -y

echo "🔑 Setting up secure apt keyrings and directory structures..."
sudo mkdir -p -m 755 /etc/apt/keyrings
sudo mkdir -p -m 755 /etc/apt/sources.list.d

echo "📥 Fetching official GitHub CLI repository signatures..."
# Use a secure temp file to download the signature file safely
TEMP_KEY=$(mktemp)
wget -nv -O "$TEMP_KEY" https://cli.github.com/packages/githubcli-archive-keyring.gpg
cat "$TEMP_KEY" | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null
rm -f "$TEMP_KEY"

# Ensure correct read permissions for apt
sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg

echo "✍️ Adding GitHub CLI mirror source list..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
  | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

echo "🚀 Installing GitHub CLI (gh)..."
sudo apt update -y
sudo apt install gh -y

echo "✅ Success! Verification check:"
gh --version

echo ""
echo "🔒 Starting account authentication link..."
gh auth login

