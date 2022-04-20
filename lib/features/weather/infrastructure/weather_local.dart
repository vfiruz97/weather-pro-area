import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:weather/features/weather/domain/failures.dart';
import 'package:weather/features/weather/domain/weather.dart';
import 'package:weather/features/weather/infrastructure/weather_dto.dart';

abstract class IWeatherLocal {
  // it gets from cache
  Future<Either<WeatherFailure, Weather>> get();

  // caches the last fresh weather info
  Future<void> cache(String json);
}

/// Implementation [IWeatherLocal]
@Singleton(as: IWeatherLocal)
class WeatherLocal implements IWeatherLocal {
  final boxName = 'weather_cache';
  final key = 'data';

  @override
  Future<void> cache(String json) async {
    var box = await Hive.openBox(boxName);
    box.put(key, json);
  }

  @override
  Future<Either<WeatherFailure, Weather>> get() async {
    try {
      var box = await Hive.openBox(boxName);
      final String? _jsonData = box.get(key, defaultValue: null);

      if (_jsonData == null) return const Left(WeatherFailure.noConnection());
      final _data = jsonDecode(_jsonData);

      final weather = WeatherDto.fromMap(_data).toDomain();
      return Right(weather);
    } catch (_) {
      return const Left(WeatherFailure.unexpected());
    }
  }
}
