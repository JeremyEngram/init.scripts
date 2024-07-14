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
