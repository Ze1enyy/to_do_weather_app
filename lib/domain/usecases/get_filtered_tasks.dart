import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/domain/services/task_service.dart';

abstract class GetFilteredTasksUseCase {
  GetFilteredTasksUseCase();

  Future<List<Task>> call(
    List<String>? category,
    bool? isTaskCompleted,
  );
}

class HiveGetFilteredTasksUseCase implements GetFilteredTasksUseCase {
  HiveGetFilteredTasksUseCase(this.service);
  final TaskService service;
  @override
  Future<List<Task>> call(
    List<String>? category,
    bool? isTaskCompleted,
  ) {
    return service.getFilteredTasks(
      category,
      isTaskCompleted,
    );
  }
}
