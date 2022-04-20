part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required WeatherDisplayMode displayMode,
    required bool loading,
    required Either<WeatherFailure, Weather>? failureOrSuccess,
  }) = _WeatherState;

  factory WeatherState.initial() => const WeatherState(
        displayMode: WeatherDisplayMode.daily,
        loading: false,
        failureOrSuccess: null,
      );
}
