#!/bin/bash

# Create a directory for the project and navigate to it
mkdir vllm_project
cd vllm_project

# Create a Python virtual environment
python3 -m venv vllm_env

# Activate the virtual environment
source vllm_env/bin/activate

# Install Git if not already installed
# sudo apt-get install git -y  # Uncomment and use this line if you need to install Git

# Clone the VLLM repository
git clone https://github.com/vllm-project/vllm.git

# Navigate to the VLLM directory
cd vllm

# Install the required Python packages
pip install -r requirements.txt

# Deactivate the virtual environment
deactivate

echo "VLLM is installed in vllm_project/vllm_env. You can activate the virtual environment and run the project from there."
