#!/usr/bin/env sh
MARATHON=http://192.168.31.10:8080

echo "Installing $file..."
curl -X POST "$MARATHON/v2/apps" -d @"$1" -H "Content-type: application/json"
echo ""
