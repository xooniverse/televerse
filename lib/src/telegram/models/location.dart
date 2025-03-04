import 'package:freezed_annotation/freezed_annotation.dart';
part 'location.freezed.dart';
part 'location.g.dart';

/// This object represents a point on the map.
@freezed
class Location with _$Location {
  /// Constructs a [Location] object
  const factory Location({
    /// Longitude as defined by sender
    @JsonKey(name: 'longitude') required double longitude,

    /// Latitude as defined by sender
    @JsonKey(name: 'latitude') required double latitude,

    /// The radius of uncertainty for the location, measured in meters; 0-1500
    @JsonKey(name: 'horizontal_accuracy') double? horizontalAccuracy,

    /// Optional. Time relative to the message sending date, during which the
    /// location can be updated; in seconds. For active live locations only.
    @JsonKey(name: 'live_period') int? livePeriod,

    /// Optional. The direction in which user is moving, in degrees; 1-360. For
    /// active live locations only.
    @JsonKey(name: 'heading') int? heading,

    /// Optional. The maximum distance for proximity alerts about approaching
    /// another chat member, in meters. For sent live locations only.
    @JsonKey(name: 'proximity_alert_radius') int? proximityAlertRadius,
  }) = _Location;

  /// Constructs a [Location] object from a JSON map
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
