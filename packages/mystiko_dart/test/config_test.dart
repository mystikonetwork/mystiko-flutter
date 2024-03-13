import 'package:fixnum/fixnum.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/common/index.dart';
import 'package:mystiko_protos_dart/mystiko/config/bridge/index.dart';
import 'package:mystiko_protos_dart/mystiko/config/contract/index.dart';
import 'package:mystiko_protos_dart/mystiko/config/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/index.dart';
import 'package:test/test.dart';

import 'utils.dart';

Future<void> main() async {
  late MystikoApi mystikoApi;
  late MystikoConfigApi api;

  setUpAll(() async {
    mystikoApi = await defaultMystikoApi();
    api = await Mystiko.getMystikoConfigApi(createLibrary());
    await mystikoApi.initialize(MystikoOptions(
        configOptions:
        ConfigOptions(filePath: configPath('full.json'), isTestnet: true)));
  });

  tearDownAll(() async {
    await mystikoApi.destroy();
  });

  test('get config', () async {
    Response<MystikoConfig, ConfigError> response = await api.get();
    expect(response.isSuccess, true);
    expect(response.data?.version, '0.1.0');
  });

  test('find default circuit', () async {
    Response<CircuitConfig, ConfigError> response =
        await api.findDefaultCircuit(CircuitType.CIRCUIT_TYPE_ROLLUP_1);
    CircuitConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.name, 'zokrates-1.0-rollup1');
    expect(config?.circuitType, CircuitType.CIRCUIT_TYPE_ROLLUP_1);
    expect(config?.isDefault, true);
  });

  test('find circuit', () async {
    Response<CircuitConfig, ConfigError> response =
        await api.findCircuit('zokrates-1.0-transaction1x0');
    CircuitConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.name, 'zokrates-1.0-transaction1x0');
    expect(config?.circuitType, CircuitType.CIRCUIT_TYPE_TRANSACTION1X0);
    expect(config?.isDefault, true);
  });

  test('find chain', () async {
    Response<ChainConfig, ConfigError> response = await api.findChain(Int64(5));
    ChainConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.chainId.toInt(), 5);
    expect(config?.name, 'Ethereum Goerli');
    expect(config?.assetSymbol, 'ETH');
    expect(config?.assetDecimals, 18);
    expect(config?.explorerUrl, 'https://goerli.etherscan.io');
    expect(config?.explorerApiUrl, 'https://api-goerli.etherscan.io');
  });

  test('find peer chains', () async {
    Response<List<ChainConfig>, ConfigError> response =
        await api.findPeerChains(Int64(5));
    List<ChainConfig>? configs = response.data;
    expect(configs, isNotNull);
    List<int>? peerChainIds =
        configs?.map((config) => config.chainId.toInt()).toList();
    peerChainIds?.sort();
    expect(peerChainIds, [5, 97]);
  });

  test('find asset symbols', () async {
    Response<List<String>, ConfigError> response =
        await api.findAssetSymbols(Int64(5), Int64(5));
    List<String>? assetSymbols = response.data;
    expect(assetSymbols, isNotNull);
    assetSymbols?.sort();
    expect(assetSymbols, ['ETH']);
  });

  test('find bridges', () async {
    Response<List<BridgeType>, ConfigError> response =
        await api.findBridges(Int64(5), Int64(97), 'MTT');
    List<BridgeType>? bridges = response.data;
    expect(bridges, isNotNull);
    bridges?.sort((a, b) => a.toString().compareTo(b.toString()));
    expect(bridges, [
      BridgeType.BRIDGE_TYPE_AXELAR,
      BridgeType.BRIDGE_TYPE_CELER,
      BridgeType.BRIDGE_TYPE_LAYER_ZERO,
      BridgeType.BRIDGE_TYPE_TBRIDGE
    ]);
  });

  test('find bridge', () async {
    Response<BridgeConfig, ConfigError> response =
        await api.findBridge(BridgeType.BRIDGE_TYPE_AXELAR);
    BridgeConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.name, 'Axelar Network');
    expect(config?.bridgeType, BridgeType.BRIDGE_TYPE_AXELAR);
  });

  test('find deposit contract', () async {
    Response<DepositContractConfig, ConfigError> response =
        await api.findDepositContract(
            Int64(5), Int64(97), 'MTT', BridgeType.BRIDGE_TYPE_CELER);
    DepositContractConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.address, '0xe6394a06905d83B19Dbd51804Ca84677a2054FA6');
  });

  test('find deposit contract by address', () async {
    Response<DepositContractConfig, ConfigError> response =
        await api.findDepositContractByAddress(
            Int64(5), '0x961f315a836542e603a3df2e0dd9d4ecd06ebc67');
    DepositContractConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.address, '0x961f315a836542e603a3df2e0dd9d4ecd06ebc67');
  });

  test('find pool contract', () async {
    Response<PoolContractConfig, ConfigError> response = await api
        .findPoolContract(Int64(5), 'MTT', BridgeType.BRIDGE_TYPE_CELER, 2);
    PoolContractConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.address, '0x20Eb345870059E688c59e89523442ade33C7c813');
  });

  test('find pool contracts', () async {
    Response<List<PoolContractConfig>, ConfigError> response = await api
        .findPoolContracts(Int64(5), 'MTT', BridgeType.BRIDGE_TYPE_CELER);
    List<PoolContractConfig>? configs = response.data;
    expect(configs, isNotNull);
    List<String>? address = configs?.map((config) => config.address).toList();
    expect(address, ['0x20Eb345870059E688c59e89523442ade33C7c813']);
  });

  test('find pool contract by address', () async {
    Response<PoolContractConfig, ConfigError> response =
        await api.findPoolContractByAddress(
            Int64(5), '0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2');
    PoolContractConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.address, '0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2');
  });

  test('find contract by address', () async {
    Response<ContractConfig, ConfigError> response =
        await api.findContractByAddress(
            Int64(5), '0x961f315a836542e603a3df2e0dd9d4ecd06ebc67');
    ContractConfig? config = response.data;
    expect(config, isNotNull);
    expect(config?.address, '0x961f315a836542e603a3df2e0dd9d4ecd06ebc67');
  });

  test('get transaction url', () async {
    Response<String, ConfigError> response = await api.getTransactionUrl(
        Int64(5),
        '0xbce8d733536ee3b769456cf91bebae1e9e5be6cb89bb7490c6225384e1bc5e3e');
    expect(
        response.data,
        'https://goerli.etherscan.io/tx/'
        '0xbce8d733536ee3b769456cf91bebae1e9e5be6cb89bb7490c6225384e1bc5e3e');
  });

  test('supported asset symbols', () async {});
}
