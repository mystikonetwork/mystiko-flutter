import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

@internal
class MystikoAccountImpl extends MystikoAccountApi {
  MystikoAccountImpl(this.bridge);

  final MystikoLibBridge bridge;

  @override
  Future<Response<Int64, AccountError>> count(QueryFilter filter) async {
    CountAccountRequest request = CountAccountRequest(filter: filter);
    Uint8List buffer = await bridge.count(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CountAccountResponse.fromBuffer(data).count);
  }

  @override
  Future<Response<Int64, AccountError>> countAll() async {
    Uint8List buffer = await bridge.countAll();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CountAccountResponse.fromBuffer(data).count);
  }

  @override
  Future<Response<Account, AccountError>> create(
      CreateAccountOptions options) async {
    CreateAccountRequest request = CreateAccountRequest(options: options);
    Uint8List buffer =
        await bridge.createAccount(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CreateAccountResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<String, AccountError>> exportSecretKeyById(
      String walletPassword, String id) async {
    ExportSecretKeyRequest request =
        ExportSecretKeyRequest(walletPassword: walletPassword, identifier: id);
    Uint8List buffer =
        await bridge.exportSecretKeyById(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ExportSecretKeyResponse.fromBuffer(data).secretKey);
  }

  @override
  Future<Response<String, AccountError>> exportSecretKeyByPublicKey(
      String walletPassword, String publicKey) async {
    ExportSecretKeyRequest request = ExportSecretKeyRequest(
        walletPassword: walletPassword, identifier: publicKey);
    Uint8List buffer = await bridge.exportSecretKeyByPublicKey(
        request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ExportSecretKeyResponse.fromBuffer(data).secretKey);
  }

  @override
  Future<Response<String, AccountError>> exportSecretKeyByShieldedAddress(
      String walletPassword, String shieldedAddress) async {
    ExportSecretKeyRequest request = ExportSecretKeyRequest(
        walletPassword: walletPassword, identifier: shieldedAddress);
    Uint8List buffer = await bridge.exportSecretKeyByShieldedAddress(
        request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ExportSecretKeyResponse.fromBuffer(data).secretKey);
  }

  @override
  Future<Response<List<Account>, AccountError>> find(QueryFilter filter) async {
    FindAccountRequest request = FindAccountRequest(filter: filter);
    Uint8List buffer = await bridge.find(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindAccountResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<List<Account>, AccountError>> findAll() async {
    QueryFilter filter = QueryFilter(
        conditionsOperator: ConditionOperator.CONDITION_OPERATOR_AND);
    FindAccountRequest request = FindAccountRequest(filter: filter);
    Uint8List buffer = await bridge.find(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindAccountResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<Account, AccountError>> findById(String id) async {
    FindAccountByIdentifierRequest request =
        FindAccountByIdentifierRequest(identifier: id);
    Uint8List buffer = await bridge.findById(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindAccountByIdentifierResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<Account, AccountError>> findByPublicKey(
      String publicKey) async {
    FindAccountByIdentifierRequest request =
        FindAccountByIdentifierRequest(identifier: publicKey);
    Uint8List buffer =
        await bridge.findByPublicKey(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindAccountByIdentifierResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<Account, AccountError>> findByShieldedAddress(
      String shieldedAddress) async {
    FindAccountByIdentifierRequest request =
        FindAccountByIdentifierRequest(identifier: shieldedAddress);
    Uint8List buffer =
        await bridge.findByShieldedAddress(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindAccountByIdentifierResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<Account, AccountError>> updateById(
      String id, UpdateAccountOptions options) async {
    UpdateAccountRequest request =
        UpdateAccountRequest(identifier: id, options: options);
    Uint8List buffer =
        await bridge.updateById(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdateAccountResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<Account, AccountError>> updateByPublicKey(
      String publicKey, UpdateAccountOptions options) async {
    UpdateAccountRequest request =
        UpdateAccountRequest(identifier: publicKey, options: options);
    Uint8List buffer =
        await bridge.updateByPublicKey(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdateAccountResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<Account, AccountError>> updateByShieldedAddress(
      String shieldedAddress, UpdateAccountOptions options) async {
    UpdateAccountRequest request =
        UpdateAccountRequest(identifier: shieldedAddress, options: options);
    Uint8List buffer =
        await bridge.updateByShieldedAddress(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdateAccountResponse.fromBuffer(data).account);
  }

  @override
  Future<Response<List<Account>, AccountError>> updateEncryption(
      String oldWalletPassword, String newWalletPassword) async {
    UpdateEncryptionRequest request = UpdateEncryptionRequest(
        oldWalletPassword: oldWalletPassword,
        newWalletPassword: newWalletPassword);
    Uint8List buffer =
        await bridge.updateEncryption(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdateEncryptionResponse.fromBuffer(data).account);
  }
}
