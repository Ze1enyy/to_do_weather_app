import 'package:to_do_app/domain/services/task_service.dart';

abstract class UpdateTaskStatusUseCase {
  UpdateTaskStatusUseCase();

  Future<void> call(String id);
}

class HiveUpdateTaskStatusUseCase implements UpdateTaskStatusUseCase {
  HiveUpdateTaskStatusUseCase(this.service);
  final TaskService service;
  @override
  Future<void> call(String id) {
    return service.updateTaskStatus(id);
  }
}
