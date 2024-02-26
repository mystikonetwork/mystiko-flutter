import 'package:mystiko_dart/src/bridge_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

MystikoLibBridge createWrapperImpl(ExternalLibrary module) =>
    MystikoLibBridgeImpl.wasm(module);
