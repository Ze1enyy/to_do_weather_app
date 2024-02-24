part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.getTasks() = GetTasksEvent;
  const factory TaskEvent.addTask({
    required String title,
    required String description,
    required String category,
  }) = AddTaskEvent;
  const factory TaskEvent.removeTask(String id) = RemoveTaskEvent;
  const factory TaskEvent.updateTaskStatus(String id) = UpdateTaskStatusEvent;
  const factory TaskEvent.filterTasks(
    List<String>? category,
    bool? isTaskCompleted,
  ) = FilterTasksEvent;
}
