#!/bin/bash
# Start the admin panel on port 3001
cd "$(dirname "$0")"
if [ ! -d "node_modules/react-scripts" ]; then
  echo "Installing dependencies..."
  npm install
fi
PORT=3001 npm start
