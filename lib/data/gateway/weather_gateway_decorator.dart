import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:to_do_app/data/gateway/hive_weather_gateway.dart';
import 'package:to_do_app/data/gateway/remote_weather_gateway.dart';
import 'package:to_do_app/domain/entity/weather.dart';

// Class-decorator. If device is offline - uses cached hive data, if online - fetches new from api
class WeatherGatewayDecorator {
  WeatherGatewayDecorator(
    this._hiveWeatherGateway,
    this._remoteWeatherGateway,
  );

  final HiveWeatherGateway _hiveWeatherGateway;
  final RemoteWeatherGateway _remoteWeatherGateway;

  Future<Weather> getCurrentWeather() async {
    return Connectivity().checkConnectivity().then((result) async {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        final weather = await _remoteWeatherGateway.fetchCurrentWeather();
        await _hiveWeatherGateway.storeWeather(weather);
        return weather;
      } else {
        await _hiveWeatherGateway.openBox();
        return _hiveWeatherGateway.getCurrentWeather();
      }
    });
  }
}
