import 'dart:async';
import 'package:hive/hive.dart';
import 'package:to_do_app/domain/entity/weather.dart';

class HiveWeatherGateway {
  Box<Weather>? _weatherBox;

  Future<void> openBox() async {
    _weatherBox = await Hive.openBox<Weather>('weather');
  }

  Future<void> closeBox() async {
    await _weatherBox?.close();
  }

  Future<void> storeWeather(Weather weather) async {
    await _weatherBox?.add(weather);
  }

  Future<Weather> getCurrentWeather() async {
    final weather = _weatherBox?.values.first;
    if (weather != null) {
      return weather;
    } else {
      throw Exception("Can't load weather from cache.");
    }
  }
}
