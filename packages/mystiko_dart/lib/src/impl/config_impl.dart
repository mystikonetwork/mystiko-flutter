import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:mystiko_dart/src/common/response.dart';
import 'package:mystiko_dart/src/interface/config.dart';

import 'package:mystiko_dart/src/bridge_generated.dart';
import 'package:mystiko_protos_dart/mystiko/api/config/index.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/common/index.dart';
import 'package:mystiko_protos_dart/mystiko/config/bridge/index.dart';
import 'package:mystiko_protos_dart/mystiko/config/contract/index.dart';
import 'package:mystiko_protos_dart/mystiko/config/index.dart';

import 'package:fixnum/fixnum.dart' as $fixnum;

@internal
class MystikoConfigImpl extends MystikoConfigApi {
  MystikoConfigImpl(this.bridge);

  final MystikoLibBridge bridge;

  @override
  Future<Response<MystikoConfig, ConfigError>> get() async {
    Uint8List buffer = await bridge.getConfig();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => GetConfigResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<List<String>, ConfigError>> findAssetSymbols(
      $fixnum.Int64 chainId, $fixnum.Int64 peerChainId) async {
    FindAssetSymbolsRequest request =
        FindAssetSymbolsRequest(chainId: chainId, peerChainId: peerChainId);
    Uint8List buffer =
        await bridge.findAssetSymbols(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindAssetSymbolsResponse.fromBuffer(data).assetSymbol);
  }

  @override
  Future<Response<BridgeConfig, ConfigError>> findBridge(
      BridgeType bridgeType) async {
    FindBridgeRequest request = FindBridgeRequest(bridgeType: bridgeType);
    Uint8List buffer =
        await bridge.findBridge(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindBridgeResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<List<BridgeType>, ConfigError>> findBridges(
      $fixnum.Int64 chainId,
      $fixnum.Int64 peerChainId,
      String assetSymbol) async {
    FindBridgesRequest request = FindBridgesRequest(
        chainId: chainId, peerChainId: peerChainId, assetSymbol: assetSymbol);
    Uint8List buffer =
        await bridge.findBridges(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindBridgesResponse.fromBuffer(data).bridgeType);
  }

  @override
  Future<Response<ChainConfig, ConfigError>> findChain(
      $fixnum.Int64 chainId) async {
    FindChainRequest request = FindChainRequest(chainId: chainId);
    Uint8List buffer = await bridge.findChain(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindChainResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<CircuitConfig, ConfigError>> findCircuit(
      String circuitName) async {
    FindCircuitRequest request = FindCircuitRequest(circuitName: circuitName);
    Uint8List buffer =
        await bridge.findCircuit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindCircuitResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<ContractConfig, ConfigError>> findContractByAddress(
      $fixnum.Int64 chainId, String address) async {
    FindContractByAddressRequest request =
        FindContractByAddressRequest(chainId: chainId, address: address);
    Uint8List buffer =
        await bridge.findContractByAddress(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindContractByAddressResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<CircuitConfig, ConfigError>> findDefaultCircuit(
      CircuitType circuitType) async {
    FindDefaultCircuitRequest request =
        FindDefaultCircuitRequest(circuitType: circuitType);
    Uint8List buffer =
        await bridge.findDefaultCircuit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindDefaultCircuitResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<DepositContractConfig, ConfigError>> findDepositContract(
      $fixnum.Int64 chainId,
      $fixnum.Int64 peerChainId,
      String assetSymbol,
      BridgeType bridgeType) async {
    FindDepositContractRequest request = FindDepositContractRequest(
      chainId: chainId,
      peerChainId: peerChainId,
      assetSymbol: assetSymbol,
      bridgeType: bridgeType,
    );
    Uint8List buffer =
        await bridge.findDepositContract(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindDepositContractResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<DepositContractConfig, ConfigError>>
      findDepositContractByAddress(
          $fixnum.Int64 chainId, String address) async {
    FindDepositContractByAddressRequest request =
        FindDepositContractByAddressRequest(chainId: chainId, address: address);
    Uint8List buffer = await bridge.findDepositContractByAddress(
        request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindDepositContractByAddressResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<List<ChainConfig>, ConfigError>> findPeerChains(
      $fixnum.Int64 chainId) async {
    FindPeerChainsRequest request = FindPeerChainsRequest(chainId: chainId);
    Uint8List buffer =
        await bridge.findPeerChains(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindPeerChainsResponse.fromBuffer(data).configs);
  }

  @override
  Future<Response<PoolContractConfig, ConfigError>> findPoolContract(
    $fixnum.Int64 chainId,
    String assetSymbol,
    BridgeType bridgeType,
    int version,
  ) async {
    FindPoolContractRequest request = FindPoolContractRequest(
      chainId: chainId,
      assetSymbol: assetSymbol,
      bridgeType: bridgeType,
      version: version,
    );
    Uint8List buffer =
        await bridge.findPoolContract(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindPoolContractResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<PoolContractConfig, ConfigError>> findPoolContractByAddress(
      $fixnum.Int64 chainId, String address) async {
    FindPoolContractByAddressRequest request =
        FindPoolContractByAddressRequest(chainId: chainId, address: address);
    Uint8List buffer = await bridge.findPoolContractByAddress(
        request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindPoolContractByAddressResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<List<PoolContractConfig>, ConfigError>> findPoolContracts(
      $fixnum.Int64 chainId, String assetSymbol, BridgeType bridgeType) async {
    FindPoolContractsRequest request = FindPoolContractsRequest(
      chainId: chainId,
      assetSymbol: assetSymbol,
      bridgeType: bridgeType,
    );
    Uint8List buffer =
        await bridge.findPoolContracts(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindPoolContractsResponse.fromBuffer(data).config);
  }

  @override
  Future<Response<String, ConfigError>> getTransactionUrl(
      $fixnum.Int64 chainId, String txHash) async {
    GetTransactionUrlRequest request =
        GetTransactionUrlRequest(chainId: chainId, txHash: txHash);
    Uint8List buffer =
        await bridge.getTransactionUrl(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => GetTransactionUrlResponse.fromBuffer(data).url);
  }
}
