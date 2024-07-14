#!/bin/bash
# Install dependencies
sudo apt update sudo apt install -y git build-essential cmake 
libssl-dev
# Clone FastChat repository
git clone https://github.com/lm-sys/FastChat.git
# Change to FastChat directory
cd FastChat
# Build FastChat
mkdir build 
cd build 
cmake .. 
make
# Install FastChat
sudo make install
# Clean up
cd ../.. rm -rf FastChat
echo "FastChat has been installed!"
