#!/bin/bash
cd build/web/

# Starts server on the port specified by the first argument
echo Starting server on port $1
python3 -m http.server $1