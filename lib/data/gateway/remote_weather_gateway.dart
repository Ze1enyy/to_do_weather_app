import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:to_do_app/assembly/factory.dart';
import 'package:to_do_app/backbone/api_uri.dart';
import 'package:to_do_app/data/gateway/geolocation_gateway.dart';
import 'package:to_do_app/data/model/weather_dto.dart';
import 'package:to_do_app/domain/entity/weather.dart';

class RemoteWeatherGateway {
  RemoteWeatherGateway(
    this.jsonFactory,
    this.dtoFactory,
    this.geolocationGateway,
  );
  final Factory<WeatherDto, Map<String, dynamic>> jsonFactory;
  final Factory<Weather, WeatherDto> dtoFactory;
  final GeolocationGateway geolocationGateway;

  // Getting api key from environment
  final _apiKey = dotenv.env['WEATHER_API_KEY'];

  /*
  In this case, using Dio will be an overhead, as it provides much wider functionality than HTTP. 
  Application uses basic functionality for HTTP requests, so this makes Http a good choice for small projects and simple use cases.
  */

  Future<Weather> fetchCurrentWeather() async {
    final position = await geolocationGateway.getCurrentLocation();

    final response = await http.get(
      Uri.parse(
        '${ApiUri.baseUrl}?lat=${position.latitude}&lon=${position.longitude}&units=metric&appid=$_apiKey',
      ),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final weatherDto = jsonFactory.create(data);
      final weather = dtoFactory.create(weatherDto);
      return weather;
    } else {
      throw Exception('Failed to fetch weather');
    }
  }
}
