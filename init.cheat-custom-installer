#!/bin/bash

# Install Script for the cheat command in Linux

# Define the version of cheat to install
CHEAT_VERSION="4.3.1"

# Define the download URL
DOWNLOAD_URL="https://github.com/cheat/cheat/releases/download/${CHEAT_VERSION}/cheat-linux-amd64.gz"

# Step 1: Download the cheat binary
echo "Downloading cheat version ${CHEAT_VERSION}..."
wget $DOWNLOAD_URL -O cheat-linux-amd64.gz

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Download failed. Please check the URL and your internet connection."
    exit 1
fi

# Step 2: Unzip the downloaded file
echo "Unzipping the cheat binary..."
gunzip cheat-linux-amd64.gz

# Check if the unzip was successful
if [ ! -f "cheat-linux-amd64" ]; then
    echo "Unzipping failed. The file cheat-linux-amd64 does not exist."
    exit 1
fi

# Step 3: Make the binary executable
echo "Making cheat binary executable..."
chmod +x cheat-linux-amd64

# Step 4: Move the binary to a directory in your PATH
# /usr/local/bin is commonly used for user-installed software
echo "Moving cheat binary to /usr/local/bin..."
sudo mv cheat-linux-amd64 /usr/local/bin/cheat

# Verify the move was successful
if [ $? -ne 0 ]; then
    echo "Failed to move cheat binary to /usr/local/bin. You might need to check your permissions."
    exit 1
fi

# Final Step: Verify the installation
echo "Verifying the installation..."
cheat_version_installed=$(cheat -v)

# Check if cheat command is available and version is as expected
if [[ $cheat_version_installed == *"$CHEAT_VERSION"* ]]; then
    echo "cheat version ${CHEAT_VERSION} successfully installed."
else
    echo "Installation failed. cheat command not found or version mismatch."
    exit 1
fi

