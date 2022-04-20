import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:weather/features/geolocation/domain/coordinate_pair.dart';
import 'package:weather/features/weather/domain/failures.dart';
import 'package:weather/features/weather/domain/i_weather_repository.dart';
import 'package:weather/features/weather/domain/weather.dart';
import 'package:weather/modules/injection/injection.dart';

class WeatherScreen extends StatelessWidget {
  final CoordinatePair coordinate;

  const WeatherScreen({Key? key, required this.coordinate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder<Either<WeatherFailure, Weather>>(
              future: getIt<IWeatherRepository>().get(lat: coordinate.latitude, lon: coordinate.longitude),
              builder: (context, snapshot) {
                final _weather = snapshot.data;

                if (_weather == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                return _weather.fold(
                  (_) => const Center(
                    child: Text('Occurred an error'),
                  ),
                  (weather) => ListView.builder(
                    itemCount: weather.forecasts.size,
                    itemBuilder: (context, i) {
                      final w = weather.forecasts.get(i);
                      return ListTile(
                        title: Container(
                          color: w.isDay ? Colors.yellow : Colors.grey,
                          child: Column(
                            children: [
                              Text("Temp: ${w.temp}"),
                              Text("tempMin: ${w.tempMin}"),
                              Text("tempMax: ${w.tempMax}"),
                              Text("humidity: ${w.humidity}"),
                              Text("description: ${w.description}"),
                              Text("icon: ${w.icon}"),
                              Text("dateTime: ${w.dateTime}"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
