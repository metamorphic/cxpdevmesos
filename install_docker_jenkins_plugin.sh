#!/usr/bin/env sh
curl -X POST -d '<jenkins><install plugin="docker-build-publish@latest"/></jenkins>' --header 'Content-Type: text/xml' http://devnode1:7000/pluginManager/installNecessaryPlugins
