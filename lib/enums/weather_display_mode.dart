enum WeatherDisplayMode { hourly, daily }

extension WeatherDisplayModeExtension on WeatherDisplayMode {
  String get value {
    switch (this) {
      case WeatherDisplayMode.daily:
        return 'Daily';
      case WeatherDisplayMode.hourly:
        return 'Hourly';
      default:
        return 'Unknown';
    }
  }
}
