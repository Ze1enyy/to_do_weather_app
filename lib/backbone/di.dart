import 'package:get_it/get_it.dart';
import 'package:to_do_app/assembly/entity/weather_from_dto_factory.dart';
import 'package:to_do_app/assembly/factory.dart';
import 'package:to_do_app/assembly/model/weather_factory.dart';
import 'package:to_do_app/data/gateway/connectivity_gateway.dart';
import 'package:to_do_app/data/gateway/hive_task_gateway.dart';
import 'package:to_do_app/data/gateway/hive_weather_gateway.dart';
import 'package:to_do_app/data/gateway/remote_weather_gateway.dart';
import 'package:to_do_app/data/gateway/weather_gateway_decorator.dart';
import 'package:to_do_app/data/model/weather_dto.dart';
import 'package:to_do_app/data/service/connectivity_repository.dart';
import 'package:to_do_app/data/service/task_repository.dart';
import 'package:to_do_app/data/service/weather_repository.dart';
import 'package:to_do_app/domain/entity/weather.dart';
import 'package:to_do_app/domain/services/connectivity_service.dart';
import 'package:to_do_app/domain/services/task_service.dart';
import 'package:to_do_app/domain/services/weather_service.dart';
import 'package:to_do_app/domain/usecases/add_task_usecase.dart';
import 'package:to_do_app/domain/usecases/get_connection_status_usecase.dart';
import 'package:to_do_app/domain/usecases/get_current_weather_usecase.dart';
import 'package:to_do_app/domain/usecases/get_filtered_tasks.dart';
import 'package:to_do_app/domain/usecases/get_task_usecase.dart';
import 'package:to_do_app/domain/usecases/remove_task_usecase.dart';
import 'package:to_do_app/domain/usecases/update_task_usecase.dart';
import 'package:to_do_app/presentation/bloc/connectivity/bloc/connectivity_bloc.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';
import 'package:to_do_app/presentation/bloc/weather/bloc/weather_bloc.dart';

final GetIt sl = GetIt.instance;

void _registerServices() {
  sl
    ..registerLazySingleton<TaskService>(
      () => TaskRepository(sl.get()),
    )
    ..registerLazySingleton<WeatherService>(
      () => WeatherRepository(sl.get()),
    )
    ..registerLazySingleton<ConnectivityService>(
      () => ConnectivityRepository(sl.get()),
    );
}

void _registerGateways() {
  sl
    ..registerLazySingleton<HiveTaskGateway>(
      () => HiveTaskGateway(),
    )
    ..registerLazySingleton<RemoteWeatherGateway>(
      () => RemoteWeatherGateway(sl.get(), sl.get()),
    )
    ..registerLazySingleton<HiveWeatherGateway>(
      () => HiveWeatherGateway(),
    )
    ..registerLazySingleton<WeatherGatewayDecorator>(
      () => WeatherGatewayDecorator(sl.get(), sl.get()),
    )
    ..registerLazySingleton<ConnectivityGateway>(
      () => ConnectivityGateway(),
    );
}

void _registerFactories() {
  sl
    ..registerLazySingleton<Factory<Weather, WeatherDto>>(
      WeatherFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<WeatherDto, Map<String, dynamic>>>(
      WeatherDtoFromJsonFactory.new,
    );
}

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
    )
    ..registerLazySingleton<GetCurrentWeatherUseCase>(
      () => RemoteGetCurrentWeatherUseCase(sl.get()),
    )
    ..registerLazySingleton<GetConnectionStatusUseCase>(
      () => LocalGetConnectionStatusUseCase(sl.get()),
    );
}

void _registerBlocs() {
  sl
    ..registerLazySingleton<TaskBloc>(
      () => TaskBloc(sl.get(), sl.get(), sl.get(), sl.get(), sl.get()),
    )
    ..registerLazySingleton<WeatherBloc>(
      () => WeatherBloc(sl.get()),
    )
    ..registerLazySingleton<ConnectivityBloc>(
      () => ConnectivityBloc(sl.get()),
    );
}

Future<void> init() async {
  _registerGateways();
  _registerServices();
  _registerFactories();
  _registerUseCases();
  _registerBlocs();
}
