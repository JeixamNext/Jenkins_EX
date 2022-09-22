#!/bin/bash

# copiar el nuevo jar en la build location
cp -f java-app/target/*.jar jenkins/build/

echo "################################"
echo "### construyendo Docker Image ###"
echo "################################"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache