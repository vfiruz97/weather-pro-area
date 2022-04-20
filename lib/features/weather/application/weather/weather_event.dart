part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.load(
      {required double lat, required double lon, required Language lang, required WeatherUnit units}) = _Load;
  const factory WeatherEvent.changeDisplayMode(WeatherDisplayMode displayMode) = _ChangeDisplayMode;
}
