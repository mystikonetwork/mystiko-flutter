import 'dart:ffi';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/core/index.dart';
import 'package:fixnum/fixnum.dart';

DynamicLibrary createLibrary() {
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

String configPath(String fileName) {
  final dir = Directory.current.path;
  if (dir.endsWith('/test')) {
    return '$dir/files/$fileName';
  }
  return '$dir/test/files/$fileName';
}

Future<MystikoApi> defaultMystikoApi() async {
  MystikoApi mystikoApi = await Mystiko.getMystikoApi(createLibrary());
  return mystikoApi;
}

Future<GetAddressResponse> currentAddress() {
  return Future(() => GetAddressResponse(address: '0x1234567890'));
}

Future<SendTransactionResponse> sendTransaction(
    SendTransactionRequest request) {
  return Future(
      () => SendTransactionResponse(chainId: Int64(97), txHash: '0x123456'));
}

TransactionServiceClient createGrpcClient(int port) {
  final channel = ClientChannel('127.0.0.1',
      port: port,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));
  return TransactionServiceClient(channel,
      options: CallOptions(timeout: const Duration(seconds: 30)));
}
