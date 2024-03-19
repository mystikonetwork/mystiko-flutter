import 'package:grpc/grpc.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

class TransactionService extends TransactionServiceBase {
  final Future<GetAddressResponse> Function() getAddressFunc;
  final Future<SendTransactionResponse> Function(SendTransactionRequest)
      sendTransactionFunc;

  TransactionService(this.getAddressFunc, this.sendTransactionFunc);

  @override
  Future<GetAddressResponse> getAddress(
      ServiceCall call, GetAddressRequest request) {
    return getAddressFunc();
  }

  @override
  Future<SendTransactionResponse> sendTransaction(
      ServiceCall call, SendTransactionRequest request) {
    return sendTransactionFunc(request);
  }
}
