import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/enums/language.dart';
import 'package:weather/enums/weather_display_mode.dart';
import 'package:weather/enums/weather_unit.dart';
import 'package:weather/features/weather/domain/failures.dart';
import 'package:weather/features/weather/domain/i_weather_repository.dart';
import 'package:weather/features/weather/domain/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepository weatherRepository;
  WeatherBloc(this.weatherRepository) : super(WeatherState.initial()) {
    on<_Load>(_onLoad);
    on<_ChangeDisplayMode>(_onChangeDisplayMode);
  }

  FutureOr<void> _onLoad(_Load event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(loading: true));

    final res = await weatherRepository.get(
      lat: event.lat,
      lon: event.lon,
      lang: event.lang,
      units: event.units,
    );

    emit(state.copyWith(loading: false, failureOrSuccess: res));
  }

  FutureOr<void> _onChangeDisplayMode(_ChangeDisplayMode event, Emitter<WeatherState> emit) {
    emit(state.copyWith(displayMode: event.displayMode));
  }
}
