#!/bin/bash

# GitHub user/repo
REPO="anypay/wallet-bot"

# Fetch the latest release data from GitHub
LATEST_RELEASE=$(curl -s "https://api.github.com/repos/$REPO/releases/latest")

echo $LATEST_RELEASE

# Extract the version, tarball URL, and asset name
VERSION=$(echo "$LATEST_RELEASE" | jq -r .tag_name)

echo $VERSION

TARBALL_URL=$(echo "$LATEST_RELEASE" | jq -r .tarball_url)

echo $TARBALL_URL

SHA256=$(curl -Ls "$TARBALL_URL" | shasum -a 256 | awk '{print $1}')

echo $SHA256

