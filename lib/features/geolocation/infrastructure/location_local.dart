import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/configs/configs.dart';

import 'package:weather/features/geolocation/domain/coordinate_pair.dart';
import 'package:weather/features/geolocation/infrastructure/coordinate_pair_dto.dart';

abstract class ILocationLocal {
  Future<CoordinatePair> getCurrentLocation();
  Future<void> putCurrentLocation(CoordinatePair coordinatePair);
}

@Singleton(as: ILocationLocal)
class LocationLocal implements ILocationLocal {
  final key = 'current_location';

  const LocationLocal();

  @override
  Future<CoordinatePair> getCurrentLocation() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final _currentLocation = sharedPreferences.getString(key);

    if (_currentLocation != null) {
      return CoordinatePairDto.fromJson(_currentLocation).toDomain();
    }

    return Configs.geoLocation.defaultLocation;
  }

  @override
  Future<void> putCurrentLocation(CoordinatePair coordinatePair) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    final _json = CoordinatePairDto.fromDomain(coordinatePair).toJson();
    sharedPreferences.setString(key, _json);
  }
}
