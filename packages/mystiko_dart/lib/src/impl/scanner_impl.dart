import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

@internal
class MystikoScannerImpl extends MystikoScannerApi {
  MystikoScannerImpl(this.bridge);

  final MystikoLibBridge bridge;

  @override
  Future<Response<List<AssetsByChain>, ScannerError>> assets(
      AssetsOptions options) async {
    AssetsRequest request = AssetsRequest(options: options);
    Uint8List buffer = await bridge.assets(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => AssetsResponse.fromBuffer(data).results);
  }

  @override
  Future<Response<BalanceResult, ScannerError>> balance(
      BalanceOptions options) async {
    BalanceRequest request = BalanceRequest(options: options);
    Uint8List buffer = await bridge.balance(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => BalanceResponse.fromBuffer(data).result);
  }

  @override
  Future<Response<AssetsByChain, ScannerError>> chainAssets(
      Int64 chainId, AssetsOptions options) async {
    ChainAssetsRequest request =
        ChainAssetsRequest(chainId: chainId, options: options);
    Uint8List buffer =
        await bridge.chainAssets(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ChainAssetsResponse.fromBuffer(data).result);
  }

  @override
  Future<Response<ScannerResetResult, ScannerError>> reset(
      ScannerResetOptions options) async {
    ScannerResetRequest request = ScannerResetRequest(options: options);
    Uint8List buffer =
        await bridge.scannerReset(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ScannerResetResponse.fromBuffer(data).result);
  }

  @override
  Future<Response<ScannerScanResult, ScannerError>> scan(
      ScannerScanOptions options) async {
    ScannerScanRequest request = ScannerScanRequest(options: options);
    Uint8List buffer =
        await bridge.scannerScan(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ScannerScanResponse.fromBuffer(data).result);
  }

  @override
  Future<Response<AssetImportResult, ScannerError>> importAssets(
      AssetImportOptions options) async {
    ScannerAssetImportRequest request =
        ScannerAssetImportRequest(options: options);
    Uint8List buffer =
        await bridge.assetsImport(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ScannerAssetImportResponse.fromBuffer(data).result);
  }

  @override
  Future<Response<ScannerSyncResult, ScannerError>> sync(
      ScannerSyncOptions options) async {
    ScannerSyncRequest request = ScannerSyncRequest(options: options);
    Uint8List buffer =
        await bridge.scannerSync(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ScannerSyncResponse.fromBuffer(data).result);
  }
}
