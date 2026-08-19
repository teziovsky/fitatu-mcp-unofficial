#!/bin/bash

# Script Name: update.sh
# Description: Update instance and restart it
# Author: Jakub Soboczyński
# Version: 1.0

docker network inspect proxy >/dev/null 2>&1 || docker network create proxy
docker compose pull
docker compose down
docker compose up -d
