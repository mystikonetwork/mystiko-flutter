import 'package:grpc/grpc.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

class TransactionService extends TransactionServiceBase {
  final Future<GetAddressResponse> Function() getAddressFunc;
  final Future<SendTransactionResponse> Function(SendTransactionRequest)
      sendTransactionFunc;
  final Future<PersonalSignResponse> Function(
      ServiceCall call, PersonalSignRequest request) personalSignFunc;

  TransactionService(
      this.getAddressFunc, this.sendTransactionFunc, this.personalSignFunc);

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

  @override
  Future<PersonalSignResponse> personalSign(
      ServiceCall call, PersonalSignRequest request) {
    return personalSignFunc(call, request);
  }
}
