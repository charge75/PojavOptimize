#! /bin/bash

# This script is intended for use by the GitHub workflow file on the repository.
# It's not for the end-users and will fail if not used properly.

# STILL IN TEST MODE
mkdir git-temp
cd git-temp

# Oh, boy. 
#git clone https://github.com/shedaniel/SmoothScrollingEverywhere.git
#git clone https://github.com/gbl/AntiGhost.git
git clone https://github.com/architectury/architectury-api.git
#git clone https://github.com/TheIllusiveC4/Bedspreads.git
#git clone https://github.com/CaelTheColher/Capes.git
git clone https://github.com/shedaniel/cloth-config.git
#git clone https://github.com/kvverti/colormatic.git
#git clone https://github.com/TeamMidnightDust/CullLeaves.git
#git clone https://github.com/Setadokalo/custom-fog.git
#git clone https://github.com/FabricMC/fabric.git
#git clone https://github.com/FabricMC/fabric-language-kotlin.git
git clone https://github.com/FakeDomi/FastChest.git
git clone https://github.com/malte0811/FerriteCore.git
#git clone https://github.com/CaffeineMC/hydrogen-fabric.git
#git clone https://github.com/comp500/Indium.git
#git clone https://github.com/comp500/Jumploader.git
git clone https://github.com/astei/krypton.git
#git clone https://github.com/LambdAurora/LambDynamicLights.git
#git clone https://github.com/astei/lazydfu.git
#git clone https://github.com/CaffeineMC/lithium-fabric.git
git clone https://github.com/maruohon/malilib.git
git clone https://github.com/TerraformersMC/ModMenu.git
#git clone https://github.com/UltimateBoomer/mc-no-fade.git
#git clone https://github.com/natanfudge/Not-Enough-Crashes.git
#git clone https://github.com/joaoh1/OkZoomer.git
#git clone https://github.com/haykam821/Raised-Clouds.git
git clone https://github.com/shedaniel/slight-gui-modifications.git
#git clone https://github.com/UltimateBoomer/mc-smoothboot.git
#git clone https://github.com/CaffeineMC/sodium-fabric.git
#git clone https://github.com/Spottedleaf/Starlight.git

# Architectury
cd architectury-api
chmod +x gradlew
#sed -i "4s/https/http/" settings.gradle
./gradlew build --debug
cd ..

# cloth-config
#cd cloth-config
#chmod +x gradlew
#./gradlew build
#cd ..

# FastChest
#cd FastChest
#chmod +x gradlew
#./gradlew build
#cd ..

# FerriteCore
#cd FerriteCore
#chmod +x gradlew
#./gradlew build
#cd ..

# krypton
#cd krypton
#chmod +x gradlew
#./gradlew build
#cd ..

# malilib
#cd malilib
#chmod +x gradlew
#./gradlew build
#cd ..

# ModMenu
#cd ModMenu
#chmod +x gradlew
#./gradlew build
#cd ..

# slight-gui-modifications
#cd slight-gui-modifications
#chmod +x gradlew
#./gradlew build
#cd ..

cd ..
mkdir holdemformeplease
mv $(find git-temp/*/build/libs -name '*.jar' -a ! -name '*-sources-dev.jar' ! -name '*-sources.jar' ! -name '*-dev.jar' ! -name '*-api.jar' | cut -b 1-100) holdemformeplease
