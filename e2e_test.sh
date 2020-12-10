#!/bin/bash

# exit when any command fails

SUCCESS="\033[0;32m"
FAILURE="\033[0;31m"
NOCOLOR="\033[0m"

echo "starting e2e tests..."
docker-compose -f ./e2e/docker-compose.yml up --build --exit-code-from cypress


# check exit-code of docker-run
if [ $? -eq 0 ]
then
  echo "${SUCCESS}Successfully ran tests. Everything ready to go${NOCOLOR}"
  true #
else
  echo "${FAILURE}Tests failed. See logs for detailed info${NOCOLOR}"
  false
fi
