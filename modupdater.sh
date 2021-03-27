#! /bin/bash

# This script is intended for use by the GitHub workflow file on the repository.
# It's not for the end-users and will fail if not used properly.

# STILL IN TETS MODE

# Make the directory and change to it
mkdir git-temp && cd git-temp

# Clone the source repository
git clone https://github.com/Spottedleaf/Starlight.git

# Change to the source repo dir
cd Starlight

# Build!
./gradlew build
