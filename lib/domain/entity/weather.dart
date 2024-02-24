import 'package:hive/hive.dart';

part 'weather.g.dart';

@HiveType(typeId: 2)
class Weather {
  Weather({
    required this.temperature,
    required this.humidity,
    required this.pressure,
    required this.description,
    required this.windSpeed,
    required this.weatherImageUrl,
    required this.cloudiness,
    required this.cityName,
    required this.countryCode,
  });
  @HiveField(0)
  final double temperature;
  @HiveField(1)
  final int humidity;
  @HiveField(2)
  final int pressure;
  @HiveField(3)
  final int cloudiness;
  @HiveField(4)
  final String description;
  @HiveField(5)
  final double windSpeed;
  @HiveField(6)
  final String weatherImageUrl;
  @HiveField(7)
  final String countryCode;
  @HiveField(8)
  final String cityName;
}
