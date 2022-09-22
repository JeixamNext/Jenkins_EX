#!/bin/bash


echo "####################"
echo "## Subiendo image ##"
echo "####################"

IMAGE="maven-project"

echo "### Logging ###"
docker login -u $USER -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $USER/$IMAGE:$BUILD_TAG 
# $PASS pasar mediante export PASS=1234
# $IMAGE:$BUILD_TAG pasar mediante export
# $USER pasar mediante export
echo "*** Pushing image ***"
docker push $user/$IMAGE:$BUILD_TAG