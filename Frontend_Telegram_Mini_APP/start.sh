#!/bin/bash
# Start the Telegram Mini App storefront on port 3006
cd "$(dirname "$0")"
if [ ! -d "node_modules/react-scripts" ]; then
  echo "Installing dependencies..."
  npm install
fi
PORT=3006 npm start
