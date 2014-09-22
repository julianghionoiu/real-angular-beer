#!/bin/sh
set -x
set -e

# Start frontEnd app
cd "./frontEnd"
npm install
npm run start
cd ..

# Wait until app starts
sleep 1

# Test the app
cd "./test"
npm install
npm test
cd ..

# Stop frontEnd app
cd "./frontEnd"
npm install
npm run stop
cd ..