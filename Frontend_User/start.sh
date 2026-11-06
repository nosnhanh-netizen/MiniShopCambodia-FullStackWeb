#!/bin/bash
# Start the public storefront on port 3000
cd "$(dirname "$0")"
if [ ! -d "node_modules/react-scripts" ]; then
  echo "Installing dependencies..."
  npm install
fi
PORT=3000 npm start
