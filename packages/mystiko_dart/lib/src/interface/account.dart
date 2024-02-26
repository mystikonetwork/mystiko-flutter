import 'package:fixnum/fixnum.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/document/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/handler/index.dart';
import 'package:mystiko_protos_dart/mystiko/storage/index.dart';

abstract class MystikoAccountApi {
  Future<Response<Account, AccountError>> create(CreateAccountOptions options);

  Future<Response<Int64, AccountError>> count(QueryFilter filter);

  Future<Response<Int64, AccountError>> countAll();

  Future<Response<List<Account>, AccountError>> find(QueryFilter filter);

  Future<Response<List<Account>, AccountError>> findAll();

  Future<Response<Account, AccountError>> findById(String id);

  Future<Response<Account, AccountError>> findByShieldedAddress(
      String shieldedAddress);

  Future<Response<Account, AccountError>> findByPublicKey(String publicKey);

  Future<Response<Account, AccountError>> updateById(
      String id, UpdateAccountOptions options);

  Future<Response<Account, AccountError>> updateByShieldedAddress(
      String shieldedAddress, UpdateAccountOptions options);

  Future<Response<Account, AccountError>> updateByPublicKey(
      String publicKey, UpdateAccountOptions options);

  Future<Response<List<Account>, AccountError>> updateEncryption(
      String oldWalletPassword, String newWalletPassword);

  Future<Response<String, AccountError>> exportSecretKeyById(
      String walletPassword, String id);

  Future<Response<String, AccountError>> exportSecretKeyByPublicKey(
      String walletPassword, String publicKey);

  Future<Response<String, AccountError>> exportSecretKeyByShieldedAddress(
      String walletPassword, String shieldedAddress);
}
