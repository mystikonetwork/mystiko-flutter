import 'package:mystiko_lib_bridge/mystiko_lib_bridge.dart';

import 'ffi/stub.dart'
    if (dart.library.io) 'ffi/io.dart'
    if (dart.library.html) 'ffi/web.dart';

Future<MystikoLibBridge> createLib(MystikoDartOptions options) =>
    MystikoLibBridge.create(options);
