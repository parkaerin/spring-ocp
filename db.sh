#!/bin/bash

docker rm -f demodb

docker run -d --name demodb \
--network demo \
-p 30306:3306 \
-e MYSQL_USER=testuser \
-e MYSQL_ROOT_PASSWORD=rootpass \
-e MYSQL_DATABASE=testdb \
-e MYSQL_PASSWORD=testpass \
-v ~/spring-ocp/sql/:/docker-entrypoint-initdb.d/ \
mysql:5.7
