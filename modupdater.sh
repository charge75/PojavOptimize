#! /bin/bash

# This script is intended for use by the GitHub workflow file on the repository.
# It's not for the end-users and will fail if not used properly.

# STILL IN TETS MODE
$VERSION

# Build!
cd git-temp/Starlight
chmod +x gradlew
./gradlew build

# Move the target jars out of the build directory
mv build/libs/starlight-fabric-$VERSION-$SHA.jar ../../starlight.jar
