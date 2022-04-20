import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/enums/weather_display_mode.dart';
import 'package:weather/features/geolocation/domain/coordinate_pair.dart';
import 'package:weather/features/weather/application/weather/weather_bloc.dart';
import 'package:weather/features/weather/presentations/widgets/weather_daily_forecast.dart';
import 'package:weather/features/weather/presentations/widgets/weather_error.dart';
import 'package:weather/features/weather/presentations/widgets/weather_hourly_forcast.dart';
import 'package:weather/features/weather/presentations/widgets/weather_loading.dart';

class WeatherScreen extends StatelessWidget {
  final CoordinatePair coordinate;

  const WeatherScreen({Key? key, required this.coordinate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherBloc = context.watch<WeatherBloc>();

    if (weatherBloc.state.loading) {
      return const WeatherLoading();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        actions: [
          PopupMenuButton<WeatherDisplayMode>(
            onSelected: (choice) => weatherBloc.add(WeatherEvent.changeDisplayMode(choice)),
            initialValue: weatherBloc.state.displayMode,
            icon: const Icon(Icons.menu_open),
            tooltip: 'Mode',
            itemBuilder: (BuildContext context) {
              return WeatherDisplayMode.values.map((choice) {
                return PopupMenuItem<WeatherDisplayMode>(
                  value: choice,
                  child: Text(choice.value),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: weatherBloc.state.failureOrSuccess?.fold(
            (failure) => failure.map(
              unexpected: (_) => const WeatherError(errorMessage: 'Unexpected error'),
              noConnection: (_) => const WeatherError(errorMessage: 'No connection'),
            ),
            (weather) {
              if (weatherBloc.state.displayMode == WeatherDisplayMode.hourly) {
                return WeatherHourlyForecast(weather: weather);
              }
              return WeatherDailyForecast(weather: weather);
            },
          ),
        ),
      ),
    );
  }
}
