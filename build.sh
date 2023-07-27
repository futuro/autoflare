#!/bin/bash

echo "I am $(whoami)"
apt-get install temurin-17-jdk
npx shadow-cljs release :main
