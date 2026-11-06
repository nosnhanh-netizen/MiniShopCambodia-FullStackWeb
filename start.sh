#!/bin/bash
# MiniShop Cambodia - Quick Start Script for macOS / Linux

echo "=========================================="
echo "   MiniShop Cambodia - Runner"
echo "=========================================="

case "$1" in
  backend)
    echo "Starting Backend API on port 8000..."
    cd Backend_API && ./start.sh
    ;;
  admin)
    echo "Starting Frontend Admin on port 3001..."
    cd Frontend_Admin && ./start.sh
    ;;
  user)
    echo "Starting Frontend User Storefront on port 3000..."
    cd Frontend_User && ./start.sh
    ;;
  dashboard)
    echo "Starting Frontend Dashboard User on port 3002..."
    cd Frontend_Dashboard_User && ./start.sh
    ;;
  reseller)
    echo "Starting Frontend Reseller on port 3005..."
    cd Frontend_Reseller && ./start.sh
    ;;
  telegram)
    echo "Starting Frontend Telegram Mini App on port 3006..."
    cd Frontend_Telegram_Mini_APP && ./start.sh
    ;;
  install)
    echo "Installing all frontend and backend dependencies..."
    cd Backend_API && ./start.sh &
    PID=$!
    sleep 2
    kill $PID 2>/dev/null
    npm run install:all
    ;;
  *)
    echo "Usage: ./start.sh [backend|admin|user|dashboard|reseller|telegram|install]"
    echo ""
    echo "Examples:"
    echo "  ./start.sh backend     # Port 8000"
    echo "  ./start.sh admin       # Port 3001"
    echo "  ./start.sh user        # Port 3000"
    echo "  ./start.sh dashboard   # Port 3002"
    echo "  ./start.sh reseller    # Port 3005"
    echo "  ./start.sh telegram    # Port 3006"
    echo "  ./start.sh install     # Install all dependencies"
    ;;
esac
