import 'package:fixnum/fixnum.dart' as $fixnum;

import 'package:mystiko_dart/mystiko_dart.dart';

abstract class MystikoConfigApi {
  Future<Response<MystikoConfig, ConfigError>> get();

  Future<Response<CircuitConfig, ConfigError>> findDefaultCircuit(
      CircuitType circuitType);

  Future<Response<CircuitConfig, ConfigError>> findCircuit(String circuitName);

  Future<Response<ChainConfig, ConfigError>> findChain($fixnum.Int64 chainId);

  Future<Response<List<ChainConfig>, ConfigError>> findPeerChains(
      $fixnum.Int64 chainId);

  Future<Response<List<String>, ConfigError>> findAssetSymbols(
      $fixnum.Int64 chainId, $fixnum.Int64 peerChainId);

  Future<Response<List<BridgeType>, ConfigError>> findBridges(
      $fixnum.Int64 chainId, $fixnum.Int64 peerChainId, String assetSymbol);

  Future<Response<BridgeConfig, ConfigError>> findBridge(BridgeType bridgeType);

  Future<Response<DepositContractConfig, ConfigError>> findDepositContract(
      $fixnum.Int64 chainId,
      $fixnum.Int64 peerChainId,
      String assetSymbol,
      BridgeType bridgeType);

  Future<Response<DepositContractConfig, ConfigError>>
      findDepositContractByAddress($fixnum.Int64 chainId, String address);

  Future<Response<PoolContractConfig, ConfigError>> findPoolContract(
    $fixnum.Int64 chainId,
    String assetSymbol,
    BridgeType bridgeType,
    int version,
  );

  Future<Response<List<PoolContractConfig>, ConfigError>> findPoolContracts(
      $fixnum.Int64 chainId, String assetSymbol, BridgeType bridgeType);

  Future<Response<PoolContractConfig, ConfigError>> findPoolContractByAddress(
      $fixnum.Int64 chainId, String address);

  Future<Response<ContractConfig, ConfigError>> findContractByAddress(
      $fixnum.Int64 chainId, String address);

  Future<Response<String, ConfigError>> getTransactionUrl(
      $fixnum.Int64 chainId, String txHash);

  Future<Response<List<String>, ConfigError>> supportedAssetSymbols(
      $fixnum.Int64 chainId);
}
