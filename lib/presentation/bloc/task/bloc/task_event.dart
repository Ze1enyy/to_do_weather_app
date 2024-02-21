part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.getTasks() = GetTasksEvent;
  const factory TaskEvent.addTask(
      {required String title,
      required String description,
      required String category}) = AddTaskEvent;
  const factory TaskEvent.removeTask(int index) = RemoveTaskEvent;
}
