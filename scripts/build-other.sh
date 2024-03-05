#!/bin/bash

# Setup
BUILD_DIR=platform-build
mkdir $BUILD_DIR
cd $BUILD_DIR || exit

cross_build () {
  local TARGET="$1"
  local PLATFORM_NAME="$2"
  local LIB_NAME="$3"
  cross build --target "$TARGET" -r
  mkdir "$PLATFORM_NAME"
  cp "../target/$TARGET/release/$LIB_NAME" "$PLATFORM_NAME/"
}

# Build for linux
LINUX_LIB_NAME=libmystiko_lib_bridge.so
cross_build x86_64-unknown-linux-gnu linux-x64 $LINUX_LIB_NAME
cross_build aarch64-unknown-linux-gnu linux-arm64 $LINUX_LIB_NAME

# Build for windows
WINDOWS_LIB_NAME=mystiko_lib_bridge.dll
cross_build x86_64-pc-windows-gnu windows-x64 $WINDOWS_LIB_NAME

# Archive the dynamic libs
tar -czvf mystiko_lib_bridge-other.tar.gz linux-* windows-*

# Cleanup
rm -rf linux-* windows-*