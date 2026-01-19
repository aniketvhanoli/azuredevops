#!/bin/bash
set -e

APP_DIR="/home/ubuntu/app"
APP_NAME="ec2-app"

cd "$APP_DIR"

if [ ! -f package.json ]; then
  echo "package.json not found"
  exit 1
fi

npm install --omit=dev

if pm2 describe "$APP_NAME" > /dev/null 2>&1; then
  pm2 restart "$APP_NAME"
else
  pm2 start app.js --name "$APP_NAME"
fi
