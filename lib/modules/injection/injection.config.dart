// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:geolocator/geolocator.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;

import '../../features/geolocation/infrastructure/location_local.dart' as _i4;
import '../../features/geolocation/infrastructure/location_repository.dart'
    as _i8;
import '../../features/weather/application/weather/weather_bloc.dart' as _i11;
import '../../features/weather/domain/i_weather_repository.dart' as _i9;
import '../../features/weather/infrastructure/weather_local.dart' as _i5;
import '../../features/weather/infrastructure/weather_remote.dart' as _i6;
import '../../features/weather/infrastructure/weather_repository.dart' as _i10;
import 'injection.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.GeolocatorPlatform>(registerModule.geolocator());
  gh.singleton<_i4.ILocationLocal>(_i4.LocationLocal());
  gh.singleton<_i5.IWeatherLocal>(_i5.WeatherLocal());
  gh.singleton<_i6.IWeatherRemote>(
      _i6.WeatherRemote(weatherLocal: get<_i5.IWeatherLocal>()));
  gh.singleton<_i7.InternetConnectionChecker>(
      registerModule.internetConnectionChecker());
  gh.singleton<_i8.LocationRepository>(_i8.LocationRepository(
      location: get<_i3.GeolocatorPlatform>(),
      locationLocal: get<_i4.ILocationLocal>()));
  gh.singleton<_i9.IWeatherRepository>(_i10.WeatherRepository(
      weatherLocal: get<_i5.IWeatherLocal>(),
      weatherRemote: get<_i6.IWeatherRemote>(),
      internetConnectionChecker: get<_i7.InternetConnectionChecker>()));
  gh.factory<_i11.WeatherBloc>(
      () => _i11.WeatherBloc(get<_i9.IWeatherRepository>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
