#!/bin/bash
docker compose stop
docker rm mz-app-web-1
docker rm mz-app-app-1
docker rm mz-app-db-1
docker rmi mz-app-app:latest
