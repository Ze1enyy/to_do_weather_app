import 'package:to_do_app/domain/entity/task.dart';

abstract class TaskService {
  Future<List<Task>> getTasks();
  Future<void> addTask(
      {required String title,
      required String description,
      required String category});
  Future<void> removeTask(String id);
  Future<void> setAsCompleted(String id);
}
