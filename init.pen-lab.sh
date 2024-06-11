#!/bin/bash

# Updating system
echo "[+] Updating System..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Installing Metasploit Framework
echo "[+] Installing Metasploit Framework..."
sudo apt-get install -y metasploit-framework

# Verifying Metasploit installation
which msfconsole
if [ $? -eq 0 ]; then
    echo "[+] Metasploit installation successful."
else
    echo "[-] Metasploit installation failed."
    exit 1
fi

# Installing Docker for DVWA
echo "[+] Installing Docker..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce

# Verifying Docker installation
which docker
if [ $? -eq 0 ]; then
    echo "[+] Docker installation successful."
else
    echo "[-] Docker installation failed."
    exit 1
fi

# Pulling and Running DVWA
echo "[+] Pulling and Running DVWA..."
sudo docker run --rm -it -p 80:80 vulnerables/web-dvwa

echo "[+] Setup complete."






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

# Updating the system
echo "[+] Updating System..."
sudo apt-get update -y && sudo apt-get upgrade -y
check_status "System update and upgrade"

# Installing Metasploit Framework
echo "[+] Installing Metasploit Framework..."
sudo apt-get install -y metasploit-framework
check_status "Metasploit installation"

# Verifying Metasploit installation
echo "[+] Verifying Metasploit installation..."
if command -v msfconsole &> /dev/null; then
    echo "[+] Metasploit installation verified."
else
    echo "[-] Metasploit installation verification failed."
    exit 1
fi

# Installing Docker for DVWA
echo "[+] Installing Docker..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
check_status "Docker dependencies installation"

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
check_status "Docker GPG key addition"

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
check_status "Docker repository addition"

sudo apt-get update
sudo apt-get install -y docker-ce
check_status "Docker installation"

# Verifying Docker installation
echo "[+] Verifying Docker installation..."
if command -v docker &> /dev/null; then
    echo "[+] Docker installation verified."
else
    echo "[-] Docker installation verification failed."
    exit 1
fi

# Pulling and Running DVWA
echo "[+] Pulling and Running DVWA..."
sudo docker run --rm -it -p 80:80 vulnerables/web-dvwa
check_status "DVWA container run"

echo "[+] Setup complete."
