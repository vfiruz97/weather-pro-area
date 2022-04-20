/// Models which represents a coordinate pair consisting
/// of latitude and longitude.
class CoordinatePair {
  const CoordinatePair({
    required this.latitude,
    required this.longitude,
  });

  /// The current latitude.
  final double latitude;

  /// The current longitude.
  final double longitude;
}
