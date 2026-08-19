#!/bin/bash

# Script Name: restart.sh
# Description: Restart instance
# Author: Jakub Soboczyński
# Version: 1.0

docker network inspect proxy >/dev/null 2>&1 || docker network create proxy
docker compose down
docker compose up -d
