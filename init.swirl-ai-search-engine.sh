#!/bin/bash

# Clone the Swirl project from GitHub
git clone https://github.com/swirlai/swirl-search.git

# Change directory to the Swirl project
cd swirl-search

# Build and run Swirl in Docker
docker-compose pull && docker-compose up

# Display instructions for accessing Swirl
echo "Swirl is now running in Docker."
echo "You can access it at http://localhost:8000"
