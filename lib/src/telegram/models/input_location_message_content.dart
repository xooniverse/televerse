part of models;

/// Represents the content of a location message to be sent as the result of an inline query.
class InputLocationMessageContent extends InputMessageContent {
  /// Latitude of the location in degrees
  double latitude;

  /// Longitude of the location in degrees
  double longitude;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  int? livePeriod;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  int? horizontalAccuracy;

  /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  int? heading;

  /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  int? proximityAlertRadius;

  /// Constructs an [InputLocationMessageContent] object
  InputLocationMessageContent({
    required this.latitude,
    required this.longitude,
    this.livePeriod,
    this.horizontalAccuracy,
    this.heading,
    this.proximityAlertRadius,
  });

  /// Converts an [InputLocationMessageContent] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'live_period': livePeriod,
      'horizontal_accuracy': horizontalAccuracy,
      'heading': heading,
      'proximity_alert_radius': proximityAlertRadius,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InputLocationMessageContent] object from a JSON map
  factory InputLocationMessageContent.fromJson(Map<String, dynamic> json) {
    return InputLocationMessageContent(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      livePeriod: json['live_period'] as int?,
      horizontalAccuracy: json['horizontal_accuracy'] as int?,
      heading: json['heading'] as int?,
      proximityAlertRadius: json['proximity_alert_radius'] as int?,
    );
  }
}
