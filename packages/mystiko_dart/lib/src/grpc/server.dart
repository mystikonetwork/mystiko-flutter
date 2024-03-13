import 'package:grpc/grpc.dart';
import 'package:mystiko_dart/src/grpc/transaction.dart';
import 'package:mystiko_protos_dart/mystiko/core/index.dart';

class ServerConfig {
  final Future<GetAddressResponse> Function() getAddressFunc;
  final Future<SendTransactionResponse> Function(SendTransactionRequest)
      sendTransactionFunc;

  ServerConfig({
    required this.getAddressFunc,
    required this.sendTransactionFunc,
  });
}

Future<Server> createGrpcServer(ServerConfig config) async {
  return Server.create(
    services: [
      TransactionService(config.getAddressFunc, config.sendTransactionFunc)
    ],
  );
}

class GrpcServerOptions {
  final int port;
  final Future<GetAddressResponse> Function() getAddressFunc;
  final Future<SendTransactionResponse> Function(SendTransactionRequest)
      sendTransactionFunc;

  GrpcServerOptions({
    required this.port,
    required this.getAddressFunc,
    required this.sendTransactionFunc,
  });
}
