set(MystikoFlutterVersion "v0.1.0") # generated; do not edit

# TODO Remove this workaround once Flutter supports Windows ARM.
# https://github.com/flutter/flutter/issues/116196
set(FLUTTER_TARGET_PLATFORM windows-x64)

# The Flutter tooling requires that developers have a version of Visual Studio
# installed that includes CMake 3.14 or later. You should not increase this
# version, as doing so will cause the plugin to fail to compile for some
# customers of the plugin.
cmake_minimum_required(VERSION 3.14)

# Project-level configuration.
set(PROJECT_NAME "mystiko_flutter")
project(${PROJECT_NAME} LANGUAGES CXX)

# Download the binaries if they are not already present.
set(MystikoLibBridgeLibRoot "${CMAKE_CURRENT_SOURCE_DIR}/${MystikoFlutterVersion}")
set(MystikoLibBridgeArchivePath "${MystikoLibBridgeLibRoot}.tar.gz")
if(NOT EXISTS ${MystikoLibBridgeArchivePath})
  file(DOWNLOAD
    "https://static.mystiko.network/lib/mystiko_dart/${MystikoFlutterVersion}/mystiko_lib_bridge-other.tar.gz"
    ${MystikoLibBridgeArchivePath}
    TLS_VERIFY ON
  )
endif()

# Extract the binaries, overriding any already present.
file(REMOVE_RECURSE ${MystikoLibBridgeLibRoot})
file(MAKE_DIRECTORY ${MystikoLibBridgeLibRoot})
execute_process(
  COMMAND ${CMAKE_COMMAND} -E tar xzf ${MystikoLibBridgeArchivePath}
  WORKING_DIRECTORY ${MystikoLibBridgeLibRoot}
)

# List of absolute paths to libraries that should be bundled with the plugin.
# This list could contain prebuilt libraries, or libraries created by an
# external build triggered from this build file.
set(mystiko_flutter_bundled_libraries
  "${MystikoLibBridgeLibRoot}/${FLUTTER_TARGET_PLATFORM}/mystiko_lib_bridge.dll"
  PARENT_SCOPE
)
