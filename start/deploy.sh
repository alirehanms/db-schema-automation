#!/bin/bash
set -e
cd "$(dirname "$0")/.."
git pull
sudo -u postgres psql "user=dbadmin dbname=myapp host=/var/run/postgresql" -f sql/*.sql
echo "$(date) deployed"
