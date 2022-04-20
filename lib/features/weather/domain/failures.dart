import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.unexpected() = _Unexpected;
  const factory WeatherFailure.noConnection() = _NoConnection;
}
