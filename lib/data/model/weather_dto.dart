class WeatherDto {
  WeatherDto({
    required this.temperature,
    required this.humidity,
    required this.pressure,
    required this.description,
    required this.windSpeed,
    required this.weatherImageCode,
    required this.cloudiness,
    required this.cityName,
    required this.countryCode,
  });
  final double temperature;
  final int humidity;
  final int pressure;
  final int cloudiness;
  final String description;
  final double windSpeed;
  final String weatherImageCode;
  final String countryCode;
  final String cityName;
}
