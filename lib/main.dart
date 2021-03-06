import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:weather/features/geolocation/infrastructure/location_repository.dart';
import 'package:weather/modules/injection/injection.dart';
import 'package:weather/router/router.dart';

void main() => runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        // Makes instances of classes for DI
        configureInjection(Environment.dev);

        // Initial Hive local database
        await Hive.initFlutter();

        // Forces device orientation to be portrait
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

        Future.delayed(const Duration(seconds: 3), () => runApp(const WeatherApp()));
      },
      (error, stackTrace) {/* send error */},
    );

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

          // Localizations
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,

          // App`s theme
          theme: ThemeData(primarySwatch: Colors.blue),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.dark,

          // Router
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        );
      },
    );
  }
}
