#!/bin/bash

echo "Starting Streamlit app..."

# Kill any existing Streamlit process (optional safety step)
pkill -f "streamlit run app.py" || true

# Run Streamlit app in background
nohup streamlit run app.py --server.port=8501 > streamlit.log 2>&1 &
echo "Streamlit app deployed at http://localhost:8501"
