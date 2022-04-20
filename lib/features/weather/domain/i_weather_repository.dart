import 'package:dartz/dartz.dart';
import 'package:weather/enums/language.dart';
import 'package:weather/enums/weather_unit.dart';
import 'package:weather/features/weather/domain/failures.dart';
import 'package:weather/features/weather/domain/weather.dart';

abstract class IWeatherRepository {
  Future<Either<WeatherFailure, Weather>> get({
    required double lat,
    required double lon,
    Language lang = Language.en,
    WeatherUnit units = WeatherUnit.metric,
  });
}
