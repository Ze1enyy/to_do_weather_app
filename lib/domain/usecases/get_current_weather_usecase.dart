import 'package:to_do_app/domain/entity/weather.dart';

import 'package:to_do_app/domain/services/weather_service.dart';

abstract class GetCurrentWeatherUseCase {
  GetCurrentWeatherUseCase();

  Future<Weather> call();
}

class RemoteGetCurrentWeatherUseCase implements GetCurrentWeatherUseCase {
  RemoteGetCurrentWeatherUseCase(this.service);
  final WeatherService service;
  @override
  Future<Weather> call() {
    return service.getCurrentWeather();
  }
}
