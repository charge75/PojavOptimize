#! /bin/bash

git clone git@github.com:gbl/AntiGhost.git
cd AntiGhost
git submodule init
git submodule update
gradle build
