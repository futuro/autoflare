#!/bin/bash

echo "I am $(whoami)"
# Does buildbot have sudo privileges?
sudo apt-get install temurin-17-jdk
npx shadow-cljs release :main
