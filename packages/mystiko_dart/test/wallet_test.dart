import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:test/test.dart';

import 'utils.dart';

const String defaultWalletPassword = 'Pass@w0rd';

Future<void> main() async {
  late MystikoApi mystikoApi;
  late MystikoWalletApi walletApi;

  setUpAll(() async {
    mystikoApi = await defaultMystikoApi();
    walletApi = await Mystiko.getMystikoWalletApi(createLibrary());
    await mystikoApi.initialize(MystikoOptions(
        configOptions:
            ConfigOptions(filePath: configPath('full.json'), isTestnet: true)));
  });

  tearDownAll(() async {
    await mystikoApi.destroy();
  });

  test('create wallet', () async {
    // create wallet
    Response<Wallet, WalletError> response_0 = await walletApi
        .create(CreateWalletOptions(password: defaultWalletPassword));
    expect(response_0.isSuccess, true);
    Wallet? wallet_0 = response_0.data;

    // check current
    Response<Wallet, WalletError> response_1 = await walletApi.checkCurrent();
    expect(response_1.isSuccess, true);
    Wallet? wallet_1 = response_1.data;

    expect(wallet_0, wallet_1);
  });

  test('create with invalid password', () async {
    Response<Wallet, WalletError> response =
        await walletApi.create(CreateWalletOptions(password: 'AAAAAAAA'));
    expect(
        response.code.wallet, WalletError.WALLET_ERROR_INVALID_PASSWORD_ERROR);
  });

  test('check password', () async {
    // create wallet
    Response<Wallet, WalletError> response_0 = await walletApi
        .create(CreateWalletOptions(password: defaultWalletPassword));
    expect(response_0.isSuccess, true);

    // check password
    Response<Wallet, WalletError> response_1 =
        await walletApi.checkPassword(defaultWalletPassword);
    expect(response_1.isSuccess, true);

    // check wrong password
    Response<Wallet, WalletError> response_2 =
        await walletApi.checkPassword('wrong_password');
    expect(response_2.code.wallet,
        WalletError.WALLET_ERROR_MISMATCHED_PASSWORD_ERROR);
  });
}
