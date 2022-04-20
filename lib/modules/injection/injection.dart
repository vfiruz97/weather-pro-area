import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) async {
  $initGetIt(getIt, environment: env);
}

@module
abstract class RegisterModule {
  @singleton
  InternetConnectionChecker internetConnectionChecker() => InternetConnectionChecker();

  @singleton
  GeolocatorPlatform geolocator() => GeolocatorPlatform.instance;
}
