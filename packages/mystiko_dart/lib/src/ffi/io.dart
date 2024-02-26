import 'dart:ffi';

import 'package:mystiko_dart/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

MystikoLibBridge createWrapperImpl(ExternalLibrary dylib) =>
    MystikoLibBridgeImpl(dylib);
