import 'package:to_do_app/domain/entity/task.dart';

abstract class TaskService {
  Future<List<Task>> getTasks();
  Future<List<Task>> getFilteredTasks(
    List<String>? category,
    bool? isTaskCompleted,
  );
  Future<void> addTask({
    required String title,
    required String description,
    required String category,
  });
  Future<void> removeTask(String id);
  Future<void> updateTaskStatus(String id);
}
