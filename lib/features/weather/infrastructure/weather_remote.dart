import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:weather/configs/configs.dart';

import 'package:weather/enums/language.dart';
import 'package:weather/enums/weather_unit.dart';
import 'package:weather/features/weather/domain/failures.dart';
import 'package:weather/features/weather/domain/weather.dart';
import 'package:weather/features/weather/infrastructure/weather_dto.dart';
import 'package:weather/features/weather/infrastructure/weather_local.dart';
import 'package:weather/modules/dio/dio.dart';

abstract class IWeatherRemote {
  // gets from remote server
  Future<Either<WeatherFailure, KtList<Weather>>> get({
    required double lat,
    required double lon,
    Language lang = Language.en,
    WeatherUnit units = WeatherUnit.metric,
  });
}

/// Implementation [IWeatherRemote]
@Singleton(as: IWeatherRemote)
class WeatherRemote implements IWeatherRemote {
  final IWeatherLocal weatherLocal;
  WeatherRemote({required this.weatherLocal});

  @override
  Future<Either<WeatherFailure, KtList<Weather>>> get({
    required double lat,
    required double lon,
    Language lang = Language.en,
    WeatherUnit units = WeatherUnit.metric,
  }) async {
    try {
      final appid = Configs.weatherApi.key;
      String url = "/data/2.5/forecast?lat=$lat&lon=$lon&appid=$appid&units=${units.value}&lang=${lang.value}";

      final response = await getDio().get(Uri.encodeFull(url));
      Map<String, dynamic> _data = RemoteDataSource.returnDioResponse(response);

      final _res = KtList.from(
        (_data['list'] as List<dynamic>).map(
          (item) => WeatherDto.fromMap(item).toDomain(),
        ),
      );

      // cache the respone
      weatherLocal.cache(jsonEncode(response.data));

      return Right(_res);
    } catch (_) {
      return const Left(WeatherFailure.unexpected());
    }
  }
}
