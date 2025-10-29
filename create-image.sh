#!/bin/bash

mvn clean package -DskipTests

docker buildx build -t srd-server:latest .