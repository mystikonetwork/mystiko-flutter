import 'package:meta/meta.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

@internal
WasmModule createLibraryImpl() {
  // Web is currently not supported. If we support web in the future, see:
  // https://github.com/fzyzcjy/flutter_rust_bridge/blob/master/frb_example/with_flutter/lib/ffi.web.dart
  throw UnsupportedError('Web support is not provided yet.');
}
