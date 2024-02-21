import 'package:flutter/material.dart';
import 'package:to_do_app/data/gateway/hive_settings_gateway.dart';
import 'package:to_do_app/data/gateway/hive_task_gateway.dart';

import 'package:to_do_app/presentation/page/home_page.dart';
import 'package:to_do_app/backbone/di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  final hiveSettingsGateway = HiveSettingsGateway();
  HiveTaskGateway taskGateway = HiveTaskGateway();

  await hiveSettingsGateway.initHive();
  await hiveSettingsGateway.registerAdapters();
  await taskGateway.openBox();
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}
