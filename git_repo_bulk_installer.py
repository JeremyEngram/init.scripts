#!/bin/bash

# GitHub username
username="JeremyEngram"

# Personal access token (generate one from your GitHub account settings)
access_token="your_access_token"

# API endpoint for listing user repositories
api_url="https://api.github.com/users/$username/repos"

# Headers for the API request
headers=(
  "Authorization: Bearer $access_token"
  "Accept: application/vnd.github.v3+json"
)

# Send GET request to the API
response=$(curl -s -H "${headers[0]}" -H "${headers[1]}" "$api_url")

# Check if the request was successful
if [ $? -eq 0 ]; then
  # Parse the response JSON
  repos=$(echo "$response" | jq -r '.[].ssh_url')

  # Loop through each repository
  for repo in $repos; do
    # Clone the repository using git command with SSH
    git clone "$repo"
  done
else
  echo "Failed to retrieve repositories."
fi
