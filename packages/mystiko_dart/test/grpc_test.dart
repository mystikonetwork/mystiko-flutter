import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_dart/src/grpc/server.dart';
import 'package:mystiko_protos_dart/mystiko/core/index.dart';
import 'package:test/test.dart';

import 'utils.dart';

Future<void> main() async {
  late MystikoApi mystikoApi;
  int port = 50051;

  setUpAll(() async {
    mystikoApi = await defaultMystikoApi();
  });

  tearDown(() async {
    await Mystiko.shutdownGrpcServer();
  });

  tearDownAll(() async {
    await mystikoApi.destroy();
  });

  test('grpc server request get address', () async {
    // start grpc server
    await Mystiko.startGrpcServer(GrpcServerOptions(
        port: port,
        getAddressFunc: currentAddress,
        sendTransactionFunc: sendTransaction));
    // create grpc client
    TransactionServiceClient client = createGrpcClient(port);
    GetAddressResponse response = await client.getAddress(GetAddressRequest());
    expect(response, await currentAddress());
  });

  test('grpc server request send transaction', () async {
    // start grpc server
    await Mystiko.startGrpcServer(GrpcServerOptions(
        port: port,
        getAddressFunc: currentAddress,
        sendTransactionFunc: sendTransaction));
    // create grpc client
    TransactionServiceClient client = createGrpcClient(port);
    // send transaction
    SendTransactionResponse response =
    await client.sendTransaction(SendTransactionRequest());
    expect(response, await sendTransaction(SendTransactionRequest()));
  });
}
