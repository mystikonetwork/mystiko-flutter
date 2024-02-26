import 'package:mystiko_dart/mystiko_dart.dart';

// ignore: directives_ordering
import 'package:mystiko_dart/src/ffi/stub.dart'
    if (dart.library.io) 'package:mystiko_dart/src/ffi/io.dart'
    if (dart.library.html) 'package:mystiko_dart/src/ffi/web.dart';
import 'package:mystiko_dart/src/impl/config_impl.dart';
import 'package:mystiko_dart/src/impl/mystiko_impl.dart';

import 'impl/account_impl.dart';
import 'impl/deposit_impl.dart';
import 'impl/scanner_impl.dart';
import 'impl/spend_impl.dart';
import 'impl/synchronizer_impl.dart';

/// The exposed API to interact with mystiko
// ignore: non_constant_identifier_names
final Mysitko = MystikoInterface._();

/// The interface of the API to interact with mysitko_lib_bridge
class MystikoInterface {
  // This class should only ever be instantiated *once*, so private constructor
  MystikoInterface._();

  MystikoLibBridge? _bridge;

  /// Creates a MystikoApi from the given [library]
  ///
  /// [library] is a WasmModule on web & a DynamicLibrary on dart:io platforms.
  /// [library] is used to create the internal ffi object
  /// that is used to call the Rust APIs.
  Future<MystikoApi> getMystikoApi(ExternalLibrary library) async {
    _bridge ??= createWrapperImpl(library);
    return MystikoImpl(_bridge!);
  }

  /// Creates a MystikoConfigApi from the given [library]
  ///
  /// [library] is a WasmModule on web & a DynamicLibrary on dart:io platforms.
  /// [library] is used to create the internal ffi object
  /// that is used to call the Rust APIs.
  Future<MystikoConfigApi> getMystikoConfigApi(ExternalLibrary library) async {
    _bridge ??= createWrapperImpl(library);
    return MystikoConfigImpl(_bridge!);
  }

  /// Creates a MystikoAccountApi from the given [library]
  ///
  /// [library] is a WasmModule on web & a DynamicLibrary on dart:io platforms.
  /// [library] is used to create the internal ffi object
  /// that is used to call the Rust APIs.
  Future<MystikoAccountApi> getMystikoAccountApi(
      ExternalLibrary library) async {
    _bridge ??= createWrapperImpl(library);
    return MystikoAccountImpl(_bridge!);
  }

  /// Creates a MystikoDepositApi from the given [library]
  ///
  /// [library] is a WasmModule on web & a DynamicLibrary on dart:io platforms.
  /// [library] is used to create the internal ffi object
  /// that is used to call the Rust APIs.
  Future<MystikoDepositApi> getMystikoDepositApi(
      ExternalLibrary library) async {
    _bridge ??= createWrapperImpl(library);
    return MystikoDepositImpl(_bridge!);
  }

  /// Creates a MystikoScannerApi from the given [library]
  ///
  /// [library] is a WasmModule on web & a DynamicLibrary on dart:io platforms.
  /// [library] is used to create the internal ffi object
  /// that is used to call the Rust APIs.
  Future<MystikoScannerApi> getMystikoScannerApi(
      ExternalLibrary library) async {
    _bridge ??= createWrapperImpl(library);
    return MystikoScannerImpl(_bridge!);
  }

  /// Creates a MystikoSpendApi from the given [library]
  ///
  /// [library] is a WasmModule on web & a DynamicLibrary on dart:io platforms.
  /// [library] is used to create the internal ffi object
  /// that is used to call the Rust APIs.
  Future<MystikoSpendApi> getMystikoSpendApi(ExternalLibrary library) async {
    _bridge ??= createWrapperImpl(library);
    return MystikoSpendImpl(_bridge!);
  }

  /// Creates a MystikoSynchronizerApi from the given [library]
  ///
  /// [library] is a WasmModule on web & a DynamicLibrary on dart:io platforms.
  /// [library] is used to create the internal ffi object
  /// that is used to call the Rust APIs.
  Future<MystikoSynchronizerApi> getMystikoSynchronizerApi(
      ExternalLibrary library) async {
    _bridge ??= createWrapperImpl(library);
    return MystikoSynchronizerImpl(_bridge!);
  }
}
