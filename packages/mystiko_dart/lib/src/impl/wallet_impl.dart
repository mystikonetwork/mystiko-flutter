import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/handler/index.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/document/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/handler/index.dart';

@internal
class MystikoWalletImpl extends MystikoWalletApi {
  MystikoWalletImpl(this.bridge);

  final MystikoLibBridge bridge;

  @override
  Future<Response<Wallet, WalletError>> checkCurrent() async {
    Uint8List buffer = await bridge.checkCurrent();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CheckCurrentResponse.fromBuffer(data).wallet);
  }

  @override
  Future<Response<Wallet, WalletError>> checkPassword(String password) async {
    CheckPasswordRequest request = CheckPasswordRequest(password: password);
    Uint8List buffer =
        await bridge.checkPassword(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CheckPasswordResponse.fromBuffer(data).wallet);
  }

  @override
  Future<Response<Wallet, WalletError>> create(
      CreateWalletOptions options) async {
    CreateWalletRequest request = CreateWalletRequest(options: options);
    Uint8List buffer =
        await bridge.createWallet(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CreateWalletResponse.fromBuffer(data).wallet);
  }

  @override
  Future<Response<String, WalletError>> exportMnemonicPhrase(
      String password) async {
    ExportMnemonicPhraseRequest request =
        ExportMnemonicPhraseRequest(password: password);
    Uint8List buffer =
        await bridge.exportMnemonicPhrase(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => ExportMnemonicPhraseResponse.fromBuffer(data).mnemonicPhrase);
  }

  @override
  Future<Response<Wallet, WalletError>> updatePassword(
      String oldPassword, String newPassword) async {
    UpdatePasswordRequest request = UpdatePasswordRequest(
        oldPassword: oldPassword, newPassword: newPassword);
    Uint8List buffer =
        await bridge.updatePassword(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdatePasswordResponse.fromBuffer(data).wallet);
  }
}
