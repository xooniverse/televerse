// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return _Venue.fromJson(json);
}

/// @nodoc
mixin _$Venue {
  /// Venue location
  @JsonKey(name: 'location')
  Location get location => throw _privateConstructorUsedError;

  /// Name of the venue
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Address of the venue
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;

  /// Optional. Foursquare identifier of the venue
  @JsonKey(name: 'foursquare_id')
  String? get foursquareId => throw _privateConstructorUsedError;

  /// Optional. Foursquare type of the venue. (For example,
  /// "arts_entertainment/default", "arts_entertainment/aquarium" or
  /// "food/icecream".)
  @JsonKey(name: 'foursquare_type')
  String? get foursquareType => throw _privateConstructorUsedError;

  /// Optional. Google Places identifier of the venue
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId => throw _privateConstructorUsedError;

  /// Optional. Google Places type of the venue. (See supported types.)
  @JsonKey(name: 'google_place_type')
  String? get googlePlaceType => throw _privateConstructorUsedError;

  /// Serializes this Venue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VenueCopyWith<Venue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueCopyWith<$Res> {
  factory $VenueCopyWith(Venue value, $Res Function(Venue) then) =
      _$VenueCopyWithImpl<$Res, Venue>;
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
class _$VenueCopyWithImpl<$Res, $Val extends Venue>
    implements $VenueCopyWith<$Res> {
  _$VenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      foursquareId: freezed == foursquareId
          ? _value.foursquareId
          : foursquareId // ignore: cast_nullable_to_non_nullable
              as String?,
      foursquareType: freezed == foursquareType
          ? _value.foursquareType
          : foursquareType // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceType: freezed == googlePlaceType
          ? _value.googlePlaceType
          : googlePlaceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VenueImplCopyWith<$Res> implements $VenueCopyWith<$Res> {
  factory _$$VenueImplCopyWith(
          _$VenueImpl value, $Res Function(_$VenueImpl) then) =
      __$$VenueImplCopyWithImpl<$Res>;
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
class __$$VenueImplCopyWithImpl<$Res>
    extends _$VenueCopyWithImpl<$Res, _$VenueImpl>
    implements _$$VenueImplCopyWith<$Res> {
  __$$VenueImplCopyWithImpl(
      _$VenueImpl _value, $Res Function(_$VenueImpl) _then)
      : super(_value, _then);

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
    return _then(_$VenueImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      foursquareId: freezed == foursquareId
          ? _value.foursquareId
          : foursquareId // ignore: cast_nullable_to_non_nullable
              as String?,
      foursquareType: freezed == foursquareType
          ? _value.foursquareType
          : foursquareType // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceType: freezed == googlePlaceType
          ? _value.googlePlaceType
          : googlePlaceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VenueImpl implements _Venue {
  const _$VenueImpl(
      {@JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'foursquare_id') this.foursquareId,
      @JsonKey(name: 'foursquare_type') this.foursquareType,
      @JsonKey(name: 'google_place_id') this.googlePlaceId,
      @JsonKey(name: 'google_place_type') this.googlePlaceType});

  factory _$VenueImpl.fromJson(Map<String, dynamic> json) =>
      _$$VenueImplFromJson(json);

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

  @override
  String toString() {
    return 'Venue(location: $location, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VenueImplCopyWith<_$VenueImpl> get copyWith =>
      __$$VenueImplCopyWithImpl<_$VenueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VenueImplToJson(
      this,
    );
  }
}

abstract class _Venue implements Venue {
  const factory _Venue(
          {@JsonKey(name: 'location') required final Location location,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'foursquare_id') final String? foursquareId,
          @JsonKey(name: 'foursquare_type') final String? foursquareType,
          @JsonKey(name: 'google_place_id') final String? googlePlaceId,
          @JsonKey(name: 'google_place_type') final String? googlePlaceType}) =
      _$VenueImpl;

  factory _Venue.fromJson(Map<String, dynamic> json) = _$VenueImpl.fromJson;

  /// Venue location
  @override
  @JsonKey(name: 'location')
  Location get location;

  /// Name of the venue
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Address of the venue
  @override
  @JsonKey(name: 'address')
  String get address;

  /// Optional. Foursquare identifier of the venue
  @override
  @JsonKey(name: 'foursquare_id')
  String? get foursquareId;

  /// Optional. Foursquare type of the venue. (For example,
  /// "arts_entertainment/default", "arts_entertainment/aquarium" or
  /// "food/icecream".)
  @override
  @JsonKey(name: 'foursquare_type')
  String? get foursquareType;

  /// Optional. Google Places identifier of the venue
  @override
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  @override
  @JsonKey(name: 'google_place_type')
  String? get googlePlaceType;

  /// Create a copy of Venue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VenueImplCopyWith<_$VenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
