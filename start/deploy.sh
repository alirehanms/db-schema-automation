#!/bin/bash
set -e

echo "🔄 Starting deployment..."

# Navigate to project root
cd "$(dirname "$0")/.."

echo "📥 Pulling latest code from GitHub..."
git pull

echo "🚀 Running SQL migration scripts..."
for file in sql/*.sql; do
  echo "▶️ Running: $file"
  sudo -u postgres psql "user=dbadmin dbname=myapp host=/var/run/postgresql" -f "$file"
done

echo "✅ Deployment complete at $(date)"

