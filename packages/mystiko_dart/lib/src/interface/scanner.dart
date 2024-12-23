import 'package:fixnum/fixnum.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

abstract class MystikoScannerApi {
  Future<Response<ScannerScanResult, ScannerError>> scan(
      ScannerScanOptions options);

  Future<Response<ScannerResetResult, ScannerError>> reset(
      ScannerResetOptions options);

  Future<Response<BalanceResult, ScannerError>> balance(BalanceOptions options);

  Future<Response<List<AssetsByChain>, ScannerError>> assets(
      AssetsOptions options);

  Future<Response<AssetsByChain, ScannerError>> chainAssets(
      Int64 chainId, AssetsOptions options);

  Future<Response<AssetImportResult, ScannerError>> importAssets(
      AssetImportOptions options);

  Future<Response<BalanceResult, ScannerError>> sync(
      ScannerSyncOptions options);
}
