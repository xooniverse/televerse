// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/location.dart';

part 'venue.freezed.dart';
part 'venue.g.dart';

/// This object represents a venue.
@freezed
abstract class Venue with _$Venue {
  /// Constructs a [Venue] object
  const factory Venue({
    /// Venue location
    @JsonKey(name: 'location') required Location location,

    /// Name of the venue
    @JsonKey(name: 'title') required String title,

    /// Address of the venue
    @JsonKey(name: 'address') required String address,

    /// Optional. Foursquare identifier of the venue
    @JsonKey(name: 'foursquare_id') String? foursquareId,

    /// Optional. Foursquare type of the venue. (For example,
    /// "arts_entertainment/default", "arts_entertainment/aquarium" or
    /// "food/icecream".)
    @JsonKey(name: 'foursquare_type') String? foursquareType,

    /// Optional. Google Places identifier of the venue
    @JsonKey(name: 'google_place_id') String? googlePlaceId,

    /// Optional. Google Places type of the venue. (See supported types.)
    @JsonKey(name: 'google_place_type') String? googlePlaceType,
  }) = _Venue;

  /// Creates a [Venue] object from JSON object
  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}
