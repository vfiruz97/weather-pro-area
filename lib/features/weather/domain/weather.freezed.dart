// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Weather {
  String get cityName => throw _privateConstructorUsedError;
  KtList<WeatherForecast> get forecasts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call({String cityName, KtList<WeatherForecast> forecasts});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? forecasts = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      forecasts: forecasts == freezed
          ? _value.forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as KtList<WeatherForecast>,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call({String cityName, KtList<WeatherForecast> forecasts});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? forecasts = freezed,
  }) {
    return _then(_Weather(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      forecasts: forecasts == freezed
          ? _value.forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as KtList<WeatherForecast>,
    ));
  }
}

/// @nodoc

class _$_Weather implements _Weather {
  const _$_Weather({required this.cityName, required this.forecasts});

  @override
  final String cityName;
  @override
  final KtList<WeatherForecast> forecasts;

  @override
  String toString() {
    return 'Weather(cityName: $cityName, forecasts: $forecasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weather &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality().equals(other.forecasts, forecasts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(forecasts));

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final String cityName,
      required final KtList<WeatherForecast> forecasts}) = _$_Weather;

  @override
  String get cityName => throw _privateConstructorUsedError;
  @override
  KtList<WeatherForecast> get forecasts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherForecast {
  String get temp => throw _privateConstructorUsedError;
  String get tempMin => throw _privateConstructorUsedError;
  String get tempMax => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  bool get isDay => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherForecastCopyWith<WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCopyWith<$Res> {
  factory $WeatherForecastCopyWith(
          WeatherForecast value, $Res Function(WeatherForecast) then) =
      _$WeatherForecastCopyWithImpl<$Res>;
  $Res call(
      {String temp,
      String tempMin,
      String tempMax,
      String description,
      String icon,
      bool isDay,
      int humidity,
      DateTime dateTime});
}

/// @nodoc
class _$WeatherForecastCopyWithImpl<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  _$WeatherForecastCopyWithImpl(this._value, this._then);

  final WeatherForecast _value;
  // ignore: unused_field
  final $Res Function(WeatherForecast) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? isDay = freezed,
    Object? humidity = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as String,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      isDay: isDay == freezed
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as bool,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$WeatherForecastCopyWith<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  factory _$WeatherForecastCopyWith(
          _WeatherForecast value, $Res Function(_WeatherForecast) then) =
      __$WeatherForecastCopyWithImpl<$Res>;
  @override
  $Res call(
      {String temp,
      String tempMin,
      String tempMax,
      String description,
      String icon,
      bool isDay,
      int humidity,
      DateTime dateTime});
}

/// @nodoc
class __$WeatherForecastCopyWithImpl<$Res>
    extends _$WeatherForecastCopyWithImpl<$Res>
    implements _$WeatherForecastCopyWith<$Res> {
  __$WeatherForecastCopyWithImpl(
      _WeatherForecast _value, $Res Function(_WeatherForecast) _then)
      : super(_value, (v) => _then(v as _WeatherForecast));

  @override
  _WeatherForecast get _value => super._value as _WeatherForecast;

  @override
  $Res call({
    Object? temp = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? isDay = freezed,
    Object? humidity = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_WeatherForecast(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as String,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      isDay: isDay == freezed
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as bool,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_WeatherForecast implements _WeatherForecast {
  const _$_WeatherForecast(
      {required this.temp,
      required this.tempMin,
      required this.tempMax,
      required this.description,
      required this.icon,
      required this.isDay,
      required this.humidity,
      required this.dateTime});

  @override
  final String temp;
  @override
  final String tempMin;
  @override
  final String tempMax;
  @override
  final String description;
  @override
  final String icon;
  @override
  final bool isDay;
  @override
  final int humidity;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'WeatherForecast(temp: $temp, tempMin: $tempMin, tempMax: $tempMax, description: $description, icon: $icon, isDay: $isDay, humidity: $humidity, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherForecast &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.tempMin, tempMin) &&
            const DeepCollectionEquality().equals(other.tempMax, tempMax) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.isDay, isDay) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(tempMin),
      const DeepCollectionEquality().hash(tempMax),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(isDay),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$WeatherForecastCopyWith<_WeatherForecast> get copyWith =>
      __$WeatherForecastCopyWithImpl<_WeatherForecast>(this, _$identity);
}

abstract class _WeatherForecast implements WeatherForecast {
  const factory _WeatherForecast(
      {required final String temp,
      required final String tempMin,
      required final String tempMax,
      required final String description,
      required final String icon,
      required final bool isDay,
      required final int humidity,
      required final DateTime dateTime}) = _$_WeatherForecast;

  @override
  String get temp => throw _privateConstructorUsedError;
  @override
  String get tempMin => throw _privateConstructorUsedError;
  @override
  String get tempMax => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  bool get isDay => throw _privateConstructorUsedError;
  @override
  int get humidity => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherForecastCopyWith<_WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}
