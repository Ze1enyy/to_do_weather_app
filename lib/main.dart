import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:to_do_app/data/gateway/hive_settings_gateway.dart';

import 'package:to_do_app/presentation/page/home_page.dart';
import 'package:to_do_app/backbone/di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // configuring dependency injection
  await di.init();
  // loading .env file
  await dotenv.load();
  // configuring Hive database
  final hiveSettingsGateway = HiveSettingsGateway();
  await hiveSettingsGateway.initHive();
  await hiveSettingsGateway.registerAdapters();

  runApp(const MaterialApp(
    home: HomePage(),
  ));
}
