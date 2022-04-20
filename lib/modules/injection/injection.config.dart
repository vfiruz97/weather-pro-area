// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import '../../features/weather/domain/i_weather_repository.dart' as _i6;
import '../../features/weather/infrastructure/weather_local.dart' as _i3;
import '../../features/weather/infrastructure/weather_remote.dart' as _i4;
import '../../features/weather/infrastructure/weather_repository.dart' as _i7;
import 'injection.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.IWeatherLocal>(() => _i3.WeatherLocal());
  gh.factory<_i4.IWeatherRemote>(
      () => _i4.WeatherRemote(weatherLocal: get<_i3.IWeatherLocal>()));
  gh.singleton<_i5.InternetConnectionChecker>(
      registerModule.internetConnectionChecker());
  gh.factory<_i6.IWeatherRepository>(() => _i7.WeatherRepository(
      weatherLocal: get<_i3.IWeatherLocal>(),
      weatherRemote: get<_i4.IWeatherRemote>(),
      internetConnectionChecker: get<_i5.InternetConnectionChecker>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
