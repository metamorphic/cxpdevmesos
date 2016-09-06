#!/usr/bin/env sh
MARATHON=http://192.168.31.10:8080

for file in *.json
do
  echo "Installing $file..."
  curl -X POST "$MARATHON/v2/apps" -d @"$file" -H "Content-type: application/json"
  echo ""
  sleep 300
done
