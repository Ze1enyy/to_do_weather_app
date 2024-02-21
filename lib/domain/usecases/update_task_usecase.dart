import 'package:to_do_app/domain/services/task_service.dart';

abstract class UpdateTaskStatusUseCase {
  UpdateTaskStatusUseCase();

  Future<void> call(int index);
}

class HiveUpdateTaskStatusUseCase implements UpdateTaskStatusUseCase {
  HiveUpdateTaskStatusUseCase(this.service);
  final TaskService service;
  @override
  Future<void> call(int index) {
    return service.updateTaskStatus(index);
  }
}
