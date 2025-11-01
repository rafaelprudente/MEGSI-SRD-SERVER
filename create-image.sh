#!/bin/bash

mvn clean package -DskipTests

docker buildx build --platform linux/arm64,linux/amd64 -t srd-server:latest .