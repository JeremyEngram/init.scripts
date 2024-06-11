#!/bin/bash

# THIS SCRIPT WILL INSTALL CLASSIFIER, AND PRINT BASIC USAGE

# Step 1: Install necessary dependencies
sudo apt update
sudo apt install -y python-pip python-setuptools

# Step 2: Add local bin to PATH
echo 'PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Step 3: Install classifier using pip
pip install --user --upgrade classifier

# Step 4: Print basic usage instructions
echo "Usage:"
echo "  Go to your directory where you want to classify your files."
echo "  Run the following command in your terminal:"
echo
echo "classifier -h"
classifier -h
echo
echo "classifier [-dt] [-st SPECIFIC_TYPES [SPECIFIC_TYPES ...]] [-sf SPECIFIC_FOLDER] [-o OUTPUT]"
echo
echo '# Example: Classify specific file types'
echo '# classifier -st py pyc -sf "Python Files"'
