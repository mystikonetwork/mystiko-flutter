import 'package:mystiko_dart/mystiko_dart.dart';

abstract class MystikoApi {
  Future<Response<void, MystikoError>> initialize(MystikoOptions options);
  Future<bool> isInitialized();
  Future<void> destroy();
}
