#!/bin/bash

# Function to check the status of the last executed command
check_status() {
    if [ $? -eq 0 ]; then
        echo "[+] $1 successful."
    else
        echo "[-] $1 failed."
        exit 1
    fi
}

# Clone the tmux repository from GitHub
echo "[+] Cloning the tmux repository from GitHub..."
git clone https://github.com/tmux/tmux.git
check_status "Cloning tmux repository"

# Change directory to the tmux project
echo "[+] Changing directory to tmux project..."
cd tmux || { echo "[-] Directory tmux not found."; exit 1; }
check_status "Changing directory to tmux"

# Generate the configuration script
echo "[+] Running autogen.sh to generate configuration script..."
sh autogen.sh
check_status "Running autogen.sh"

# Configure and build tmux
echo "[+] Configuring and building tmux..."
./configure && make
check_status "Configuring and building tmux"

echo "[+] tmux installation completed successfully!"
