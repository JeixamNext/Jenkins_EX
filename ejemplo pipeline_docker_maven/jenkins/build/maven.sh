#!/bin/bash

echo "###################################################################"
echo " ** contruyendo jar ************* "
echo "###################################################################"
echo "recuerde pasar el parametro mvn -B ***lo que sea***"


docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"