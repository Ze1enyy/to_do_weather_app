import 'package:to_do_app/domain/services/task_service.dart';

abstract class AddTaskUseCase {
  AddTaskUseCase();

  Future<void> call(
      {required String title,
      required String description,
      required String category});
}

class HiveAddTaskUseCase implements AddTaskUseCase {
  HiveAddTaskUseCase(this.service);
  final TaskService service;
  @override
  Future<void> call(
      {required String title,
      required String description,
      required String category}) async {
    await service.addTask(
      title: title,
      category: category,
      description: description,
    );
  }
}
