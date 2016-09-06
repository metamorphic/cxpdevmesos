#!/usr/bin/env bash
MARATHON=http://192.168.31.10:8080

curl -X DELETE $MARATHON/v2/apps/$1
