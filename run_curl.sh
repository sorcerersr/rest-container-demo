#!/bin/env sh

echo "calling java-spring-demo endpoint"
curl -fsSL http://localhost:8080/hello

echo -e "\n\ncalling python-demo endpoint"
curl -fsSL http://localhost:8081/hello

echo -e "\n\ncalling go-demo endpoint"
curl -fsSL http://localhost:8082/hello  

echo -e "\n\ncalling rust-demo endpoint"
curl -fsSL http://localhost:8083/hello 

echo -e "\n\ncalling v-demo endpoint"
curl -fsSL http://localhost:8084/hello

echo -e "\n\ncalling node-demo endpoint"
curl -fsSL http://localhost:8085/hello

echo -e "\n\ncalling java-quarkus-demo endpoint"
curl -fsSL http://localhost:8086/hello
