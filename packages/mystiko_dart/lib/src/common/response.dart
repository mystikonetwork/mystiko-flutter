import 'package:mystiko_protos_dart/mystiko/api/index.dart';

class Response<T, E> {
  StatusCode _code;
  T? _data;
  String? _errorMessage;

  Response._raw(this._code, this._data, this._errorMessage);

  factory Response.fromApiResponse(
      ApiResponse apiResponse, T Function(List<int>) fromBuffer) {
    if (apiResponse.code.success) {
      return Response._raw(
          apiResponse.code, fromBuffer(apiResponse.data), null);
    } else {
      return Response._raw(apiResponse.code, null, apiResponse.errorMessage);
    }
  }

  bool get isSuccess => _code.success;

  StatusCode get code => _code;

  T? get data => _data;

  String? get errorMessage => _errorMessage;

  E? errorCode(StatusCode code) {
    switch (code.whichError()) {
      case StatusCode_Error.mystiko:
        return code.mystiko as E;
      case StatusCode_Error.wallet:
        return code.wallet as E;
      case StatusCode_Error.account:
        return code.account as E;
      case StatusCode_Error.deposit:
        return code.deposit as E;
      case StatusCode_Error.scanner:
        return code.scanner as E;
      case StatusCode_Error.synchronizer:
        return code.synchronizer as E;
      case StatusCode_Error.config:
        return code.config as E;
      case StatusCode_Error.spend:
        return code.spend as E;
      case StatusCode_Error.notSet:
        return null;
    }
  }
}
