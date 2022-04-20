import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:weather/features/geolocation/infrastructure/location_repository.dart';
import 'package:weather/modules/injection/injection.dart';
import 'package:weather/router/router.dart';

void main() async {
  // Makes instances of classes for DI
  configureInjection(Environment.dev);

  // Initial Hive local database
  await Hive.initFlutter();

  // Forces device orientation to be portrait
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // retrieves device location and notifies listener
      animation: getIt<LocationRepository>()..getCurrentLocation(),
      builder: (context, _) {
        return MaterialApp.router(
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

          // Router
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        );
      },
    );
  }
}
