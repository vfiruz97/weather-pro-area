import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:weather/configs/configs.dart';

import 'package:weather/enums/weather_unit.dart';
import 'package:weather/features/weather/domain/failures.dart';
import 'package:weather/features/weather/domain/i_weather_repository.dart';
import 'package:weather/features/weather/domain/weather.dart';
import 'package:weather/features/weather/infrastructure/weather_local.dart';
import 'package:weather/features/weather/infrastructure/weather_remote.dart';

@Singleton(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository {
  final IWeatherLocal weatherLocal;
  final IWeatherRemote weatherRemote;
  final InternetConnectionChecker internetConnectionChecker;

  WeatherRepository({
    required this.weatherLocal,
    required this.weatherRemote,
    required this.internetConnectionChecker,
  });

  @override
  Future<Either<WeatherFailure, Weather>> get({
    required double lat,
    required double lon,
    Locale locale = Configs.defaultLocale,
    WeatherUnit units = WeatherUnit.metric,
  }) async {
    if (await internetConnectionChecker.hasConnection) {
      return weatherRemote.get(lat: lat, lon: lon, locale: locale, units: units);
    }
    return weatherLocal.get();
  }
}
