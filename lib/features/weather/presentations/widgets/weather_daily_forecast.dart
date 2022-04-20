import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:weather/features/weather/domain/weather.dart';

class WeatherDailyForecast extends StatelessWidget {
  const WeatherDailyForecast({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final KtList<WeatherForecast> forecasts = weather.filterByDay;

    return ListView.builder(
      itemCount: forecasts.size,
      itemBuilder: (context, i) {
        final forecast = forecasts.get(i);

        if (i == 0) {
          // first item with City Name
          return _firstItem(forecast, context);
        }

        return _listItem(forecast, context);
      },
    );
  }

  Container _firstItem(WeatherForecast forecast, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text(
            forecast.dateFormattedyMMMEd,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: Image(image: CachedNetworkImageProvider(forecast.iconUrl)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    weather.cityName,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("${forecast.tempMin} °C", style: Theme.of(context).textTheme.subtitle2),
                      const SizedBox(width: 10),
                      Text("${forecast.tempMax} °C"),
                    ],
                  ),
                  Text(forecast.description, style: Theme.of(context).textTheme.subtitle1),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Card _listItem(WeatherForecast forecast, BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  forecast.dateFormattedMMMEd,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  forecast.description,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
            SizedBox(
              height: 80,
              width: 80,
              child: Image(image: CachedNetworkImageProvider(forecast.iconUrl)),
            ),
            Column(
              children: [
                Text("${forecast.tempMin} °C", style: Theme.of(context).textTheme.subtitle2),
                Text("${forecast.tempMax} °C"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
