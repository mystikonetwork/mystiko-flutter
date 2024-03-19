import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

@internal
class MystikoImpl extends MystikoApi {
  MystikoImpl(this.bridge);

  final MystikoLibBridge bridge;

  @override
  Future<void> destroy() async {
    await bridge.destroy();
  }

  @override
  Future<Response<void, MystikoError>> initialize(
      MystikoOptions options) async {
    Uint8List buffer =
        await bridge.initialize(options: options.writeToBuffer());
    return Response.fromApiResponse(
        ApiResponse.fromBuffer(buffer), (data) => {});
  }

  @override
  Future<bool> isInitialized() async {
    return await bridge.isInitialized();
  }
}
