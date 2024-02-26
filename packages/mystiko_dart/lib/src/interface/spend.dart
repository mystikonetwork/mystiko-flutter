import 'package:fixnum/fixnum.dart';
import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:mystiko_protos_dart/mystiko/api/handler/index.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/document/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/handler/index.dart';
import 'package:mystiko_protos_dart/mystiko/service/index.dart';
import 'package:mystiko_protos_dart/mystiko/storage/index.dart';

abstract class MystikoSpendApi {
  Future<Response<SpendQuote, SpendError>> quote(QuoteSpendOptions options);

  Future<Response<SpendSummary, SpendError>> summary(
      CreateSpendOptions options);

  Future<Response<Spend, SpendError>> create(CreateSpendOptions options);

  Future<Response<Spend, SpendError>> send(SendSpendOptions options);

  Future<Response<Spend, SpendError>> sendWithGrpc(
      SendSpendOptions sendOptions, ClientOptions clientOptions);

  Future<Response<List<Spend>, SpendError>> find(QueryFilter filter);

  Future<Response<List<Spend>, SpendError>> findAll();

  Future<Response<Spend, SpendError>> findOne(QueryFilter filter);

  Future<Response<Spend, SpendError>> findById(String id);

  Future<Response<Int64, SpendError>> count(QueryFilter filter);

  Future<Response<Int64, SpendError>> countAll();

  Future<Response<Spend, SpendError>> update(Spend spend);

  Future<Response<List<Spend>, SpendError>> updateBatch(List<Spend> spends);

  Future<Response<void, SpendError>> updateByFilter(
      List<ColumnValuePair> columnValues, QueryFilter filter);

  Future<Response<void, SpendError>> updateAll(
      List<ColumnValuePair> columnValues);

  Future<Response<void, SpendError>> delete(Spend spend);

  Future<Response<void, SpendError>> deleteBatch(List<Spend> spends);

  Future<Response<void, SpendError>> deleteByFilter(QueryFilter filter);

  Future<Response<void, SpendError>> deleteAll();
}
