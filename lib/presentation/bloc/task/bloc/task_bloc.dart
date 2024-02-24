import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/domain/usecases/add_task_usecase.dart';
import 'package:to_do_app/domain/usecases/get_filtered_tasks.dart';
import 'package:to_do_app/domain/usecases/get_task_usecase.dart';
import 'package:to_do_app/domain/usecases/remove_task_usecase.dart';
import 'package:to_do_app/domain/usecases/update_task_usecase.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc(
    this._addTaskUseCase,
    this._getTasksUseCase,
    this._removeTaskUseCase,
    this._getFilteredTasksUseCase,
    this._updateTaskUseCase,
  ) : super(const _Initial()) {
    on<TaskEvent>((event, emit) async {
      await event.when(
        getTasks: () => _getTasks(emit),
        addTask: (title, description, category) => _addTask(emit,
            title: title, description: description, category: category),
        removeTask: _removeTask,
        filterTasks: (category, isTaskCompleted) =>
            _filterTasks(emit, category, isTaskCompleted),
        updateTaskStatus: _updateTaskStatus,
      );
    });
  }

  Future<void> _removeTask(String id) {
    return _removeTaskUseCase.call(id);
  }

  Future<void> _updateTaskStatus(String id) {
    return _updateTaskUseCase(id);
  }

  Future<void> _filterTasks(
    Emitter<TaskState> emit,
    List<String>? category,
    bool? isTaskCompleted,
  ) {
    return _getFilteredTasksUseCase(
      category,
      isTaskCompleted,
    ).then((value) => emit(_Loaded(value)));
  }

  Future<void> _getTasks(Emitter<TaskState> emit) {
    return _getTasksUseCase.call().then((tasks) => emit(_Loaded(tasks)));
  }

  Future<void> _addTask(
    Emitter<TaskState> emit, {
    required String title,
    required String description,
    required String category,
  }) async {
    await _addTaskUseCase.call(
      title: title,
      description: description,
      category: category,
    );
  }

  final AddTaskUseCase _addTaskUseCase;
  final GetTasksUseCase _getTasksUseCase;
  final RemoveTaskUseCase _removeTaskUseCase;
  final GetFilteredTasksUseCase _getFilteredTasksUseCase;
  final UpdateTaskStatusUseCase _updateTaskUseCase;
}
