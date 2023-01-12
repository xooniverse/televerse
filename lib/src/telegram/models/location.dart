part of models;

/// This object represents a point on the map.
class Location {
  /// Longitude as defined by sender
  double longitude;

  /// Latitude as defined by sender
  double latitude;

  /// The radius of uncertainty for the location, measured in meters; 0-1500
  double? horizontalAccuracy;

  /// Optional. Time relative to the message sending date, during which the location can be updated; in seconds. For active live locations only.
  int? livePeriod;

  /// Optional. The direction in which user is moving, in degrees; 1-360. For active live locations only.
  int? heading;

  /// Optional. The maximum distance for proximity alerts about approaching another chat member, in meters. For sent live locations only.
  int? proximityAlertRadius;

  Location({
    required this.longitude,
    required this.latitude,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      longitude: json['longitude']!,
      latitude: json['latitude']!,
      horizontalAccuracy: json['horizontal_accuracy'],
      livePeriod: json['live_period'],
      heading: json['heading'],
      proximityAlertRadius: json['proximity_alert_radius'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'longitude': longitude,
      'latitude': latitude,
      'horizontal_accuracy': horizontalAccuracy,
      'live_period': livePeriod,
      'heading': heading,
      'proximity_alert_radius': proximityAlertRadius,
    }..removeWhere((key, value) => value == null);
  }
}
