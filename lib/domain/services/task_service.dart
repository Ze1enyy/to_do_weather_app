import 'package:to_do_app/domain/entity/task.dart';

abstract class TaskService {
  Future<List<Task>> getTasks();
  Future<List<Task>> getFilteredTasks(String category);
  Future<void> addTask(
      {required String title,
      required String description,
      required String category});
  Future<void> removeTask(int index);
  Future<void> updateTaskStatus(int index);
}
