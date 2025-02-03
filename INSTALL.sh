#!/bin/bash

if [ -d "./.venv" ]; then
    source ./.venv/bin/activate
else
    echo "creating env..."
    python3 -m venv .venv
    source ./.venv/bin/activate
fi

pip install -r requirements.txt