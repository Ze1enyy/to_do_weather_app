import 'package:to_do_app/data/gateway/hive_task_gateway.dart';
import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/domain/services/task_service.dart';

class HiveTaskService implements TaskService {
  HiveTaskService(this._gateway);

  final HiveTaskGateway _gateway;

  @override
  Future<void> addTask(
      {required String title,
      required String description,
      required String category}) {
    return _gateway.addTask(Task(
        category: category,
        title: title,
        description: description,
        isCompleted: false));
  }

  @override
  Future<List<Task>> getTasks() {
    return _gateway.getTasks();
  }

  @override
  Future<void> removeTask(int index) {
    return _gateway.removeTask(index);
  }

  @override
  Future<void> setAsCompleted(String id) {
    // TODO: implement setAsCompleted
    throw UnimplementedError();
  }
}
