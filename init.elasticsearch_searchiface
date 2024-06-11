#!/bin/bash

wget https://artifacts.elastic.co/downloads/enterprise-search/enterprise-search-8.10.4.deb
sudo dpkg --install enterprise-search-8.10.4.deb

echo "Configure Elasticsearch"
echo "sudo nano /etc/elasticsearch/elasticsearch.yml"
sudo nano /etc/elasticsearch/elasticsearch.yml


printf "The elasticsearch.yml file provides configuration options for your cluster, node, paths, memory, network, discovery, and gateway. Most of these options are preconfigured in the file but you can change them according to your needs. For the purposes of our demonstration of a single-server configuration, we will only adjust the settings for the network host.

Elasticsearch listens for traffic from everywhere on port 9200. You will want to restrict outside access to your Elasticsearch instance to prevent outsiders from reading your data or shutting down your Elasticsearch cluster through its [REST API] (https://en.wikipedia.org/wiki/Representational_state_transfer). To restrict access and therefore increase security, find the line that specifies network.host, uncomment it, and replace its value with localhost so it reads like this:
/etc/elasticsearch/elasticsearch.yml

. . .
# ---------------------------------- Network -----------------------------------
#
# Set the bind address to a specific IP (IPv4 or IPv6):
#
network.host: localhost
. . .

We have specified localhost so that Elasticsearch listens on all interfaces and bound IPs. If you want it to listen only on a specific interface, you can specify its IP in place of localhost. Save and close elasticsearch.yml. If you’re using nano, you can do so by pressing CTRL+X, followed by Y and then ENTER .

These are the minimum settings you can start with in order to use Elasticsearch. Now you can start Elasticsearch for the first time.

Start the Elasticsearch service with systemctl. Give Elasticsearch a few moments to start up. Otherwise, you may get errors about not being able to connect.

    sudo systemctl start elasticsearch

Next, run the following command to enable Elasticsearch to start up every time your server boots:

    sudo systemctl enable elasticsearch

With Elasticsearch enabled upon startup, let’s move on to the next step to discuss security."; echo 


echo "TESTING PURPOSES:>     curl -X GET 'http://localhost:9200'"; echo

printf "To perform a more thorough check of Elasticsearch execute the following command:

    curl -X GET 'http://localhost:9200/_nodes?pretty'

In the output from the above command you can verify all the current settings for the node, cluster, application paths, modules, and more."; echo


echo "HOW TO ACCESS ELASTICSEARCH SEARCH ENGINE WEB INTERFACE"; echo 

echo "cat "

