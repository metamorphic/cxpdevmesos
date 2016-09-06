#!/usr/bin/env bash
MARATHON=http://192.168.31.10:8080

curl -X PUT $MARATHON/v2/apps/$1 -d @$2 -H "Content-type: application/json"
