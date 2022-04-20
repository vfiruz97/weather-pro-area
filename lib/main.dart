import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:weather/features/geolocation/domain/coordinate_pair.dart';
import 'package:weather/features/geolocation/infrastructure/location_repository.dart';
import 'package:weather/features/weather/domain/i_weather_repository.dart';
import 'package:weather/modules/injection/injection.dart';

void main() async {
  // Makes instances of classes for DI
  configureInjection(Environment.dev);

  // Initial Hive local database
  await Hive.initFlutter();

  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    // retrieves device location
    final locationService = getIt<LocationRepository>()..getCurrentLocation();

    return AnimatedBuilder(
        animation: locationService,
        builder: (context, _) {
          return MaterialApp(
            title: 'Weather App',
            restorationScopeId: 'app',
            debugShowCheckedModeBanner: false,

            // Provide the generated AppLocalizations to the MaterialApp.
            localizationsDelegates: const [
              // AppLocalizations.delegate,
              // GlobalMaterialLocalizations.delegate,
              // GlobalWidgetsLocalizations.delegate,
              // GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''), // English, no country code
              Locale('ru', 'RU'), // Russian, Russia
            ],

            // App`s theme
            theme: ThemeData(primarySwatch: Colors.blue),
            darkTheme: ThemeData.dark(),
            themeMode: ThemeMode.system,

            home: MyHomePage(coordinate: locationService.coordinate),
          );
        });
  }
}

class MyHomePage extends StatelessWidget {
  final CoordinatePair coordinate;

  const MyHomePage({
    Key? key,
    required this.coordinate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<LocationRepository>(
      create: (context) => getIt<LocationRepository>(),
      child: Scaffold(
        body: SafeArea(
          child: Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: FutureBuilder(
                future: getIt<IWeatherRepository>().get(lat: coordinate.latitude, lon: coordinate.longitude),
                builder: (context, snapshot) {
                  return Text(snapshot.data?.toString() ?? '');
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
