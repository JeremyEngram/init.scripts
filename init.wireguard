#!/bin/bash

# Install WireGuard:
 sudo apt-get update && sudo apt-get install wireguard

 Generate a public/private key pair for the server:
 wg genkey | tee /etc/wireguard/server.key | sudo chown root:wg

 Copy the public key to the server:
 ssh user@vpn_server "cat > /etc/wireguard/public-key.txt" < /etc/wireguard/server.key

 Configure WireGuard on the server:
 cat << EOF | sudo tee /etc/wireguard/wg0.conf
[Interface]
PrivateKey = $(cat /etc/wireguard/private-key.txt)
Address = 192.168.1.1/24
ListenPort = 51820

[Peer]
PublicKey = <server_public_key>
AllowedIPs = 192.168.1.0/24
EOF

 Configure WireGuard on the client:
 cat << EOF | sudo tee /etc/wireguard/wg0.conf
[Interface]
PrivateKey = $(cat /etc/wireguard/private-key.txt)
Address = 192.168.1.2/24
ListenPort = 51820

[Peer]
PublicKey = <server_public_key>
AllowedIPs = 192.168.1.0/24
EOF

 Start WireGuard on the server:
 sudo systemctl start wg-quick up wg0

 Start WireGuard on the client:
 sudo systemctl start wg-quick up wg0
