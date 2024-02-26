import 'package:mystiko_dart/src/interface/config.dart';
import 'package:test/test.dart';

import 'utils.dart';

void main() {
  test('use config', () async {
    final config = await useConfig();
    expect(config, isA<MystikoConfigApi>());
  });
}
