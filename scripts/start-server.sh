#!/bin/bash

echo "----------서버 시작----------"
cd /home/ubuntu/dummy-server

set -a
source /home/ubuntu/dummy-server/.env
set +a

sudo docker pull $AWS_ECR_IMAGE_URL
sudo docker compose down || true
sudo docker compose up -d --build
echo "----------서버 시작 완료----------"