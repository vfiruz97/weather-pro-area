enum WeatherUnit { metric, imperial, standard }

extension WeatherUnitExtension on WeatherUnit {
  String get value {
    switch (this) {
      case WeatherUnit.metric:
        return 'metric';
      case WeatherUnit.imperial:
        return 'imperial';
      case WeatherUnit.standard:
        return 'standard';
      default:
        return 'Unknown';
    }
  }
}
