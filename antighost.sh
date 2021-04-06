#! /bin/bash

git clone https://github.com/gbl/AntiGhost.git
cd AntiGhost
git submodule init
git submodule update
gradle build
