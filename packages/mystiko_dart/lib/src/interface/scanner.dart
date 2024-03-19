import 'package:fixnum/fixnum.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

abstract class MystikoScannerApi {
  Future<Response<ScanResult, ScannerError>> scan(ScanOptions options);

  Future<Response<ResetResult, ScannerError>> reset(
      ScannerResetOptions options);

  Future<Response<BalanceResult, ScannerError>> balance(BalanceOptions options);

  Future<Response<List<AssetsByChain>, ScannerError>> assets(
      AssetsOptions options);

  Future<Response<AssetsByChain, ScannerError>> chainAssets(
      Int64 chainId, AssetsOptions options);
}
