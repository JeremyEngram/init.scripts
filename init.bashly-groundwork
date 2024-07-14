#!/bin/bash

# Create omniscient directory
sudo mkdir /opt/omniscient  
sudo mkdir /usr/local/bin/omniscient

# Install bashly framework 
sudo pip install bashly

# Set up bashly config
bashly init
bashly add /opt/omniscient
bashly add /usr/local/bin/omniscient

# Create example OSINT scripts
touch /opt/omniscient/example1.sh
touch /usr/local/bin/omniscient/example2.sh

# Make scripts executable 
chmod +x /opt/omniscient/example1.sh
chmod +x /usr/local/bin/omniscient/example2.sh

# Done! Can now add more OSINT scripts to the bashly framework
