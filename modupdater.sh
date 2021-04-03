#! /bin/bash

# This script is intended for use by the GitHub workflow file on the repository.
# It's not for the end-users and will fail if not used properly.

# STILL IN TEST MODE
mkdir git-temp

# Starlight - SpottedLeaf
## Clone!
git clone https://github.com/SpottedLeaf/Starlight.git

## Build!
cd Starlight
chmod +x gradlew
./gradlew build

# Move the target jars out of the build directory
mv build/libs/starlight-fabric-*.jar ../..
