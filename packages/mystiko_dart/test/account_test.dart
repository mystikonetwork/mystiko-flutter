import 'package:fixnum/fixnum.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/common/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/document/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/handler/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/index.dart';
import 'package:test/test.dart';

import 'utils.dart';

const String defaultWalletPassword = 'Pass@w0rd';

Future<void> main() async {
  late MystikoApi mystikoApi;
  late MystikoAccountApi accountApi;
  late MystikoWalletApi walletApi;

  setUpAll(() async {
    mystikoApi = await defaultMystikoApi();
    accountApi = await Mystiko.getMystikoAccountApi(createLibrary());
    walletApi = await Mystiko.getMystikoWalletApi(createLibrary());
    await mystikoApi.initialize(MystikoOptions(
        configOptions:
            ConfigOptions(filePath: configPath('full.json'), isTestnet: true)));
  });

  setUp(() async {
    await walletApi
        .create(CreateWalletOptions(password: defaultWalletPassword));
  });

  tearDownAll(() async {
    await mystikoApi.destroy();
  });

  test('create default', () async {
    // create account
    Response<Account, AccountError> response = await accountApi
        .create(CreateAccountOptions(walletPassword: defaultWalletPassword));
    expect(response.isSuccess, true);
    Account? account = response.data;
    expect(account?.name, 'Account 1');
  });

  test('find', () async {
    // create account 1
    Response<Account, AccountError> response_0 = await accountApi
        .create(CreateAccountOptions(walletPassword: defaultWalletPassword));
    expect(response_0.isSuccess, true);
    Account? account = response_0.data;
    // find all
    Response<List<Account>, AccountError> response_1 =
        await accountApi.findAll();
    expect(response_1.data?[0], account);
  });

  test('find by id', () async {
    CreateAccountOptions options =
        CreateAccountOptions(walletPassword: defaultWalletPassword);
    // create account 1
    Response<Account, AccountError> response_0 =
        await accountApi.create(options);
    expect(response_0.isSuccess, true);
    // create account 2
    Response<Account, AccountError> response_1 =
        await accountApi.create(options);
    expect(response_1.isSuccess, true);
    // find by id
    Response<Account, AccountError> response_2 =
        await accountApi.findById(response_0.data!.id);
    expect(response_0.data, response_2.data);
    // find by id
    Response<Account, AccountError> response_3 =
        await accountApi.findById(response_1.data!.id);
    expect(response_1.data, response_3.data);
    // find by non existing id
    Response<Account, AccountError> response_4 =
        await accountApi.findById('non_existing_id');
    expect(response_4.data, Account());
  });

  test('find by public key', () async {
    CreateAccountOptions options =
        CreateAccountOptions(walletPassword: defaultWalletPassword);
    // create account 1
    Response<Account, AccountError> response_0 =
        await accountApi.create(options);
    expect(response_0.isSuccess, true);
    // create account 2
    Response<Account, AccountError> response_1 =
        await accountApi.create(options);
    expect(response_1.isSuccess, true);
    // find by pk
    Response<Account, AccountError> response_2 =
        await accountApi.findByPublicKey(response_0.data!.publicKey);
    expect(response_0.data, response_2.data);
    // find by pk
    Response<Account, AccountError> response_3 =
        await accountApi.findByPublicKey(response_1.data!.publicKey);
    expect(response_1.data, response_3.data);
    // find by non existing pk
    Response<Account, AccountError> response_4 =
        await accountApi.findByPublicKey('non_existing_public_key');
    expect(response_4.data, Account());
  });

  test('find by shielded address', () async {
    CreateAccountOptions options =
        CreateAccountOptions(walletPassword: defaultWalletPassword);
    // create account 1
    Response<Account, AccountError> response_0 =
        await accountApi.create(options);
    expect(response_0.isSuccess, true);
    // create account 2
    Response<Account, AccountError> response_1 =
        await accountApi.create(options);
    expect(response_1.isSuccess, true);
    // find by shielded address
    Response<Account, AccountError> response_2 = await accountApi
        .findByShieldedAddress(response_0.data!.shieldedAddress);
    expect(response_0.data, response_2.data);
    // find by shielded address
    Response<Account, AccountError> response_3 = await accountApi
        .findByShieldedAddress(response_1.data!.shieldedAddress);
    expect(response_1.data, response_3.data);
    // find by non existing shielded address
    Response<Account, AccountError> response_4 =
        await accountApi.findByPublicKey('non_existing_shielded_address');
    expect(response_4.data, Account());
  });

  test('count', () async {
    CreateAccountOptions options =
        CreateAccountOptions(walletPassword: defaultWalletPassword);
    // create account 1
    Response<Account, AccountError> response_0 =
        await accountApi.create(options);
    expect(response_0.isSuccess, true);
    // count all
    Response<Int64, AccountError> response_1 = await accountApi.countAll();
    expect(response_1.data?.toInt(), 1);
    // create account 2
    Response<Account, AccountError> response_2 =
        await accountApi.create(options);
    expect(response_2.isSuccess, true);
    // count all
    Response<Int64, AccountError> response_3 = await accountApi.countAll();
    expect(response_3.data?.toInt(), 2);
  });

  test('update name', () async {
    CreateAccountOptions options =
        CreateAccountOptions(walletPassword: defaultWalletPassword);
    // create account 1
    Response<Account, AccountError> response_0 =
        await accountApi.create(options);
    expect(response_0.isSuccess, true);

    // update account name
    UpdateAccountOptions options_1 =
        UpdateAccountOptions(walletPassword: defaultWalletPassword, name: '');
    Response<Account, AccountError> response_1 = await accountApi
        .updateByPublicKey(response_0.data!.publicKey, options_1);
    expect(response_1.data?.name, response_0.data?.name);
    expect(response_1.data?.updatedAt, response_0.data?.updatedAt);
    options_1.name = response_0.data!.name;
    // update account by shielded address
    Response<Account, AccountError> response_2 = await accountApi
        .updateByShieldedAddress(response_0.data!.shieldedAddress, options_1);
    expect(response_2.data?.name, response_0.data?.name);
    expect(response_2.data?.updatedAt, response_0.data?.updatedAt);
    options_1.name = 'Awesome Account Name';
    Response<Account, AccountError> response_3 = await accountApi
        .updateByShieldedAddress(response_0.data!.shieldedAddress, options_1);
    expect(response_3.data?.name, 'Awesome Account Name');
  });

  test('update encryption', () async {
    CreateAccountOptions options =
        CreateAccountOptions(walletPassword: defaultWalletPassword);
    // create account 1
    Response<Account, AccountError> response_0 =
        await accountApi.create(options);
    expect(response_0.isSuccess, true);
    Account account1 = response_0.data!;
    // create account 2
    Response<Account, AccountError> response_1 =
        await accountApi.create(options);
    expect(response_1.isSuccess, true);
    Account account2 = response_1.data!;

    String newWalletPassword = 'newP@ssw0rd';
    // sk1
    Response<String, AccountError> response_2 = await accountApi
        .exportSecretKeyById(defaultWalletPassword, account1.id);
    String sk1 = response_2.data!;
    // sk2
    Response<String, AccountError> response_3 = await accountApi
        .exportSecretKeyById(defaultWalletPassword, account2.id);
    String sk2 = response_3.data!;
    // update encryption
    Response<Wallet, WalletError> response_4 = await walletApi.updatePassword(
        defaultWalletPassword, newWalletPassword);
    expect(response_4.isSuccess, true);
    Response<List<Account>, AccountError> response_5 = await accountApi
        .updateEncryption(defaultWalletPassword, newWalletPassword);
    expect(response_5.isSuccess, true);
    // sk3
    Response<String, AccountError> response_6 =
        await accountApi.exportSecretKeyById(newWalletPassword, account1.id);
    String sk3 = response_6.data!;
    // sk4
    Response<String, AccountError> response_7 =
        await accountApi.exportSecretKeyById(newWalletPassword, account2.id);
    String sk4 = response_7.data!;
    expect(sk1, sk3);
    expect(sk2, sk4);
  });
}
