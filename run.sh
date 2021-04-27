#!/bin/bash

docker rm -f demoapp
docker run --network demo -d -e MYSQL_USER=testuser -e MYSQL_PASSWORD=testpass -p 8080:8080 --name demoapp demoapp
