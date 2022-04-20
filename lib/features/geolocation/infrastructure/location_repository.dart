import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:weather/configs/configs.dart';

import 'package:weather/features/geolocation/domain/coordinate_pair.dart';
import 'package:weather/features/geolocation/domain/exceptions.dart';
import 'package:weather/features/geolocation/domain/i_location_repository.dart';
import 'package:weather/features/geolocation/infrastructure/location_local.dart';

@singleton
class LocationRepository extends ChangeNotifier implements ILocationRepository {
  final GeolocatorPlatform location;
  final ILocationLocal locationLocal;

  CoordinatePair _coordinate = Configs.geoLocation.defaultLocation;

  CoordinatePair get coordinate => _coordinate;

  LocationRepository({
    required this.location,
    required this.locationLocal,
  }) {
    getCurrentLocation();
  }

  @override
  Future<CoordinatePair> getCurrentLocation() async {
    try {
      final coordinate = await getCurrentLocationByDeviceGeoLocation();

      _coordinate = coordinate;
      // Important! Inform listeners a change has occurred.
      notifyListeners();

      // save in local db
      locationLocal.putCurrentLocation(coordinate);

      return coordinate;
    } catch (_) {
      // returns the last location from db or default
      return locationLocal.getCurrentLocation();
    }
  }

  Future<CoordinatePair> getCurrentLocationByDeviceGeoLocation() async {
    final serviceEnabled = await location.isLocationServiceEnabled();
    if (!serviceEnabled) {
      final isEnabled = await Location().requestService();
      if (!isEnabled) throw CurrentLocationFailure();
    }

    final permissionStatus = await location.checkPermission();
    if (permissionStatus == PermissionStatus.denied) {
      final status = await location.requestPermission();
      if (status != LocationPermission.always || status != LocationPermission.whileInUse) {
        throw CurrentLocationFailure();
      }
    }

    late final Position locationData;
    try {
      locationData = await location.getCurrentPosition(
        locationSettings: const LocationSettings(timeLimit: Duration(seconds: 4)),
      );
    } catch (_) {
      throw CurrentLocationFailure();
    }

    final latitude = locationData.latitude;
    final longitude = locationData.longitude;

    return CoordinatePair(latitude: latitude, longitude: longitude);
  }
}
