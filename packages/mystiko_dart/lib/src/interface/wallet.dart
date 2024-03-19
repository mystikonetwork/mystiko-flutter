import 'package:mystiko_dart/mystiko_dart.dart';

abstract class MystikoWalletApi {
  Future<Response<Wallet, WalletError>> create(CreateWalletOptions options);

  Future<Response<Wallet, WalletError>> checkCurrent();

  Future<Response<Wallet, WalletError>> checkPassword(String password);

  Future<Response<Wallet, WalletError>> updatePassword(
      String oldPassword, String newPassword);

  Future<Response<String, WalletError>> exportMnemonicPhrase(String password);
}
