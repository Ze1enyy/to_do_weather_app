import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/domain/usecases/add_task_usecase.dart';
import 'package:to_do_app/domain/usecases/get_task_usecase.dart';
import 'package:to_do_app/domain/usecases/remove_task_usecase.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc(this._addTaskUseCase, this._getTasksUseCase, this._removeTaskUseCase)
      : super(const _Initial()) {
    on<TaskEvent>((event, emit) async {
      await event.when(
        getTasks: () {
          return _getTasks(emit);
        },
        addTask: (title, description, category) {
          return _addTask(emit,
              title: title, description: description, category: category);
        },
        removeTask: (index) {
          return _removeTask(emit, index);
        },
      );
    });
  }

  Future<void> _removeTask(Emitter<TaskState> emit, int index) {
    return _removeTaskUseCase.call(index).then((value) => _getTasks(emit));
  }

  Future<void> _getTasks(Emitter<TaskState> emit) {
    return _getTasksUseCase.call().then((tasks) => emit(_Loaded(tasks)));
  }

  Future<void> _addTask(Emitter<TaskState> emit,
      {required String title,
      required String description,
      required String category}) async {
    await _addTaskUseCase
        .call(title: title, description: description, category: category)
        .then((value) => _getTasks(emit));
  }

  final AddTaskUseCase _addTaskUseCase;
  final GetTasksUseCase _getTasksUseCase;
  final RemoveTaskUseCase _removeTaskUseCase;
}
