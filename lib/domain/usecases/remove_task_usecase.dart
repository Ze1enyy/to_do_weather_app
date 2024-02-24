import 'package:to_do_app/domain/services/task_service.dart';

abstract class RemoveTaskUseCase {
  RemoveTaskUseCase();

  Future<void> call(String id);
}

class HiveRemoveTaskUseCase implements RemoveTaskUseCase {
  HiveRemoveTaskUseCase(this.service);
  final TaskService service;
  @override
  Future<void> call(String id) async {
    await service.removeTask(id);
  }
}
