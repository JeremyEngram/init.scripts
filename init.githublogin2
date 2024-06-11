#!/bin/bash

# Set your SSH key file and GitHub username
SSH_KEY=~/.ssh/id_rsa
GITHUB_USERNAME=JeremyEngram

# Check if the SSH key exists
if [ ! -f "$SSH_KEY" ]; then
    echo "SSH key not found. Generate an SSH key and configure it first."
    exit 1
fi

# Add SSH key to the SSH agent
eval "$(ssh-agent -s)"
ssh-add "$SSH_KEY"

# Clone the GitHub repository
git clone git@github.com:$GITHUB_USERNAME/Omniscient.git

# Clean up: remove the added SSH key from the agent (optional)
ssh-add -d "$SSH_KEY"

# Optional: Change directory to the cloned repository
cd Omniscient

# Perform any Git operations as needed
# For example, you can pull, commit, or push changes here

# Exit the SSH agent
ssh-agent -k
