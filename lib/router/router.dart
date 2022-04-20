import 'package:go_router/go_router.dart';
import 'package:weather/features/geolocation/infrastructure/location_repository.dart';
import 'package:weather/features/weather/presentations/weather_screen.dart';
import 'package:weather/modules/injection/injection.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) {
        final coordinate = getIt<LocationRepository>().coordinate;
        return WeatherScreen(coordinate: coordinate);
      },
    )
  ],
);
