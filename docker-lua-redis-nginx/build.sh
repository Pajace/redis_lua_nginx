#!/bin/bash

export AWS_ACCESS_KEY_ID=<YOUR_AWS_ACCESS_KEY>
export AWS_SECRET_ACCESS_KEY=<YOUR_AWS_SECRET_KEY>
export AWS_DEFAULT_REGION=<YOUR_AWS_DEFAULT_REGION>

$(aws ecr get-login)

TAG=$(date +%Y-%m-%d)-$(git rev-parse HEAD |  awk '{print substr($0,0,7)}')

# if there is any error, stop to upload docker images
test ${?} != "0" && exit 1

docker build -t lua_redis_nginx/static-web .

docker tag lua_redis_nginx/static-web:latest <YOUR_ECR_ADDRESS>/lua_redis_nginx/static-web:${TAG}

docker push <YOUR_ECR_ADDRESS>/lua_redis_nginx/static-web:${TAG}

echo ${TAG}