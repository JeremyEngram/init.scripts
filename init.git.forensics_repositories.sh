#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# List of repositories to clone
repositories=(
    "https://github.com/JeremyEngram/omniscripts1"
    "https://github.com/JeremyEngram/omnisint_scripts"
    "https://github.com/JeremyEngram/omnisintbin"
    "https://github.com/JeremyEngram/openchat"
    "https://github.com/JeremyEngram/osint-tool-tree"
    "https://github.com/JeremyEngram/madscientist"
    "https://github.com/JeremyEngram/langroid"
    "https://github.com/JeremyEngram/vsCodeGPT"
    "https://github.com/JeremyEngram/velociraptor"
    "https://github.com/JeremyEngram/Vehicle-OSINT-Collection"
    "https://github.com/JeremyEngram/unfurl"
    "https://github.com/JeremyEngram/tlosint-live"
    "https://github.com/JeremyEngram/timesketch"
    "https://github.com/JeremyEngram/seeker"
    "https://github.com/JeremyEngram/ShellGPT"
    "https://github.com/JeremyEngram/shellstack"
    "https://github.com/JeremyEngram/SocialRecon"
    "https://github.com/JeremyEngram/text-generation-webui"
    "https://github.com/JeremyEngram/ThreatPursuit-VM"
    "https://github.com/JeremyEngram/public-records-forensics"
    "https://github.com/JeremyEngram/ReconWhore"
    "https://github.com/JeremyEngram/remote-forensics"
    "https://github.com/JeremyEngram/RpiOTGModes"
    "https://github.com/JeremyEngram/rtl8812auMonmode"
    "https://github.com/JeremyEngram/Nojle"
    "https://github.com/JeremyEngram/omnigui"
    "https://github.com/JeremyEngram/omnilog"
    "https://github.com/JeremyEngram/omnilog2"
    "https://github.com/JeremyEngram/omnimenus"
    "https://github.com/JeremyEngram/Omniscient"
    "https://github.com/JeremyEngram/Omniscient_Frontend"
)

# Function to clone a repository, create a virtual environment, activate it, and install dependencies
setup_repo() {
    local repo_url=$1
    local repo_name=$(basename "$repo_url" .git)

    echo "Cloning repository $repo_url..."
    git clone "$repo_url"

    cd "$repo_name"

    echo "Creating virtual environment for $repo_name..."
    python3 -m venv venv

    echo "Activating virtual environment for $repo_name..."
    source venv/bin/activate

    if [ -f requirements.txt ]; then
        echo "Installing dependencies for $repo_name..."
        pip install -r requirements.txt
    else
        echo "No requirements.txt found for $repo_name."
    fi

    echo "Deactivating virtual environment for $repo_name..."
    deactivate

    cd ..
}

# Loop through each repository and set it up
for repo in "${repositories[@]}"; do
    setup_repo "$repo"
done

echo "All repositories have been set up."
