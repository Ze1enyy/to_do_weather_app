import 'package:hive/hive.dart';

import 'package:path_provider/path_provider.dart';
import 'package:to_do_app/domain/entity/task.dart';

class HiveSettingsGateway {
  Future<void> initHive() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
  }

  Future<void> registerAdapters() async {
    Hive.registerAdapter(TaskAdapter());
  }
}
