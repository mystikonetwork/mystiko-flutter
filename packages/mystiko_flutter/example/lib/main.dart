import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mystiko_flutter/mystiko_flutter.dart';
import 'package:mystiko_protos_dart/mystiko/api/index.dart';
import 'package:mystiko_protos_dart/mystiko/common/index.dart';
import 'package:mystiko_protos_dart/mystiko/config/index.dart';
import 'package:mystiko_protos_dart/mystiko/core/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    getConfig();
  }

  Future<void> initialize() async {
    MystikoApi api = await Mysitko.mystikoApi();
    Response<void, MystikoError> response = await api.initialize(
        MystikoOptions(configOptions: ConfigOptions(isTestnet: true)));
    print('initialize is success ${response.isSuccess}');
    print('error msg ${response.errorMessage}');
  }

  void getConfig() async {
    await initialize();

    MystikoConfigApi api = await Mysitko.mystikoConfigApi();

    Response<MystikoConfig, ConfigError> response = await api.get();
    bool isSuccess = response.isSuccess;
    String? msg = response.errorMessage;
    print("isSuccess $isSuccess, errMsg $msg");
    if (isSuccess) {
      MystikoConfig config = response.data!;
      print('config $config');
    }
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                Text(
                  'This calls a native function through FFI that is shipped as source in the package. '
                      'The native code is built as part of the Flutter Runner build.',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
                Text(
                  'sum(1, 2) = 3',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
