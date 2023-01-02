part of models;

/// This object represents a venue.
class Venue {
  /// Venue location
  Location location;

  /// Name of the venue
  String title;

  /// Address of the venue
  String address;

  /// Optional. Foursquare identifier of the venue
  String? foursquareId;

  /// Optional. Foursquare type of the venue. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  String? foursquareType;

  /// Optional. Google Places identifier of the venue
  String? googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  String? googlePlaceType;

  Venue({
    required this.location,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
  });

  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      location: Location.fromJson(json['location']!),
      title: json['title']!,
      address: json['address']!,
      foursquareId: json['foursquare_id'],
      foursquareType: json['foursquare_type'],
      googlePlaceId: json['google_place_id'],
      googlePlaceType: json['google_place_type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'title': title,
      'address': address,
      'foursquare_id': foursquareId,
      'foursquare_type': foursquareType,
      'google_place_id': googlePlaceId,
      'google_place_type': googlePlaceType,
    };
  }
}
