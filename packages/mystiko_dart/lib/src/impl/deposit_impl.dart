import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_dart/src/interface/deposit.dart';
import 'package:mystiko_protos_dart/mystiko/api/handler/index.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/document/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/handler/index.dart';
import 'package:mystiko_protos_dart/mystiko/service/index.dart';
import 'package:mystiko_protos_dart/mystiko/storage/index.dart';

@internal
class MystikoDepositImpl extends MystikoDepositApi {
  MystikoDepositImpl(this.bridge);

  final MystikoLibBridge bridge;

  @override
  Future<Response<Int64, DepositError>> count(QueryFilter filter) async {
    CountDepositRequest request = CountDepositRequest(filter: filter);
    Uint8List buffer =
        await bridge.countDeposit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CountDepositResponse.fromBuffer(data).count);
  }

  @override
  Future<Response<Int64, DepositError>> countAll() async {
    Uint8List buffer = await bridge.countAllDeposit();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CountDepositResponse.fromBuffer(data).count);
  }

  @override
  Future<Response<Deposit, DepositError>> create(
      CreateDepositOptions options) async {
    CreateDepositRequest request = CreateDepositRequest(options: options);
    Uint8List buffer =
        await bridge.createDeposit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CreateDepositResponse.fromBuffer(data).deposit);
  }

  @override
  Future<Response<void, DepositError>> delete(Deposit deposit) async {
    DeleteDepositRequest request = DeleteDepositRequest(deposit: deposit);
    Uint8List buffer =
        await bridge.depositDelete(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<void, DepositError>> deleteAll() async {
    Uint8List buffer = await bridge.depositDeleteAll();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<void, DepositError>> deleteBatch(
      List<Deposit> deposits) async {
    DeleteDepositBatchRequest request =
        DeleteDepositBatchRequest(deposits: deposits);
    Uint8List buffer =
        await bridge.depositDeleteBatch(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<void, DepositError>> deleteByFilter(
      QueryFilter filter) async {
    DeleteDepositByFilterRequest request =
        DeleteDepositByFilterRequest(filter: filter);
    Uint8List buffer =
        await bridge.depositDeleteByFilter(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<List<Deposit>, DepositError>> find(QueryFilter filter) async {
    FindDepositRequest request = FindDepositRequest(filter: filter);
    Uint8List buffer =
        await bridge.findDeposit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindDepositResponse.fromBuffer(data).deposits);
  }

  @override
  Future<Response<List<Deposit>, DepositError>> findAll() async {
    Uint8List buffer = await bridge.findAllDeposit();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindDepositResponse.fromBuffer(data).deposits);
  }

  @override
  Future<Response<Deposit, DepositError>> findById(String id) async {
    FindDepositByIdRequest request = FindDepositByIdRequest(id: id);
    Uint8List buffer =
        await bridge.depositFindById(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindOneDepositResponse.fromBuffer(data).deposit);
  }

  @override
  Future<Response<Deposit, DepositError>> findOne(QueryFilter filter) async {
    FindDepositRequest request = FindDepositRequest(filter: filter);
    Uint8List buffer =
        await bridge.findOneDeposit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindOneDepositResponse.fromBuffer(data).deposit);
  }

  @override
  Future<Response<DepositQuote, DepositError>> quote(
      QuoteDepositOptions options) async {
    QuoteRequest request = QuoteRequest(options: options);
    Uint8List buffer =
        await bridge.quoteDeposit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => QuoteResponse.fromBuffer(data).quote);
  }

  @override
  Future<Response<Deposit, DepositError>> send(
      SendDepositOptions options) async {
    SendRequest request = SendRequest(options: options);
    Uint8List buffer =
        await bridge.sendDeposit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => SendResponse.fromBuffer(data).deposit);
  }

  @override
  Future<Response<Deposit, DepositError>> sendWithGrpc(
      SendDepositOptions sendOptions, ClientOptions clientOptions) async {
    SendWithGrpcRequest request = SendWithGrpcRequest(
        sendOptions: sendOptions, clientOptions: clientOptions);
    Uint8List buffer =
        await bridge.sendDepositWithGrpc(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => SendResponse.fromBuffer(data).deposit);
  }

  @override
  Future<Response<DepositSummary, DepositError>> summary(
      CreateDepositOptions options) async {
    SummaryRequest request = SummaryRequest(options: options);
    Uint8List buffer =
        await bridge.summaryDeposit(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => SummaryResponse.fromBuffer(data).summary);
  }

  @override
  Future<Response<Deposit, DepositError>> update(Deposit deposit) async {
    UpdateDepositRequest request = UpdateDepositRequest(deposit: deposit);
    Uint8List buffer =
        await bridge.depositUpdate(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdateDepositResponse.fromBuffer(data).deposit);
  }

  @override
  Future<Response<void, DepositError>> updateAll(
      List<ColumnValuePair> columnValues) async {
    UpdateAllDepositRequest request =
        UpdateAllDepositRequest(columnValues: columnValues);
    Uint8List buffer =
        await bridge.depositUpdateAll(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<List<Deposit>, DepositError>> updateBatch(
      List<Deposit> deposits) async {
    UpdateDepositBatchRequest request =
        UpdateDepositBatchRequest(deposits: deposits);
    Uint8List buffer =
        await bridge.depositUpdateBatch(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdateDepositBatchResponse.fromBuffer(data).deposits);
  }

  @override
  Future<Response<void, DepositError>> updateByFilter(
      List<ColumnValuePair> columnValues, QueryFilter filter) async {
    UpdateDepositByFilterRequest request = UpdateDepositByFilterRequest(
        columnValues: columnValues, filter: filter);
    Uint8List buffer =
        await bridge.depositUpdateByFilter(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }
}
