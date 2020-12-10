#!/usr/bin/env bash

STACK_NAME=$1
STACK_INFO=$2

if ! aws cloudformation describe-stacks --stack-name ${STACK_NAME} ; then
  echo -e "stack does not exist. creating stack"
  aws cloudformation create-stack \
    --stack-name ${STACK_NAME} \
    --template-body file://./cypress-docker.yml \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameters ${STACK_INFO}

  echo -e "waiting for stack to be created"
  aws cloudformation wait stack-create-complete \
    --stack-name ${STACK_NAME}

else
  echo -e "stack exists. attempting update"
  aws cloudformation update-stack \
    --stack-name ${STACK_NAME} \
    --template-body file://./cypress-docker.yml \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameters ${STACK_INFO}

  echo -e "waiting for stack updated to be completed"
  aws cloudformation wait stack-update-complete \
    --stack-name ${STACK_NAME}
fi

echo "Getting Stack-Outputs..."
aws cloudformation describe-stacks --stack-name ${STACK_NAME}