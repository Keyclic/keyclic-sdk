#!/usr/bin/env bash

# todo: Split it in 2 sequences, one to build generator, other to build sdk, to avoid build generator every time you want to build sdk.

CURRENT_DIR=$(pwd)

SWAGGER_FILE="$1"
if [ ! -f "${SWAGGER_FILE}" ]; then
    SWAGGER_FILE="https://api.keyclic.com/swagger.json"
fi
echo "Use file ${SWAGGER_FILE} as definition API."

echo "Making temp deploy directory."
TEMP_DIR=$(mktemp -d)
echo "Made ${TEMP_DIR}"

if [[ ! "${TEMP_DIR}" || ! -d "${TEMP_DIR}" ]]; then
  echo "Could not create temp building directory."
  exit 1
fi

# Generator builds 3.* versions are not really ready to generate in other languages than Java.
#curl --fail --silent --show-error --location http://central.maven.org/maven2/io/swagger/swagger-codegen-cli/3.0.0-rc0/swagger-codegen-cli-3.0.0-rc0.jar --output ${CODEGEN_CLI_PATH}

# We have to compile generator.
GENERATOR_NAME="swagger-codegen"
cd ${TEMP_DIR}
git clone --single-branch https://github.com/swagger-api/swagger-codegen ${GENERATOR_NAME}
cd ${GENERATOR_NAME}
mvn clean package

CODEGEN_CLI_PATH="${TEMP_DIR}/${GENERATOR_NAME}/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar"
TEMPLATE_DIR="${CURRENT_DIR}/templates/javascript-es6"
cd ${CURRENT_DIR}
java \
    -DdebugModels \
    -DdebugOperations \
    -jar ${CODEGEN_CLI_PATH} \
    generate \
    --input-spec ${SWAGGER_FILE} \
    --lang javascript \
    --output . \
    --additional-properties useInheritance=true \
    --template-dir ${TEMPLATE_DIR} \
    > .codegen.log
npx eslint --fix src/*

function cleanup {
  rm -rf "${TEMP_DIR}"
  echo "Deleted temp deploy directory."
  echo "Don't forget to publish on Github and on NPM."
}

# When the script exits call cleanup function.
trap cleanup EXIT
