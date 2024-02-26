import 'package:mystiko_dart/src/bridge_generated.dart';

/// Represents the external library for mystiko_lib_bridge
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

MystikoLibBridge createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();
