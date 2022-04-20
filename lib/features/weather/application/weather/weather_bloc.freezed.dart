// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double lat, double lon, Locale locale, WeatherUnit units)
        load,
    required TResult Function(WeatherDisplayMode displayMode) changeDisplayMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double lat, double lon, Locale locale, WeatherUnit units)?
        load,
    TResult Function(WeatherDisplayMode displayMode)? changeDisplayMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, Locale locale, WeatherUnit units)?
        load,
    TResult Function(WeatherDisplayMode displayMode)? changeDisplayMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeDisplayMode value) changeDisplayMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeDisplayMode value)? changeDisplayMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeDisplayMode value)? changeDisplayMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({double lat, double lon, Locale locale, WeatherUnit units});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? locale = freezed,
    Object? units = freezed,
  }) {
    return _then(_Load(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      units: units == freezed
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as WeatherUnit,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load(
      {required this.lat,
      required this.lon,
      required this.locale,
      required this.units});

  @override
  final double lat;
  @override
  final double lon;
  @override
  final Locale locale;
  @override
  final WeatherUnit units;

  @override
  String toString() {
    return 'WeatherEvent.load(lat: $lat, lon: $lon, locale: $locale, units: $units)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Load &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.units, units));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(units));

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double lat, double lon, Locale locale, WeatherUnit units)
        load,
    required TResult Function(WeatherDisplayMode displayMode) changeDisplayMode,
  }) {
    return load(lat, lon, locale, units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double lat, double lon, Locale locale, WeatherUnit units)?
        load,
    TResult Function(WeatherDisplayMode displayMode)? changeDisplayMode,
  }) {
    return load?.call(lat, lon, locale, units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, Locale locale, WeatherUnit units)?
        load,
    TResult Function(WeatherDisplayMode displayMode)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(lat, lon, locale, units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeDisplayMode value) changeDisplayMode,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeDisplayMode value)? changeDisplayMode,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeDisplayMode value)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements WeatherEvent {
  const factory _Load(
      {required final double lat,
      required final double lon,
      required final Locale locale,
      required final WeatherUnit units}) = _$_Load;

  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;
  WeatherUnit get units => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeDisplayModeCopyWith<$Res> {
  factory _$ChangeDisplayModeCopyWith(
          _ChangeDisplayMode value, $Res Function(_ChangeDisplayMode) then) =
      __$ChangeDisplayModeCopyWithImpl<$Res>;
  $Res call({WeatherDisplayMode displayMode});
}

/// @nodoc
class __$ChangeDisplayModeCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$ChangeDisplayModeCopyWith<$Res> {
  __$ChangeDisplayModeCopyWithImpl(
      _ChangeDisplayMode _value, $Res Function(_ChangeDisplayMode) _then)
      : super(_value, (v) => _then(v as _ChangeDisplayMode));

  @override
  _ChangeDisplayMode get _value => super._value as _ChangeDisplayMode;

  @override
  $Res call({
    Object? displayMode = freezed,
  }) {
    return _then(_ChangeDisplayMode(
      displayMode == freezed
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as WeatherDisplayMode,
    ));
  }
}

/// @nodoc

class _$_ChangeDisplayMode implements _ChangeDisplayMode {
  const _$_ChangeDisplayMode(this.displayMode);

  @override
  final WeatherDisplayMode displayMode;

  @override
  String toString() {
    return 'WeatherEvent.changeDisplayMode(displayMode: $displayMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeDisplayMode &&
            const DeepCollectionEquality()
                .equals(other.displayMode, displayMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(displayMode));

  @JsonKey(ignore: true)
  @override
  _$ChangeDisplayModeCopyWith<_ChangeDisplayMode> get copyWith =>
      __$ChangeDisplayModeCopyWithImpl<_ChangeDisplayMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double lat, double lon, Locale locale, WeatherUnit units)
        load,
    required TResult Function(WeatherDisplayMode displayMode) changeDisplayMode,
  }) {
    return changeDisplayMode(displayMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double lat, double lon, Locale locale, WeatherUnit units)?
        load,
    TResult Function(WeatherDisplayMode displayMode)? changeDisplayMode,
  }) {
    return changeDisplayMode?.call(displayMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, Locale locale, WeatherUnit units)?
        load,
    TResult Function(WeatherDisplayMode displayMode)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (changeDisplayMode != null) {
      return changeDisplayMode(displayMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeDisplayMode value) changeDisplayMode,
  }) {
    return changeDisplayMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeDisplayMode value)? changeDisplayMode,
  }) {
    return changeDisplayMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_ChangeDisplayMode value)? changeDisplayMode,
    required TResult orElse(),
  }) {
    if (changeDisplayMode != null) {
      return changeDisplayMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeDisplayMode implements WeatherEvent {
  const factory _ChangeDisplayMode(final WeatherDisplayMode displayMode) =
      _$_ChangeDisplayMode;

  WeatherDisplayMode get displayMode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeDisplayModeCopyWith<_ChangeDisplayMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  WeatherDisplayMode get displayMode => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Either<WeatherFailure, Weather>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {WeatherDisplayMode displayMode,
      bool loading,
      Either<WeatherFailure, Weather>? failureOrSuccess});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? displayMode = freezed,
    Object? loading = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      displayMode: displayMode == freezed
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as WeatherDisplayMode,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<WeatherFailure, Weather>?,
    ));
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {WeatherDisplayMode displayMode,
      bool loading,
      Either<WeatherFailure, Weather>? failureOrSuccess});
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? displayMode = freezed,
    Object? loading = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_WeatherState(
      displayMode: displayMode == freezed
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as WeatherDisplayMode,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<WeatherFailure, Weather>?,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {required this.displayMode,
      required this.loading,
      required this.failureOrSuccess});

  @override
  final WeatherDisplayMode displayMode;
  @override
  final bool loading;
  @override
  final Either<WeatherFailure, Weather>? failureOrSuccess;

  @override
  String toString() {
    return 'WeatherState(displayMode: $displayMode, loading: $loading, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherState &&
            const DeepCollectionEquality()
                .equals(other.displayMode, displayMode) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(displayMode),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
          {required final WeatherDisplayMode displayMode,
          required final bool loading,
          required final Either<WeatherFailure, Weather>? failureOrSuccess}) =
      _$_WeatherState;

  @override
  WeatherDisplayMode get displayMode => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Either<WeatherFailure, Weather>? get failureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
