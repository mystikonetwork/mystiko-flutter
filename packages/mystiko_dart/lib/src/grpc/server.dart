import 'package:grpc/grpc.dart';
import 'package:mystiko_dart/src/grpc/transaction.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

class ServerConfig {
  final Future<GetAddressResponse> Function() getAddressFunc;
  final Future<SendTransactionResponse> Function(SendTransactionRequest)
      sendTransactionFunc;
  final Future<PersonalSignResponse> Function(
      ServiceCall call, PersonalSignRequest request) personalSignFunc;

  ServerConfig({
    required this.getAddressFunc,
    required this.sendTransactionFunc,
    required this.personalSignFunc,
  });
}

Future<Server> createGrpcServer(ServerConfig config) async {
  return Server.create(
    services: [
      TransactionService(config.getAddressFunc, config.sendTransactionFunc,
          config.personalSignFunc)
    ],
  );
}

class GrpcServerOptions {
  final int port;
  final Future<GetAddressResponse> Function() getAddressFunc;
  final Future<SendTransactionResponse> Function(SendTransactionRequest)
      sendTransactionFunc;
  final Future<PersonalSignResponse> Function(
      ServiceCall call, PersonalSignRequest request) personalSignFunc;

  GrpcServerOptions({
    required this.port,
    required this.getAddressFunc,
    required this.sendTransactionFunc,
    required this.personalSignFunc,
  });
}
