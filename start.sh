#!/bin/bash

# Start your application
node dist/server.js &

# Run additional yarn commands here
yarn run payload migrate:create
yarn run payload migrate 

# Keep the script running to keep the container alive
tail -f /dev/null