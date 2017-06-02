#!/usr/bin/env bash

java \
-DdebugModels \
-DdebugOperations \
-jar ./generator/swagger-codegen-cli.jar \
generate \
-i ../keyclic-api/web/swagger.correct.json \
-l javascript \
-t ./generator/templates/javascript-es6 \
-o ./ \
--additional-properties usePromises=true,useInheritance=true \
> ./.mustache.log
