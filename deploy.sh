#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

git pull --ff-only
docker compose up -d --build --force-recreate
docker image prune -f
