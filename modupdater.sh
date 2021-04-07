#! /bin/bash

# This script is intended for use by the GitHub workflow file on the repository.
# It's not for the end-users and will fail if not used properly.

# STILL IN TEST MODE
mkdir git-temp
cd git-temp

# Oh, boy. 
git clone https://github.com/shedaniel/SmoothScrollingEverywhere.git
git clone https://github.com/gbl/AntiGhost.git
git clone https://github.com/architectury/architectury-api.git
git clone https://github.com/TheIllusiveC4/Bedspreads.git
git clone https://github.com/CaelTheColher/Capes.git
git clone https://github.com/shedaniel/cloth-config.git
git clone https://github.com/kvverti/colormatic.git
git clone https://github.com/TeamMidnightDust/CullLeaves.git
git clone https://github.com/Setadokalo/custom-fog.git
git clone https://github.com/FabricMC/fabric.git
git clone https://github.com/FabricMC/fabric-language-kotlin.git
git clone https://github.com/FakeDomi/FastChest.git
git clone https://github.com/malte0811/FerriteCore.git
git clone https://github.com/CaffeineMC/hydrogen-fabric.git
git clone https://github.com/comp500/Indium.git
git clone https://github.com/comp500/Jumploader.git
git clone https://github.com/astei/krypton.git
git clone https://github.com/LambdAurora/LambDynamicLights.git
git clone https://github.com/astei/lazydfu.git
git clone https://github.com/CaffeineMC/lithium-fabric.git
git clone https://github.com/maruohon/malilib.git
git clone https://github.com/TerraformersMC/ModMenu.git
git clone https://github.com/UltimateBoomer/mc-no-fade.git
git clone https://github.com/natanfudge/Not-Enough-Crashes.git
git clone https://github.com/joaoh1/OkZoomer.git
git clone https://github.com/haykam821/Raised-Clouds.git
git clone https://github.com/shedaniel/slight-gui-modifications.git
git clone https://github.com/UltimateBoomer/mc-smoothboot.git
git clone https://github.com/CaffeineMC/sodium-fabric.git
git clone https://github.com/Spottedleaf/Starlight.git

# SmoothScrollingEverywhere
cd SmoothScrollingEverywhere
chmod +x gradlew
./gradlew build
cd ..

# AntiGhost
cd AntiGhost
git submodule init
git submodule update
sed -i "102s/.*/ /" build.gradle
sed -i "103s/.*/ /" build.gradle
sed -i "104s/.*/ /" build.gradle
sed -i "105s/.*/ /" build.gradle
sed -i "106s/.*/ /" build.gradle
sed -i "107s/.*/ /" build.gradle
sed -i "108s/.*/ /" build.gradle
sed -i "109s/.*/ /" build.gradle
sed -i "110s/.*/ /" build.gradle
sed -i "111s/.*/ /" build.gradle
sed -i "112s/.*/ /" build.gradle
sed -i "113s/.*/ /" build.gradle
sed -i "114s/.*/ /" build.gradle
sed -i "115s/.*/ /" build.gradle
sed -i "116s/.*/ /" build.gradle
sed -i "117s/.*/ /" build.gradle
sed -i "118s/.*/ /" build.gradle
sed -i "119s/.*/ /" build.gradle
sed -i "120s/.*/ /" build.gradle
sed -i "121s/.*/ /" build.gradle
sed -i "122s/.*/ /" build.gradle
gradle build
cd ..

# Architectury
cd architectury-api
chmod +x gradlew
./gradlew build
cd ..

# BedSpreads
cd Bedspreads
chmod +x gradlew
./gradlew build
cd ..

# Capes
cd Capes
chmod +x gradlew
./gradlew build
cd ..

# cloth-config
cd cloth-config
chmod +x gradlew
./gradlew build
cd ..

# colormatic
cd colormatic
chmod +x gradlew
./gradlew build
cd ..

# CullLeaves
cd CullLeaves
chmod +x gradlew
./gradlew build
cd ..

# custom-fog
cd custom-fog
chmod +x gradlew
./gradlew build
cd ..

# fabric
cd fabric
chmod +x gradlew
./gradlew build
cd ..

# fabric-language-kotlin
cd fabric-language-kotlin
chmod +x gradlew
./gradlew build
cd ..

# FastChest
cd FastChest
chmod +x gradlew
./gradlew build
cd ..

# FerriteCore
cd FerriteCore
chmod +x gradlew
./gradlew build
cd ..

# hydrogen-fabric
cd hydrogen-fabric
chmod +x gradlew
./gradlew build
cd ..

# Indium
cd Indium
chmod +x gradlew
./gradlew build
cd ..

# Jumploader
cd Jumploader
chmod +x gradlew
./gradlew build
cd ..

# krypton
cd krypton
chmod +x gradlew
./gradlew build
cd ..

# LambDynamicLights
cd LambDynamicLights
chmod +x gradlew
./gradlew build
cd ..

# lazydfu
cd lazydfu
chmod +x gradlew
./gradlew build
cd ..

# lithium-fabric
cd lithium-fabric
chmod +x gradlew
./gradlew build
cd ..

# malilib
cd malilib
chmod +x gradlew
./gradlew build
cd ..

# ModMenu
cd ModMenu
chmod +x gradlew
./gradlew build
cd ..

# mc-no-fade
cd mc-no-fade
chmod +x gradlew
./gradlew build
cd ..

# Not-Enough-Crashes
cd Not-Enough-Crashes
chmod +x gradlew
./gradlew build
cd ..

# OkZoomer
cd OkZoomer
chmod +x gradlew
./gradlew build
cd ..

# Raised-Clouds
cd Raised-Clouds
gradle build

# slight-gui-modifications
cd slight-gui-modifications
chmod +x gradlew
./gradlew build
cd ..

# mc-smoothboot
cd mc-smoothboot
chmod +x gradlew
./gradlew build
cd ..

# sodium-fabric
cd sodium-fabric
chmod +x gradlew
./gradlew build
cd ..

# Starlight
cd Starlight
chmod +x gradlew
./gradlew build
cd ..

cd ..
mkdir holdemformeplease
mv $(find git-temp/*/build/libs -name '*.jar' -a ! -name '*-sources-dev.jar' ! -name '*-sources.jar' ! -name '*-dev.jar' | cut -b 1-100) holdemformeplease
