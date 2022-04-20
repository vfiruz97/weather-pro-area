import 'package:flutter/widgets.dart';
import 'package:weather/features/geolocation/domain/coordinate_pair.dart';

/// [_WeatherApiConfigs] has configs of weather api
class _WeatherApiConfigs {
  const _WeatherApiConfigs._();

  // base url
  final String baseUrl = 'https://api.openweathermap.org';

  // api key
  final String key = '0c5637c48327a1b7100f55b7704e8e35';
}

/// [_GeoLocationConfigs] has configs of device location
class _GeoLocationConfigs {
  const _GeoLocationConfigs._();

  // default coordination
  // UA, Kiev
  final CoordinatePair defaultLocation = const CoordinatePair(latitude: 50.4333, longitude: 30.5167);
}

class Configs {
  const Configs._();
  // Default locale
  static const Locale defaultLocale = Locale('en');

  // Weather api configs
  static const _WeatherApiConfigs weatherApi = _WeatherApiConfigs._();

  // Geo-location configs
  static const _GeoLocationConfigs geoLocation = _GeoLocationConfigs._();
}
