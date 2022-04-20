import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather({
    required String temp,
    required String feelsLike,
    required String tempMin,
    required String tempMax,
    required String description,
    required bool isDay,
    required double pop,
    required DateTime dateTime,
  }) = _Weather;
}
