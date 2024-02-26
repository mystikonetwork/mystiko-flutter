import 'package:fixnum/fixnum.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/synchronizer/index.dart';

abstract class MystikoSynchronizerApi {
  Future<Response<Int64, SynchronizerError>> chainSyncedBlock(Int64 chainId);

  Future<Response<Int64, SynchronizerError>> contractSyncedBlock(
      Int64 chainId, String contractAddress);

  Future<Response<SynchronizerStatus, SynchronizerError>> status(
      bool withContracts);

  Future<Response<SynchronizerStatus, SynchronizerError>> sync(
      SyncOptions options);

  Future<Response<void, SynchronizerError>> reset(ResetOptions options);
}
