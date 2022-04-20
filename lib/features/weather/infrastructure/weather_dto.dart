import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:weather/features/weather/domain/weather.dart';

import 'package:weather/features/weather/infrastructure/weather_forecast_dto.dart';

class WeatherDto {
  final String cityName;
  final List<WeatherForecastDto> forecasts;
  WeatherDto({
    required this.cityName,
    required this.forecasts,
  });

  Weather toDomain() {
    return Weather(
      cityName: cityName,
      forecasts: KtList.from(forecasts.map((f) => f.toDomain())),
    );
  }

  WeatherDto copyWith({
    String? cityName,
    List<WeatherForecastDto>? forecasts,
  }) {
    return WeatherDto(
      cityName: cityName ?? this.cityName,
      forecasts: forecasts ?? this.forecasts,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cityName': cityName,
      'forecasts': forecasts.map((x) => x.toMap()).toList(),
    };
  }

  factory WeatherDto.fromMap(Map<String, dynamic> map) {
    return WeatherDto(
      cityName: (map['city']['name'] ?? '').toString(),
      forecasts: List<WeatherForecastDto>.from(map['list']?.map((x) => WeatherForecastDto.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherDto.fromJson(String source) => WeatherDto.fromMap(json.decode(source));

  @override
  String toString() => 'WeatherDto(cityName: $cityName, forecasts: $forecasts)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeatherDto && other.cityName == cityName && listEquals(other.forecasts, forecasts);
  }

  @override
  int get hashCode => cityName.hashCode ^ forecasts.hashCode;
}
