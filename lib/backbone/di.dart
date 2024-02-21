import 'package:get_it/get_it.dart';
import 'package:to_do_app/data/gateway/hive_task_gateway.dart';
import 'package:to_do_app/data/service/hive_task_service.dart';
import 'package:to_do_app/domain/services/task_service.dart';
import 'package:to_do_app/domain/usecases/add_task_usecase.dart';
import 'package:to_do_app/domain/usecases/get_filtered_tasks.dart';
import 'package:to_do_app/domain/usecases/get_task_usecase.dart';
import 'package:to_do_app/domain/usecases/remove_task_usecase.dart';
import 'package:to_do_app/domain/usecases/update_task_usecase.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';

final GetIt sl = GetIt.instance;

void _registerServices() {
  sl.registerLazySingleton<TaskService>(
    () => HiveTaskService(sl.get()),
  );
}

void _registerGateways() {
  sl.registerLazySingleton<HiveTaskGateway>(
    () => HiveTaskGateway(),
  );
}

void _registerFactories() {}

void _registerUseCases() {
  sl
    ..registerLazySingleton<GetTasksUseCase>(
      () => HiveGetTasksUseCase(sl.get()),
    )
    ..registerLazySingleton<GetFilteredTasksUseCase>(
      () => HiveGetFilteredTasksUseCase(sl.get()),
    )
    ..registerLazySingleton<AddTaskUseCase>(
      () => HiveAddTaskUseCase(sl.get()),
    )
    ..registerLazySingleton<RemoveTaskUseCase>(
      () => HiveRemoveTaskUseCase(sl.get()),
    )
    ..registerLazySingleton<UpdateTaskStatusUseCase>(
      () => HiveUpdateTaskStatusUseCase(sl.get()),
    );
}

void _registerBlocs() {
  sl.registerLazySingleton<TaskBloc>(
    () => TaskBloc(sl.get(), sl.get(), sl.get(), sl.get(), sl.get()),
  );
}

Future<void> init() async {
  _registerGateways();
  _registerServices();
  _registerFactories();
  _registerUseCases();
  _registerBlocs();
}
