import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/synchronizer/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/synchronizer/index.dart';

export 'package:mystiko_protos_dart/mystiko/api/synchronizer/index.dart';
export 'package:mystiko_protos_dart/mystiko/core/synchronizer/index.dart';

@internal
class MystikoSynchronizerImpl extends MystikoSynchronizerApi {
  MystikoSynchronizerImpl(this.bridge);

  final MystikoLibBridge bridge;

  @override
  Future<Response<Int64, SynchronizerError>> chainSyncedBlock(
      Int64 chainId) async {
    ChainSyncedBlockRequest request = ChainSyncedBlockRequest(chainId: chainId);
    Uint8List buffer =
        await bridge.chainSyncedBlock(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ChainSyncedBlockResponse.fromBuffer(data).result);
  }

  @override
  Future<Response<Int64, SynchronizerError>> contractSyncedBlock(
      Int64 chainId, String contractAddress) async {
    ContractSyncedBlockRequest request = ContractSyncedBlockRequest(
        chainId: chainId, contractAddress: contractAddress);
    Uint8List buffer =
        await bridge.contractSyncedBlock(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ContractSyncedBlockResponse.fromBuffer(data).result);
  }

  @override
  Future<Response<void, SynchronizerError>> reset(ResetOptions options) async {
    ResetRequest request = ResetRequest(options: options);
    Uint8List buffer =
        await bridge.synchronizerReset(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<SynchronizerStatus, SynchronizerError>> status(
      bool withContracts) async {
    StatusRequest request = StatusRequest(withContracts: withContracts);
    Uint8List buffer = await bridge.status(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => StatusResponse.fromBuffer(data).status);
  }

  @override
  Future<Response<SynchronizerStatus, SynchronizerError>> sync(
      SyncOptions options) async {
    SyncRequest request = SyncRequest(options: options);
    Uint8List buffer =
        await bridge.synchronizerSync(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => StatusResponse.fromBuffer(data).status);
  }
}
