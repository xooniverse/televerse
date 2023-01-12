part of models;

/// Represents the content of a venue message to be sent as the result of an inline query.
class InputVenueMessageContent extends InputMessageContent {
  /// Latitude of the venue in degrees
  double latitude;

  /// Longitude of the venue in degrees
  double longitude;

  /// Name of the venue
  String title;

  /// Address of the venue
  String address;

  /// Optional. Foursquare identifier of the venue, if known
  String? foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  String? foursquareType;

  /// Optional. Google Places identifier of the venue
  String? googlePlaceId;

  /// Optional. Google Places type of the venue. ([See supported types](https://developers.google.com/places/web-service/supported_types))
  String? googlePlaceType;

  InputVenueMessageContent({
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'address': address,
      'foursquare_id': foursquareId,
      'foursquare_type': foursquareType,
      'google_place_id': googlePlaceId,
      'google_place_type': googlePlaceType,
    }..removeWhere((key, value) => value == null);
  }

  factory InputVenueMessageContent.fromJson(Map<String, dynamic> json) {
    return InputVenueMessageContent(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      title: json['title'] as String,
      address: json['address'] as String,
      foursquareId: json['foursquare_id'] as String?,
      foursquareType: json['foursquare_type'] as String?,
      googlePlaceId: json['google_place_id'] as String?,
      googlePlaceType: json['google_place_type'] as String?,
    );
  }
}
