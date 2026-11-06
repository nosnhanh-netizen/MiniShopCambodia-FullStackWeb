#!/bin/bash
# Start the reseller dashboard on port 3005
cd "$(dirname "$0")"
if [ ! -d "node_modules/react-scripts" ]; then
  echo "Installing dependencies..."
  npm install
fi
PORT=3000 npm start
