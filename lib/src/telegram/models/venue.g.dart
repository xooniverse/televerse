// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Venue _$VenueFromJson(Map<String, dynamic> json) => _Venue(
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  title: json['title'] as String,
  address: json['address'] as String,
  foursquareId: json['foursquare_id'] as String?,
  foursquareType: json['foursquare_type'] as String?,
  googlePlaceId: json['google_place_id'] as String?,
  googlePlaceType: json['google_place_type'] as String?,
);

Map<String, dynamic> _$VenueToJson(_Venue instance) => <String, dynamic>{
  'location': instance.location,
  'title': instance.title,
  'address': instance.address,
  'foursquare_id': ?instance.foursquareId,
  'foursquare_type': ?instance.foursquareType,
  'google_place_id': ?instance.googlePlaceId,
  'google_place_type': ?instance.googlePlaceType,
};
