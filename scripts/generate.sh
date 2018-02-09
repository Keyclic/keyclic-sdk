#!/usr/bin/env bash

# todo: Split it in 2 sequences, one to build generator, other to build sdk, to avoid build generator every time you want to build sdk.

GENERATOR_NAME="swagger-codegen"
SWAGGER_FILE="$1"
TMP_DIRECTORY="tmp"
CODEGEN_CLI_PATH="${TMP_DIRECTORY}/${GENERATOR_NAME}/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar"
TEMPLATE_DIRECTORY="./templates/javascript-es6"

rm -rf ${TMP_DIRECTORY}
mkdir -p ${TMP_DIRECTORY}
echo "*" > ${TMP_DIRECTORY}/.gitignore

if [ ! -f "${SWAGGER_FILE}" ]; then
    SWAGGER_FILE="https://api.keyclic.com/swagger.json"
fi

echo "Use file ${SWAGGER_FILE} as definition API."

# Generator builds 3.* versions are not really ready to generate in other languages than Java.
#curl --fail --silent --show-error --location http://central.maven.org/maven2/io/swagger/swagger-codegen-cli/3.0.0-rc0/swagger-codegen-cli-3.0.0-rc0.jar --output ${CODEGEN_CLI_PATH}

# We have to compile generator.
cd ${TMP_DIRECTORY}
rm -rf ${GENERATOR_NAME}
git clone --single-branch https://github.com/swagger-api/swagger-codegen ${GENERATOR_NAME}

cd ${GENERATOR_NAME}
mvn clean package
cd ../..

java \
    -DdebugModels \
    -DdebugOperations \
    -jar ${CODEGEN_CLI_PATH} \
    generate \
    --input-spec ${SWAGGER_FILE} \
    --lang javascript \
    --output . \
    --additional-properties useInheritance=true \
    --template-dir ${TEMPLATE_DIRECTORY} \
    > .codegen.log
npx eslint --fix src/*
rm -rf ${TMP_DIRECTORY}/*
