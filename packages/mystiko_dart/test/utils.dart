import 'dart:ffi';
import 'dart:io';

import 'package:mystiko_dart/mystiko_dart.dart';

DynamicLibrary useLibrary() {
  final dir = Directory.current.parent.parent.path;
  const libName = 'mystiko_lib_bridge';
  final libPrefix = {
    Platform.isWindows: '',
    Platform.isMacOS: 'lib',
    Platform.isLinux: 'lib',
  }[true]!;
  final libSuffix = {
    Platform.isWindows: 'dll',
    Platform.isMacOS: 'dylib',
    Platform.isLinux: 'so',
  }[true]!;
  final dylibPath = '$dir/target/release/$libPrefix$libName.$libSuffix';
  return DynamicLibrary.open(dylibPath);
}

Future<MystikoConfigApi> useConfig() {
  final lib = useLibrary();
  return Mysitko.getMystikoConfigApi(lib);
}
