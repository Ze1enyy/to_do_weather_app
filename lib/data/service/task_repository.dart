import 'package:to_do_app/data/gateway/hive_task_gateway.dart';
import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/domain/services/task_service.dart';

class TaskRepository implements TaskService {
  TaskRepository(this._gateway);

  final HiveTaskGateway _gateway;

  @override
  Future<void> addTask(
      {required String title,
      required String description,
      required String category}) {
    return _gateway.addTask(
      category: category,
      title: title,
      description: description,
    );
  }

  @override
  Future<List<Task>> getTasks() async {
    await _gateway.openBox();
    return _gateway.getTasks();
  }

  @override
  Future<void> removeTask(String id) {
    return _gateway.removeTask(id);
  }

  @override
  Future<void> updateTaskStatus(String id) {
    return _gateway.updateTaskStatus(id);
  }

  @override
  Future<List<Task>> getFilteredTasks(
      List<String>? category, bool? isTaskCompleted) {
    return _gateway.getFilteredTasks(category, isTaskCompleted);
  }
}
