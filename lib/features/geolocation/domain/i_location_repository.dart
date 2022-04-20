import 'package:dartz/dartz.dart';
import 'package:weather/features/geolocation/domain/coordinate_pair.dart';
import 'package:weather/features/geolocation/domain/exceptions.dart';

abstract class ILocationRepository {
  /// Returns a [CoordinatePair] containing the user's current location.
  /// Throws [CurrentLocationFailure] when there is an issue
  /// accessing the user's current location.
  Future<CoordinatePair> getCurrentLocation();
}
