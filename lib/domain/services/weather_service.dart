import 'package:to_do_app/domain/entity/weather.dart';

abstract class WeatherService {
  Future<Weather> getCurrentWeather();
}
