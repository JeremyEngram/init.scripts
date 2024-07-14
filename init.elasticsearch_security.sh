#!/bin/bash

# Function to add a setting to a configuration file if it doesn't already exist
add_setting() {
    file="$1"
    setting="$2"
    value="$3"
    if ! grep -q "^$setting: $value" "$file"; then
        echo "$setting: $value" >> "$file"
    fi
}

# Check for root privilege
if [ "$(id -u)" != "0" ]; then
    echo "Please run this script with superuser privileges (sudo)."
    exit 1
fi

# Paths for configuration files
ES_PATH_CONF="/etc/elasticsearch/elasticsearch.yml"
KIB_PATH_CONF="/etc/kibana/kibana.yml"

# Stop Elasticsearch and Kibana
systemctl stop elasticsearch
systemctl stop kibana

# Enable Elasticsearch security
add_setting "$ES_PATH_CONF" "xpack.security.enabled" "true"
add_setting "$ES_PATH_CONF" "discovery.type" "single-node"

# Start Elasticsearch
systemctl start elasticsearch

# Set passwords for built-in users
/bin/elasticsearch-setup-passwords auto

# Configure Kibana to use the kibana_system user
add_setting "$KIB_PATH_CONF" "elasticsearch.username" "kibana_system"

# Create the Kibana keystore and add the password for kibana_system
cd /usr/share/kibana
./bin/kibana-keystore create
./bin/kibana-keystore add elasticsearch.password

# Start Kibana
systemctl start kibana

echo "Elasticsearch security has been configured. You can now log in to Kibana securely."
