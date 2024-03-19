import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

@internal
class MystikoSpendImpl extends MystikoSpendApi {
  MystikoSpendImpl(this.bridge);

  final MystikoLibBridge bridge;

  @override
  Future<Response<Int64, SpendError>> count(QueryFilter filter) async {
    CountSpendsRequest request = CountSpendsRequest(filter: filter);
    Uint8List buffer =
        await bridge.countSpend(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CountSpendsResponse.fromBuffer(data).count);
  }

  @override
  Future<Response<Int64, SpendError>> countAll() async {
    Uint8List buffer = await bridge.countAllSpend();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CountSpendsResponse.fromBuffer(data).count);
  }

  @override
  Future<Response<Spend, SpendError>> create(CreateSpendOptions options) async {
    CreateSpendRequest request = CreateSpendRequest(options: options);
    Uint8List buffer =
        await bridge.createSpend(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => CreateSpendResponse.fromBuffer(data).spend);
  }

  @override
  Future<Response<void, SpendError>> delete(Spend spend) async {
    DeleteSpendRequest request = DeleteSpendRequest(spend: spend);
    Uint8List buffer =
        await bridge.spendDelete(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<void, SpendError>> deleteAll() async {
    Uint8List buffer = await bridge.spendDeleteAll();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<void, SpendError>> deleteBatch(List<Spend> spends) async {
    DeleteSpendBatchRequest request = DeleteSpendBatchRequest(spends: spends);
    Uint8List buffer =
        await bridge.spendDeleteBatch(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<void, SpendError>> deleteByFilter(QueryFilter filter) async {
    DeleteSpendByFilterRequest request =
        DeleteSpendByFilterRequest(filter: filter);
    Uint8List buffer =
        await bridge.spendDeleteByFilter(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<List<Spend>, SpendError>> find(QueryFilter filter) async {
    FindSpendRequest request = FindSpendRequest(filter: filter);
    Uint8List buffer = await bridge.findSpend(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindSpendsResponse.fromBuffer(data).spends);
  }

  @override
  Future<Response<List<Spend>, SpendError>> findAll() async {
    Uint8List buffer = await bridge.findAllSpend();
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindSpendsResponse.fromBuffer(data).spends);
  }

  @override
  Future<Response<Spend, SpendError>> findById(String id) async {
    FindSpendByIdRequest request = FindSpendByIdRequest(id: id);
    Uint8List buffer =
        await bridge.spendFindById(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindOneSpendResponse.fromBuffer(data).spend);
  }

  @override
  Future<Response<Spend, SpendError>> findOne(QueryFilter filter) async {
    FindSpendRequest request = FindSpendRequest(filter: filter);
    Uint8List buffer =
        await bridge.findOneSpend(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => FindOneSpendResponse.fromBuffer(data).spend);
  }

  @override
  Future<Response<SpendQuote, SpendError>> quote(
      QuoteSpendOptions options) async {
    SpendQuoteRequest request = SpendQuoteRequest(options: options);
    Uint8List buffer =
        await bridge.quoteSpend(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => SpendQuoteResponse.fromBuffer(data).quote);
  }

  @override
  Future<Response<Spend, SpendError>> send(SendSpendOptions options) async {
    SendSpendRequest request = SendSpendRequest(options: options);
    Uint8List buffer = await bridge.sendSpend(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => SendSpendResponse.fromBuffer(data).spend);
  }

  @override
  Future<Response<Spend, SpendError>> sendWithGrpc(
      SendSpendOptions sendOptions, ClientOptions clientOptions) async {
    SendSpendWithGrpcRequest request = SendSpendWithGrpcRequest(
        sendOptions: sendOptions, clientOptions: clientOptions);
    Uint8List buffer =
        await bridge.sendSpendWithGrpc(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => SendSpendResponse.fromBuffer(data).spend);
  }

  @override
  Future<Response<SpendSummary, SpendError>> summary(
      CreateSpendOptions options) async {
    SpendSummaryRequest request = SpendSummaryRequest(options: options);
    Uint8List buffer =
        await bridge.summarySpend(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => SpendSummaryResponse.fromBuffer(data).summary);
  }

  @override
  Future<Response<Spend, SpendError>> update(Spend spend) async {
    UpdateSpendRequest request = UpdateSpendRequest(spend: spend);
    Uint8List buffer =
        await bridge.spendUpdate(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdateSpendResponse.fromBuffer(data).spend);
  }

  @override
  Future<Response<void, SpendError>> updateAll(
      List<ColumnValuePair> columnValues) async {
    UpdateAllSpendRequest request =
        UpdateAllSpendRequest(columnValues: columnValues);
    Uint8List buffer =
        await bridge.spendUpdateAll(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }

  @override
  Future<Response<List<Spend>, SpendError>> updateBatch(
      List<Spend> spends) async {
    UpdateSpendBatchRequest request = UpdateSpendBatchRequest(spends: spends);
    Uint8List buffer =
        await bridge.spendUpdateBatch(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer),
        (data) => UpdateSpendBatchResponse.fromBuffer(data).spends);
  }

  @override
  Future<Response<void, SpendError>> updateByFilter(
      List<ColumnValuePair> columnValues, QueryFilter filter) async {
    UpdateSpendByFilterRequest request =
        UpdateSpendByFilterRequest(columnValues: columnValues, filter: filter);
    Uint8List buffer =
        await bridge.spendUpdateByFilter(request: request.writeToBuffer());
    return Response.fromApiResponse(ApiResponse.fromBuffer(buffer), (data) {});
  }
}
