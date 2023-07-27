#!/bin/bash

echo "I am $(whoami)"

# Grab the java binary and put it in our path
wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.8%2B7/OpenJDK17U-jre_x64_linux_hotspot_17.0.8_7.tar.gz
# When transform the initial directory name into something static, to make it easier to work with
tar --gzip --transform 's,^[^/]+,jdk,x' --file OpenJDK17U-jre_x64_linux_hotspot_17.0.8_7.tar.gz
export PATH=$PWD/jdk/bin:$PATH
npx shadow-cljs release :main
