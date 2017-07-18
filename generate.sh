#!/usr/bin/env bash

java \
-DdebugModels \
-DdebugOperations \
-jar ./generator/swagger-codegen-cli.jar \
generate \
-i ../keyclic-api/web/swagger.json \
-l javascript \
-o ./ \
--additional-properties useInheritance=true \
-t ./generator/templates/javascript-es6 \
> ./.mustache.log
