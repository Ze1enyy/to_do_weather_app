import 'package:to_do_app/assembly/factory.dart';
import 'package:to_do_app/backbone/api_uri.dart';
import 'package:to_do_app/data/model/weather_dto.dart';
import 'package:to_do_app/domain/entity/weather.dart';

class WeatherFromDtoFactory implements Factory<Weather, WeatherDto> {
  @override
  Weather create(WeatherDto param) => Weather(
        humidity: param.humidity,
        pressure: param.pressure,
        windSpeed: param.windSpeed,
        cloudiness: param.cloudiness,
        description: param.description,
        temperature: param.temperature,
        cityName: param.cityName,
        countryCode: param.countryCode,
        weatherImageUrl: ApiUri.buildImageUrl(param.weatherImageCode),
      );
}
