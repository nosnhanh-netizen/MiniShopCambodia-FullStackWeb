#!/bin/bash
# Start the Mini Shop Platform Backend API on port 8000
cd "$(dirname "$0")"

# Check for Python 3.11 or fallback
if [ ! -d "venv" ]; then
  echo "Creating virtual environment..."
  if command -v python3.11 >/dev/null 2>&1; then
    python3.11 -m venv venv
  else
    python3 -m venv venv
  fi
  source venv/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
else
  source venv/bin/activate
fi

if [ ! -f ".env" ]; then
  cp .env.example .env
fi

python generate_demo_images.py
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
