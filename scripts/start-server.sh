#!/bin/bash

echo "----------서버 시작----------"
cd /home/ubuntu/dummy-server
sudo docker compose down || true
sudo docker compose up -d --build
echo "----------서버 시작 완료----------"