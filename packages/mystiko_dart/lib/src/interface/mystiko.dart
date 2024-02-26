import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/index.dart';

abstract class MystikoApi {
  Future<Response<void, MystikoError>> initialize(MystikoOptions options);
  Future<bool> isInitialized();
  Future<void> destroy();
}