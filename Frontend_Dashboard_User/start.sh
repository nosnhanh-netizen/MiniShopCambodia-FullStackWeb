#!/bin/bash
# Start the shop owner dashboard on port 3002
cd "$(dirname "$0")"
if [ ! -d "node_modules/react-scripts" ]; then
  echo "Installing dependencies..."
  npm install
fi
PORT=3002 npm start
