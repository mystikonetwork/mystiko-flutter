import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/common/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/index.dart';
import 'package:test/test.dart';

import 'utils.dart';

Future<void> main() async {
  late MystikoApi mystikoApi;

  setUpAll(() async {
    mystikoApi = await defaultMystikoApi();
  });

  test('test initialize', () async {
    Response<void, MystikoError> response = await mystikoApi.initialize(
        MystikoOptions(
            configOptions: ConfigOptions(
                filePath: configPath('full.json'), isTestnet: true)));
    expect(response.isSuccess, true);
  });

  test('test isInitialized', () async {
    Response<void, MystikoError> response = await mystikoApi.initialize(
        MystikoOptions(
            configOptions: ConfigOptions(
                filePath: configPath('full.json'), isTestnet: true)));
    expect(response.isSuccess, true);
    bool isInitialized = await mystikoApi.isInitialized();
    expect(isInitialized, true);
  });

  test('test destroy', () async {
    Response<void, MystikoError> response = await mystikoApi.initialize(
        MystikoOptions(
            configOptions: ConfigOptions(
                filePath: configPath('full.json'), isTestnet: true)));
    expect(response.isSuccess, true);
    bool isInitialized = await mystikoApi.isInitialized();
    expect(isInitialized, true);
    await mystikoApi.destroy();
    isInitialized = await mystikoApi.isInitialized();
    expect(isInitialized, false);
  });
}
