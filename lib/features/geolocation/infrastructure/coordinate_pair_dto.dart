import 'dart:convert';

import 'package:weather/features/geolocation/domain/coordinate_pair.dart';

/// Dto for [CoordinatePair]
class CoordinatePairDto {
  final double latitude;
  final double longitude;

  CoordinatePairDto({
    required this.latitude,
    required this.longitude,
  });

  CoordinatePair toDomain() {
    return CoordinatePair(latitude: latitude, longitude: longitude);
  }

  factory CoordinatePairDto.fromDomain(CoordinatePair coordinatePair) {
    return CoordinatePairDto(latitude: coordinatePair.latitude, longitude: coordinatePair.longitude);
  }

  CoordinatePairDto copyWith({
    double? latitude,
    double? longitude,
  }) {
    return CoordinatePairDto(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory CoordinatePairDto.fromMap(Map<String, dynamic> map) {
    return CoordinatePairDto(
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CoordinatePairDto.fromJson(String source) => CoordinatePairDto.fromMap(json.decode(source));

  @override
  String toString() => 'CoordinatePairDto(latitude: $latitude, longitude: $longitude)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CoordinatePairDto && other.latitude == latitude && other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}
