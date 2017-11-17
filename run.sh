#!/bin/bash

#
# This file should be used to prepare and run your WebProxy after set up your .env file
# Source: https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion
#

# 1. Check if .env file exists
if [ -e .env ]; then
    source .env
else 
    echo "Please set up your .env file before starting your enviornment."
    exit 1
fi

# 2. Create docker network
docker network create $NETWORK

# 3. Download the latest version of nginx.tmpl
curl https://raw.githubusercontent.com/jwilder/nginx-proxy/master/nginx.tmpl > nginx.tmpl

# 4. Start proxy
docker-compose up -d

exit 0
