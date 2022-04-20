import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';

part 'weather.freezed.dart';

@freezed
abstract class Weather with _$Weather {
  const Weather._();
  const factory Weather({
    required String cityName,
    required KtList<WeatherForecast> forecasts,
  }) = _Weather;

  KtList<WeatherForecast> get filterByDay {
    return KtList.from(forecasts.fold<List<WeatherForecast>>([], (n, item) {
      if (!n.any((i) => i.dateTime.day == item.dateTime.day)) n.add(item);
      return n;
    }));
  }

  KtList<KtList<WeatherForecast>> get filterByHour {
    final map = forecasts.fold<Map<String, List<WeatherForecast>>>({}, (map, item) {
      final dateKey = item.dateFormattedMMMEd;
      if (map.containsKey(item.dateFormattedMMMEd)) {
        map[dateKey]?.add(item);
      } else {
        map[dateKey] = [item].toList();
      }
      return map;
    });
    return KtList.from(map.entries.map((e) => KtList.from(e.value)));
  }
}

@freezed
abstract class WeatherForecast with _$WeatherForecast {
  const WeatherForecast._();
  const factory WeatherForecast({
    required String temp,
    required String tempMin,
    required String tempMax,
    required String description,
    required String icon,
    required bool isDay,
    required int humidity,
    required DateTime dateTime,
  }) = _WeatherForecast;

  String get dateFormattedyMMMEd {
    final format = DateFormat.yMMMEd();
    return format.format(dateTime);
  }

  String get dateFormattedMMMEd {
    final format = DateFormat.MMMEd();
    return format.format(dateTime);
  }

  String get dateFormattedHm {
    final format = DateFormat.Hm();
    return format.format(dateTime);
  }

  String get iconUrl {
    return "https://openweathermap.org/img/wn/$icon@2x.png";
  }
}
// 