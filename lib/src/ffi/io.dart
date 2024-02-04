import 'dart:ffi';
import 'dart:io';

DynamicLibrary createLibraryImpl() {
  const base = 'mystiko_lib_bridge';

  if (Platform.isIOS || Platform.isMacOS) {
    return DynamicLibrary.open('$base.framework/$base');
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$base.dll');
  } else {
    return DynamicLibrary.open('lib$base.so');
  }
}