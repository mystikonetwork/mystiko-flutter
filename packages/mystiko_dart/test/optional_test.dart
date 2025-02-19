import 'package:mystiko_dart/mystiko_dart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

Future<void> main() async {
  test('test optional', () async {
    QuoteSpendOptions options = QuoteSpendOptions(assetSymbol: 'ETH');
    expect(options.hasAmount(), false);
    expect(options.amount, 0.0);
    expect(options.hasAssetSymbol(), true);
  });
}
