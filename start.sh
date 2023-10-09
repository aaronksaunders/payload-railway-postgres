#!/bin/bash

# Run additional yarn commands here
yarn run payload migrate:create
yarn run payload migrate 

# Start your application
node dist/server.js &

# Keep the script running to keep the container alive
tail -f /dev/null