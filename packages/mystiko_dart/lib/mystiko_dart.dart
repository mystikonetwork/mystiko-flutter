/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

// Rust FFI related
export 'package:flutter_rust_bridge/flutter_rust_bridge.dart' show WasmModule;
export 'src/bridge_generated.dart';

// Dart API related
export 'src/interface.dart';
export 'src/interface/config.dart';
export 'src/interface/mystiko.dart';
export 'src/interface/account.dart';
export 'src/interface/deposit.dart';
export 'src/interface/scanner.dart';
export 'src/interface/spend.dart';
export 'src/interface/synchronizer.dart';

export 'src/common/response.dart';
