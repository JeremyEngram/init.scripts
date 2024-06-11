#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y python3 python3-pip git python3-venv

# Create a virtual environment
python3 -m venv myenv

# Activate the virtual environment
source myenv/bin/activate

# Clone the LangChain repository from GitHub
git clone https://github.com/LangChain/LangChain.git

# Switch to the LangChain directory
cd LangChain

# Install LangChain using pip
pip install -e .

# Run the LangChain development server
python langchain dev

# Go back to the previous directory
cd ..

# Clone the LangFlow repository from GitHub
git clone https://github.com/LangFlow/LangFlow.git

# Switch to the LangFlow directory
cd LangFlow

# Install LangFlow using pip
pip install -e .

# Run the LangFlow development server
python langflow dev

# Deactivate the virtual environment when done
deactivate





#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Function to install dependencies
install_dependencies() {
    echo "Installing dependencies..."
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip git python3-venv
}

# Function to create and activate a virtual environment
setup_virtualenv() {
    echo "Creating and activating virtual environment..."
    python3 -m venv myenv
    source myenv/bin/activate
}

# Function to clone and setup a repository
setup_repository() {
    local repo_url=$1
    local repo_name=$(basename "$repo_url" .git)
    local run_command=$2

    echo "Cloning repository $repo_url..."
    git clone "$repo_url"
    
    echo "Switching to directory $repo_name..."
    cd "$repo_name"
    
    echo "Installing $repo_name using pip..."
    pip install -e .
    
    echo "Running $repo_name development server..."
    python "$run_command" &
    
    echo "Switching back to the previous directory..."
    cd ..
}

# Function to deactivate the virtual environment
deactivate_virtualenv() {
    echo "Deactivating virtual environment..."
    deactivate
}

# Main function to execute setup steps
main() {
    install_dependencies
    setup_virtualenv

    setup_repository "https://github.com/LangChain/LangChain.git" "langchain dev"
    setup_repository "https://github.com/LangFlow/LangFlow.git" "langflow dev"

    deactivate_virtualenv
}

# Execute main function
main
