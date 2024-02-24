import 'package:to_do_app/assembly/factory.dart';
import 'package:to_do_app/data/model/weather_dto.dart';

class WeatherDtoFromJsonFactory
    implements Factory<WeatherDto, Map<String, dynamic>> {
  @override
  WeatherDto create(Map<String, dynamic> param) => WeatherDto(
        temperature: param['main']['temp'],
        description: param['weather'][0]['description'],
        humidity: param['main']['humidity'],
        cloudiness: param['clouds']['all'],
        pressure: param['main']['pressure'],
        windSpeed: param['wind']['speed'],
        weatherImageCode: param['weather'][0]['icon'],
        cityName: param['name'],
        countryCode: param['sys']['country'],
      );
}
