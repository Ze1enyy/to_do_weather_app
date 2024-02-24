import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/domain/entity/weather.dart';
import 'package:to_do_app/domain/usecases/get_current_weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this._getCurrentWeatherUseCase) : super(const _Initial()) {
    on<WeatherEvent>((event, emit) async {
      await event.when(
        getCurrentWeather: () => _getCurrentWeather(emit),
      );
    });
  }

  Future<void> _getCurrentWeather(Emitter<WeatherState> emit) async {
    emit(const _Loading());
    try {
      final weather = await _getCurrentWeatherUseCase.call();
      emit(_Loaded(weather));
    } catch (e) {
      emit(_Error(e));
    }
  }

  final GetCurrentWeatherUseCase _getCurrentWeatherUseCase;
}
