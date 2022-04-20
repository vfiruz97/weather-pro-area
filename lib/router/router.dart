import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/enums/weather_unit.dart';
import 'package:weather/features/geolocation/infrastructure/location_repository.dart';
import 'package:weather/features/weather/application/weather/weather_bloc.dart';
import 'package:weather/features/weather/presentations/weather_screen.dart';
import 'package:weather/modules/injection/injection.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) {
        // Current Location
        final coordinate = getIt<LocationRepository>().coordinate;
        // System Localization
        final Locale locale = Localizations.localeOf(context);

        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<WeatherBloc>()
                ..add(WeatherEvent.load(
                  lat: coordinate.latitude,
                  lon: coordinate.longitude,
                  locale: locale,
                  units: WeatherUnit.metric,
                )),
            ),
          ],
          child: WeatherScreen(coordinate: coordinate),
        );
      },
    )
  ],
);
