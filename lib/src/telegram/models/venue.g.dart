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
      if (instance.foursquareId case final value?) 'foursquare_id': value,
      if (instance.foursquareType case final value?) 'foursquare_type': value,
      if (instance.googlePlaceId case final value?) 'google_place_id': value,
      if (instance.googlePlaceType case final value?)
        'google_place_type': value,
    };
