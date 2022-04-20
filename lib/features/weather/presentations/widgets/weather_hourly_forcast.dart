import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:weather/features/weather/domain/weather.dart';

class WeatherHourlyForecast extends StatelessWidget {
  const WeatherHourlyForecast({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final KtList<KtList<WeatherForecast>> forecasts = weather.filterByHour;

    return ListView.builder(
      itemCount: forecasts.size,
      itemBuilder: (context, i) {
        final _forecasts = forecasts.get(i);

        // First item with title
        if (i == 0) {
          return _firstItem(context, _forecasts);
        }
        return _listItem(_forecasts, context);
      },
    );
  }

  Column _firstItem(BuildContext context, KtList<WeatherForecast> _forecasts) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              weather.cityName,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  // Date Y-m-d
                  _forecasts.get(0).dateFormattedMMMEd,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _forecasts.size,
                    itemBuilder: (context, j) {
                      final forecast = _forecasts.get(j);
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(forecast.dateFormattedHm, style: Theme.of(context).textTheme.subtitle2),
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image(image: CachedNetworkImageProvider(forecast.iconUrl)),
                              ),
                              Text(forecast.description,
                                  style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 12)),
                              Row(
                                children: [
                                  Text("${forecast.tempMin} °C",
                                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 12)),
                                  const SizedBox(width: 6),
                                  Text("${forecast.tempMax} °C",
                                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Card _listItem(KtList<WeatherForecast> _forecasts, BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              _forecasts.get(0).dateFormattedMMMEd,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _forecasts.size,
                itemBuilder: (context, j) {
                  final forecast = _forecasts.get(j);
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(forecast.dateFormattedHm, style: Theme.of(context).textTheme.subtitle2),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Image(image: CachedNetworkImageProvider(forecast.iconUrl)),
                          ),
                          Text(forecast.description,
                              style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 12)),
                          Row(
                            children: [
                              Text("${forecast.tempMin} °C",
                                  style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 12)),
                              const SizedBox(width: 6),
                              Text("${forecast.tempMax} °C",
                                  style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
