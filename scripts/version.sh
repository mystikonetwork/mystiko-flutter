#!/bin/bash

CURR_VERSION=v`awk '/^version: /{print $2}' packages/mystiko_dart/pubspec.yaml`

# IOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/mystiko_flutter/ios/mystiko_flutter.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/mystiko_flutter/macos/mystiko_flutter.podspec
rm packages/mystiko_flutter/macos/*.bak packages/mystiko_flutter/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(MystikoFlutterVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/mystiko_flutter/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/mystiko_flutter/$CMAKE_PLATFORM/*.bak
done

git add packages/mystiko_flutter/
