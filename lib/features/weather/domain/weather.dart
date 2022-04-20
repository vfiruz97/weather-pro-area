import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'weather.freezed.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather({
    required String cityName,
    required KtList<WeatherForecast> forecasts,
  }) = _Weather;
}

@freezed
abstract class WeatherForecast with _$WeatherForecast {
  const factory WeatherForecast({
    required String temp,
    required String tempMin,
    required String tempMax,
    required String description,
    required String icon,
    required bool isDay,
    required int humidity,
    required DateTime dateTime,
  }) = _WeatherForecast;
}
