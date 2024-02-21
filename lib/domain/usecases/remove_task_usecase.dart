import 'package:to_do_app/domain/services/task_service.dart';

abstract class RemoveTaskUseCase {
  RemoveTaskUseCase();

  Future<void> call(int index);
}

class HiveRemoveTaskUseCase implements RemoveTaskUseCase {
  HiveRemoveTaskUseCase(this.service);
  final TaskService service;
  @override
  Future<void> call(int index) async {
    await service.removeTask(index);
  }
}
