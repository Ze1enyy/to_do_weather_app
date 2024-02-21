import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/domain/services/task_service.dart';

abstract class GetTasksUseCase {
  GetTasksUseCase();

  Future<List<Task>> call();
}

class HiveGetTasksUseCase implements GetTasksUseCase {
  HiveGetTasksUseCase(this.service);
  final TaskService service;
  @override
  Future<List<Task>> call() {
    return service.getTasks();
  }
}
