# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(mystiko_flutter_library VERSION 0.0.1 LANGUAGES C)

add_library(mystiko_flutter SHARED
  "mystiko_flutter.c"
)

set_target_properties(mystiko_flutter PROPERTIES
  PUBLIC_HEADER mystiko_flutter.h
  OUTPUT_NAME "mystiko_flutter"
)

target_compile_definitions(mystiko_flutter PUBLIC DART_SHARED_LIB)
