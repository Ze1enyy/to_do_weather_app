import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_app/backbone/di.dart';
import 'package:to_do_app/backbone/formatting_utils.dart';
import 'package:to_do_app/gen/assets.gen.dart';
import 'package:to_do_app/presentation/bloc/connectivity/bloc/connectivity_bloc.dart';
import 'package:to_do_app/presentation/bloc/weather/bloc/weather_bloc.dart';
import 'package:to_do_app/presentation/widget/weather_conditions.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  final _weatherBloc = sl<WeatherBloc>();
  final _connectivityBloc = sl<ConnectivityBloc>();

  @override
  void initState() {
    super.initState();
    _connectivityBloc.add(const GetConnectionStatusEvent());
    _weatherBloc.add(const GetCurrentWeatherEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityBloc, ConnectivityState>(
      bloc: _connectivityBloc,
      listener: (context, state) {
        // listening for any changes in connection status
        _weatherBloc.add(const GetCurrentWeatherEvent());
      },
      child: BlocBuilder<WeatherBloc, WeatherState>(
        bloc: _weatherBloc,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const CircularProgressIndicator(),
            loaded: (weather) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '${weather.cityName}, ${weather.countryCode}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: Center(
                                  child: Text(
                                    '${weather.temperature.toString()}°C',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Text(
                                FormattingUtils.capitalize(
                                  weather.description,
                                ),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Image.network(
                                weather.weatherImageUrl,
                                errorBuilder: (context, error, stackTrace) {
                                  // placeholder for offline mode, since weather icon are fetched from api
                                  return SvgPicture.asset(
                                    Assets.svg.cloudiness,
                                    height: 50,
                                    width: 50,
                                  );
                                },
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              )
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WeatherCondition(
                            condition: '${weather.cloudiness}%',
                            imageAsset: Assets.svg.cloudiness,
                          ),
                          WeatherCondition(
                            condition: '${weather.humidity}%',
                            imageAsset: Assets.svg.humidity,
                          ),
                          WeatherCondition(
                            condition: '${weather.pressure} Pa',
                            imageAsset: Assets.svg.pressure,
                          ),
                          WeatherCondition(
                            condition: '${weather.windSpeed}km/h',
                            imageAsset: Assets.svg.wind,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            error: (error) => Center(child: Text(error.toString())),
          );
        },
      ),
    );
  }
}
