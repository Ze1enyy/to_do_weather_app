import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/domain/services/task_service.dart';

abstract class GetFilteredTasksUseCase {
  GetFilteredTasksUseCase();

  Future<List<Task>> call(String category);
}

class HiveGetFilteredTasksUseCase implements GetFilteredTasksUseCase {
  HiveGetFilteredTasksUseCase(this.service);
  final TaskService service;
  @override
  Future<List<Task>> call(String category) {
    return service.getFilteredTasks(category);
  }
}
