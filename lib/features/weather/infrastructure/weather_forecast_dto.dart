import 'dart:convert';

import 'package:weather/features/weather/domain/weather.dart';

// Note for tester
// Don`t worry most of this code was generated
// automatic by IDE plugin.
/// DTO for [ForecastWeather]
class WeatherForecastDto {
  final String temp;
  final String tempMin;
  final String tempMax;
  final String description;
  final String icon;
  final String pod;
  final String humidity;
  final String dateTime;

  WeatherForecastDto({
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.description,
    required this.icon,
    required this.pod,
    required this.humidity,
    required this.dateTime,
  });

  WeatherForecast toDomain() {
    return WeatherForecast(
      temp: temp,
      tempMin: tempMin,
      tempMax: tempMax,
      description: description,
      icon: icon,
      isDay: pod == 'd',
      humidity: int.tryParse(humidity) ?? 0,
      dateTime: DateTime.parse(dateTime),
    );
  }

  WeatherForecastDto copyWith({
    String? temp,
    String? tempMin,
    String? tempMax,
    String? description,
    String? icon,
    String? pod,
    String? humidity,
    String? dateTime,
  }) {
    return WeatherForecastDto(
      temp: temp ?? this.temp,
      tempMin: tempMin ?? this.tempMin,
      tempMax: tempMax ?? this.tempMax,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      pod: pod ?? this.pod,
      humidity: humidity ?? this.humidity,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'temp': temp,
      'tempMin': tempMin,
      'tempMax': tempMax,
      'description': description,
      'icon': icon,
      'pod': pod,
      'humidity': humidity,
      'dateTime': dateTime,
    };
  }

  factory WeatherForecastDto.fromMap(Map<String, dynamic> map) {
    return WeatherForecastDto(
      temp: (map['main']['temp'] ?? '').toString(),
      tempMin: (map['main']['temp_min'] ?? '').toString(),
      tempMax: (map['main']['temp_max'] ?? '').toString(),
      description: (map['weather'][0]['description'] ?? '').toString(),
      icon: (map['weather'][0]['icon'] ?? '').toString(),
      pod: (map['sys']['pod'] ?? '').toString(),
      humidity: (map['main']['humidity'] ?? '').toString(),
      dateTime: (map['dt_txt'] ?? '').toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherForecastDto.fromJson(String source) => WeatherForecastDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ForecastWeatherDto(temp: $temp, tempMin: $tempMin, tempMax: $tempMax, description: $description, icon: $icon, pod: $pod, humidity: $humidity, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeatherForecastDto &&
        other.temp == temp &&
        other.tempMin == tempMin &&
        other.tempMax == tempMax &&
        other.description == description &&
        other.icon == icon &&
        other.pod == pod &&
        other.humidity == humidity &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return temp.hashCode ^
        tempMin.hashCode ^
        tempMax.hashCode ^
        description.hashCode ^
        icon.hashCode ^
        pod.hashCode ^
        humidity.hashCode ^
        dateTime.hashCode;
  }
}
