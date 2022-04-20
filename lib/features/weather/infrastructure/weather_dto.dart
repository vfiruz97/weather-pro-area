import 'dart:convert';

import 'package:weather/features/weather/domain/weather.dart';

// Note for tester
// Don`t worry most of this code was generated
// automatic by IDE plugin.
class WeatherDto {
  final String temp;
  final String feelsLike;
  final String tempMin;
  final String tempMax;
  final String pod;
  final String description;
  final String pop;
  final String dtTxt;

  WeatherDto({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pod,
    required this.description,
    required this.pop,
    required this.dtTxt,
  });

  Weather toDomain() {
    return Weather(
      temp: temp,
      feelsLike: feelsLike,
      tempMin: tempMin,
      tempMax: tempMax,
      description: description,
      isDay: pod == 'd',
      pop: double.tryParse(pop) ?? 0,
      dateTime: DateTime.parse(dtTxt),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'temp': temp,
      'feelsLike': feelsLike,
      'tempMin': tempMin,
      'tempMax': tempMax,
      'pod': pod,
      'description': description,
      'pop': pop,
      'dtTxt': dtTxt,
    };
  }

  factory WeatherDto.fromMap(Map<String, dynamic> map) {
    return WeatherDto(
      temp: (map['main']['temp'] ?? '').toString(),
      feelsLike: (map['main']['feels_like'] ?? '').toString(),
      tempMin: (map['main']['temp_min'] ?? '').toString(),
      tempMax: (map['main']['temp_max'] ?? '').toString(),
      pod: (map['sys']['pod'] ?? '').toString(),
      description: (map['weather'][0]['description'] ?? '').toString(),
      pop: (map['pop'] ?? '').toString(),
      dtTxt: (map['dt_txt'] ?? '').toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherDto.fromJson(String source) => WeatherDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'WeatherDto(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pod: $pod, description: $description, pop: $pop, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeatherDto &&
        other.temp == temp &&
        other.feelsLike == feelsLike &&
        other.tempMin == tempMin &&
        other.tempMax == tempMax &&
        other.pod == pod &&
        other.description == description &&
        other.pop == pop &&
        other.dtTxt == dtTxt;
  }

  @override
  int get hashCode {
    return temp.hashCode ^
        feelsLike.hashCode ^
        tempMin.hashCode ^
        tempMax.hashCode ^
        pod.hashCode ^
        description.hashCode ^
        pop.hashCode ^
        dtTxt.hashCode;
  }
}
