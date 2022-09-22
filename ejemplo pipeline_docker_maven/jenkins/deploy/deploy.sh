#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
echo $USER >> /tmp/.auth

# opt/prod lugar de la clave
# maquinaSSH.dominio es la maquina remota

scp -i /opt/prod /tmp/.auth maquinaSSH.dominio:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish maquinaSSH.dominio:/tmp/publish
ssh -i /opt/prod maquinaSSH.dominio "/tmp/publish"