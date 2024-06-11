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

# Update system
echo "[+] Updating System..."
sudo apt-get update -y
check_status "System update"
sudo apt-get upgrade -y
check_status "System upgrade"

# Install nmap
echo "[+] Installing nmap..."
sudo apt-get install -y nmap
check_status "Nmap installation"

# Check nmap installation
echo "[+] Verifying nmap installation..."
if command -v nmap &> /dev/null; then
    echo "[+] Nmap installation verified."
else
    echo "[-] Nmap installation verification failed."
    exit 1
fi

# Install OpenVAS
echo "[+] Installing OpenVAS..."
sudo apt-get install -y openvas
check_status "OpenVAS installation"

# Start and enable OpenVAS service
echo "[+] Starting and enabling OpenVAS service..."
sudo systemctl start openvas
check_status "Starting OpenVAS service"
sudo systemctl enable openvas
check_status "Enabling OpenVAS service"

# Setup OpenVAS
echo "[+] Setting up OpenVAS..."
sudo openvas-setup
check_status "OpenVAS setup"

# Check OpenVAS installation
echo "[+] Verifying OpenVAS installation..."
if command -v openvas &> /dev/null; then
    echo "[+] OpenVAS installation verified."
else
    echo "[-] OpenVAS installation verification failed."
    exit 1
fi

echo "[+] Setup complete."
