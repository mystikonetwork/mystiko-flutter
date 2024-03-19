import 'package:fixnum/fixnum.dart';
import 'package:mystiko_dart/mystiko_dart.dart';

abstract class MystikoDepositApi {
  Future<Response<DepositQuote, DepositError>> quote(
      QuoteDepositOptions options);

  Future<Response<DepositSummary, DepositError>> summary(
      CreateDepositOptions options);

  Future<Response<Deposit, DepositError>> create(CreateDepositOptions options);

  Future<Response<Deposit, DepositError>> send(SendDepositOptions options);

  Future<Response<Deposit, DepositError>> sendWithGrpc(
      SendDepositOptions sendOptions, ClientOptions clientOptions);

  Future<Response<List<Deposit>, DepositError>> find(QueryFilter filter);

  Future<Response<List<Deposit>, DepositError>> findAll();

  Future<Response<Deposit, DepositError>> findOne(QueryFilter filter);

  Future<Response<Deposit, DepositError>> findById(String id);

  Future<Response<Int64, DepositError>> count(QueryFilter filter);

  Future<Response<Int64, DepositError>> countAll();

  Future<Response<Deposit, DepositError>> update(Deposit deposit);

  Future<Response<List<Deposit>, DepositError>> updateBatch(
      List<Deposit> deposits);

  Future<Response<void, DepositError>> updateByFilter(
      List<ColumnValuePair> columnValues, QueryFilter filter);

  Future<Response<void, DepositError>> updateAll(
      List<ColumnValuePair> columnValues);

  Future<Response<void, DepositError>> delete(Deposit deposit);

  Future<Response<void, DepositError>> deleteBatch(List<Deposit> deposits);

  Future<Response<void, DepositError>> deleteByFilter(QueryFilter filter);

  Future<Response<void, DepositError>> deleteAll();
}
