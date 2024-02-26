import 'package:mystiko_flutter/mystiko_flutter.dart';

// ignore: always_use_package_imports
import 'ffi/stub.dart'
if (dart.library.io) 'ffi/io.dart'
if (dart.library.html) 'ffi/web.dart';

/// Flutter extensions for the MystikoInterface to make it easier to work with
extension FlutterMystikoInterface on MystikoInterface {
  Future<MystikoApi> mystikoApi() async {
    return getMystikoApi(createLibraryImpl());
  }

  Future<MystikoConfigApi> mystikoConfigApi() async {
    return getMystikoConfigApi(createLibraryImpl());
  }

  Future<MystikoAccountApi> mystikoAccountApi() async {
    return getMystikoAccountApi(createLibraryImpl());
  }

  Future<MystikoDepositApi> mystikoDepositApi() async {
    return getMystikoDepositApi(createLibraryImpl());
  }

  Future<MystikoScannerApi> mystikoScannerApi() async {
    return getMystikoScannerApi(createLibraryImpl());
  }

  Future<MystikoSpendApi> mystikoSpendApi() async {
    return getMystikoSpendApi(createLibraryImpl());
  }

  Future<MystikoSynchronizerApi> mystikoSynchronizerApi() async {
    return getMystikoSynchronizerApi(createLibraryImpl());
  }
}
