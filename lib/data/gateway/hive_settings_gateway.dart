import 'package:hive/hive.dart';

import 'package:path_provider/path_provider.dart';
import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/domain/entity/weather.dart';

class HiveSettingsGateway {
  Future<void> initHive() async {
    // Hive requires path to a directory to store data
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
  }

  Future<void> registerAdapters() async {
    Hive.registerAdapter(TaskAdapter());
    Hive.registerAdapter(WeatherAdapter());
  }
}
