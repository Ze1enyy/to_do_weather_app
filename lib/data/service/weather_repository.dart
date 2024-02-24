import 'package:to_do_app/data/gateway/weather_gateway_decorator.dart';
import 'package:to_do_app/domain/entity/weather.dart';
import 'package:to_do_app/domain/services/weather_service.dart';

class WeatherRepository implements WeatherService {
  final WeatherGatewayDecorator _gateway;

  WeatherRepository(this._gateway);

  @override
  Future<Weather> getCurrentWeather() {
    return _gateway.getCurrentWeather();
  }
}
