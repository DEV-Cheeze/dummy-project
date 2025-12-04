#!/bin/bash

echo "----------서버 시작----------"
cd /home/ubuntu/dummy-server
sudo fuser -k -n tcp 8080 || true
nohup java -jar project.jar
echo "----------서버 시작 완료----------"