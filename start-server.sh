#!/bin/bash

# Start local server for Cardinal Houses website
echo "Starting local server..."
echo "Website will be available at: http://localhost:8000"
echo "Press Ctrl+C to stop the server"
echo ""

# Try Python 3 first, then Python 2, then PHP
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8000
elif command -v php &> /dev/null; then
    php -S localhost:8000
else
    echo "Error: No server found. Please install Python or PHP."
    echo "Or simply open index.html directly in your browser."
    exit 1
fi


