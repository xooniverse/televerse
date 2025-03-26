// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Venue {
  /// Venue location
  @JsonKey(name: 'location')
  Location get location;

  /// Name of the venue
  @JsonKey(name: 'title')
  String get title;

  /// Address of the venue
  @JsonKey(name: 'address')
  String get address;

  /// Optional. Foursquare identifier of the venue
  @JsonKey(name: 'foursquare_id')
  String? get foursquareId;

  /// Optional. Foursquare type of the venue. (For example,
  /// "arts_entertainment/default", "arts_entertainment/aquarium" or
  /// "food/icecream".)
  @JsonKey(name: 'foursquare_type')
  String? get foursquareType;

  /// Optional. Google Places identifier of the venue
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  @JsonKey(name: 'google_place_type')
  String? get googlePlaceType;

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VenueCopyWith<Venue> get copyWith =>
      _$VenueCopyWithImpl<Venue>(this as Venue, _$identity);

  /// Serializes this Venue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Venue(location: $location, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }
}

/// @nodoc
abstract mixin class $VenueCopyWith<$Res> {
  factory $VenueCopyWith(Venue value, $Res Function(Venue) _then) =
      _$VenueCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'location') Location location,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'foursquare_id') String? foursquareId,
      @JsonKey(name: 'foursquare_type') String? foursquareType,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'google_place_type') String? googlePlaceType});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$VenueCopyWithImpl<$Res> implements $VenueCopyWith<$Res> {
  _$VenueCopyWithImpl(this._self, this._then);

  final Venue _self;
  final $Res Function(Venue) _then;

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? title = null,
    Object? address = null,
    Object? foursquareId = freezed,
    Object? foursquareType = freezed,
    Object? googlePlaceId = freezed,
    Object? googlePlaceType = freezed,
  }) {
    return _then(_self.copyWith(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      foursquareId: freezed == foursquareId
          ? _self.foursquareId
          : foursquareId // ignore: cast_nullable_to_non_nullable
              as String?,
      foursquareType: freezed == foursquareType
          ? _self.foursquareType
          : foursquareType // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _self.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceType: freezed == googlePlaceType
          ? _self.googlePlaceType
          : googlePlaceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Venue implements Venue {
  const _Venue(
      {@JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'foursquare_id') this.foursquareId,
      @JsonKey(name: 'foursquare_type') this.foursquareType,
      @JsonKey(name: 'google_place_id') this.googlePlaceId,
      @JsonKey(name: 'google_place_type') this.googlePlaceType});
  factory _Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  /// Venue location
  @override
  @JsonKey(name: 'location')
  final Location location;

  /// Name of the venue
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Address of the venue
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Optional. Foursquare identifier of the venue
  @override
  @JsonKey(name: 'foursquare_id')
  final String? foursquareId;

  /// Optional. Foursquare type of the venue. (For example,
  /// "arts_entertainment/default", "arts_entertainment/aquarium" or
  /// "food/icecream".)
  @override
  @JsonKey(name: 'foursquare_type')
  final String? foursquareType;

  /// Optional. Google Places identifier of the venue
  @override
  @JsonKey(name: 'google_place_id')
  final String? googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  @override
  @JsonKey(name: 'google_place_type')
  final String? googlePlaceType;

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VenueCopyWith<_Venue> get copyWith =>
      __$VenueCopyWithImpl<_Venue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VenueToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Venue(location: $location, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }
}

/// @nodoc
abstract mixin class _$VenueCopyWith<$Res> implements $VenueCopyWith<$Res> {
  factory _$VenueCopyWith(_Venue value, $Res Function(_Venue) _then) =
      __$VenueCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location') Location location,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'foursquare_id') String? foursquareId,
      @JsonKey(name: 'foursquare_type') String? foursquareType,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'google_place_type') String? googlePlaceType});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$VenueCopyWithImpl<$Res> implements _$VenueCopyWith<$Res> {
  __$VenueCopyWithImpl(this._self, this._then);

  final _Venue _self;
  final $Res Function(_Venue) _then;

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = null,
    Object? title = null,
    Object? address = null,
    Object? foursquareId = freezed,
    Object? foursquareType = freezed,
    Object? googlePlaceId = freezed,
    Object? googlePlaceType = freezed,
  }) {
    return _then(_Venue(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      foursquareId: freezed == foursquareId
          ? _self.foursquareId
          : foursquareId // ignore: cast_nullable_to_non_nullable
              as String?,
      foursquareType: freezed == foursquareType
          ? _self.foursquareType
          : foursquareType // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _self.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceType: freezed == googlePlaceType
          ? _self.googlePlaceType
          : googlePlaceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}
