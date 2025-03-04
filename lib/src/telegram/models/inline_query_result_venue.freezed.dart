// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_venue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultVenue _$InlineQueryResultVenueFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultVenue.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultVenue {
  /// Type of the result, always [InlineQueryResultType.venue]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Latitude of the venue location in degrees
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;

  /// Longitude of the venue location in degrees
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;

  /// Title of the venue
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Address of the venue
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;

  /// Optional. Foursquare identifier of the venue if known
  @JsonKey(name: 'foursquare_id')
  String? get foursquareId => throw _privateConstructorUsedError;

  /// Optional. Foursquare type of the venue, if known.
  ///
  /// (For example, "arts_entertainment/default", "arts_entertainment/aquarium" or "food/icecream".)
  @JsonKey(name: 'foursquare_type')
  String? get foursquareType => throw _privateConstructorUsedError;

  /// Optional. Google Places identifier of the venue
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId => throw _privateConstructorUsedError;

  /// Optional. Google Places type of the venue. (See supported types.)
  @JsonKey(name: 'google_place_type')
  String? get googlePlaceType => throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. Content of the message to be sent instead of the venue
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Optional. URL of the thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Optional. Thumbnail width
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth => throw _privateConstructorUsedError;

  /// Optional. Thumbnail height
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultVenue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultVenueCopyWith<InlineQueryResultVenue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultVenueCopyWith<$Res> {
  factory $InlineQueryResultVenueCopyWith(InlineQueryResultVenue value,
          $Res Function(InlineQueryResultVenue) then) =
      _$InlineQueryResultVenueCopyWithImpl<$Res, InlineQueryResultVenue>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'foursquare_id') String? foursquareId,
      @JsonKey(name: 'foursquare_type') String? foursquareType,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'google_place_type') String? googlePlaceType,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') int? thumbnailHeight});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultVenueCopyWithImpl<$Res,
        $Val extends InlineQueryResultVenue>
    implements $InlineQueryResultVenueCopyWith<$Res> {
  _$InlineQueryResultVenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? title = null,
    Object? address = null,
    Object? foursquareId = freezed,
    Object? foursquareType = freezed,
    Object? googlePlaceId = freezed,
    Object? googlePlaceType = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
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
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailWidth: freezed == thumbnailWidth
          ? _value.thumbnailWidth
          : thumbnailWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailHeight: freezed == thumbnailHeight
          ? _value.thumbnailHeight
          : thumbnailHeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_value.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_value.inputMessageContent!,
        (value) {
      return _then(_value.copyWith(inputMessageContent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InlineQueryResultVenueImplCopyWith<$Res>
    implements $InlineQueryResultVenueCopyWith<$Res> {
  factory _$$InlineQueryResultVenueImplCopyWith(
          _$InlineQueryResultVenueImpl value,
          $Res Function(_$InlineQueryResultVenueImpl) then) =
      __$$InlineQueryResultVenueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'foursquare_id') String? foursquareId,
      @JsonKey(name: 'foursquare_type') String? foursquareType,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'google_place_type') String? googlePlaceType,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') int? thumbnailHeight});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$$InlineQueryResultVenueImplCopyWithImpl<$Res>
    extends _$InlineQueryResultVenueCopyWithImpl<$Res,
        _$InlineQueryResultVenueImpl>
    implements _$$InlineQueryResultVenueImplCopyWith<$Res> {
  __$$InlineQueryResultVenueImplCopyWithImpl(
      _$InlineQueryResultVenueImpl _value,
      $Res Function(_$InlineQueryResultVenueImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? title = null,
    Object? address = null,
    Object? foursquareId = freezed,
    Object? foursquareType = freezed,
    Object? googlePlaceId = freezed,
    Object? googlePlaceType = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
  }) {
    return _then(_$InlineQueryResultVenueImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
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
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailWidth: freezed == thumbnailWidth
          ? _value.thumbnailWidth
          : thumbnailWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailHeight: freezed == thumbnailHeight
          ? _value.thumbnailHeight
          : thumbnailHeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultVenueImpl extends _InlineQueryResultVenue {
  const _$InlineQueryResultVenueImpl(
      {@JsonKey(name: 'type') this.type = InlineQueryResultType.venue,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'foursquare_id') this.foursquareId,
      @JsonKey(name: 'foursquare_type') this.foursquareType,
      @JsonKey(name: 'google_place_id') this.googlePlaceId,
      @JsonKey(name: 'google_place_type') this.googlePlaceType,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') this.thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') this.thumbnailHeight})
      : super._();

  factory _$InlineQueryResultVenueImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultVenueImplFromJson(json);

  /// Type of the result, always [InlineQueryResultType.venue]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Latitude of the venue location in degrees
  @override
  @JsonKey(name: 'latitude')
  final double latitude;

  /// Longitude of the venue location in degrees
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Title of the venue
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Address of the venue
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Optional. Foursquare identifier of the venue if known
  @override
  @JsonKey(name: 'foursquare_id')
  final String? foursquareId;

  /// Optional. Foursquare type of the venue, if known.
  ///
  /// (For example, "arts_entertainment/default", "arts_entertainment/aquarium" or "food/icecream".)
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

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the venue
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. URL of the thumbnail for the result
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;

  /// Optional. Thumbnail width
  @override
  @JsonKey(name: 'thumbnail_width')
  final int? thumbnailWidth;

  /// Optional. Thumbnail height
  @override
  @JsonKey(name: 'thumbnail_height')
  final int? thumbnailHeight;

  @override
  String toString() {
    return 'InlineQueryResultVenue(type: $type, id: $id, latitude: $latitude, longitude: $longitude, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultVenueImplCopyWith<_$InlineQueryResultVenueImpl>
      get copyWith => __$$InlineQueryResultVenueImplCopyWithImpl<
          _$InlineQueryResultVenueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultVenueImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultVenue extends InlineQueryResultVenue {
  const factory _InlineQueryResultVenue(
      {@JsonKey(name: 'type') final InlineQueryResultType type,
      @JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'latitude') required final double latitude,
      @JsonKey(name: 'longitude') required final double longitude,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'address') required final String address,
      @JsonKey(name: 'foursquare_id') final String? foursquareId,
      @JsonKey(name: 'foursquare_type') final String? foursquareType,
      @JsonKey(name: 'google_place_id') final String? googlePlaceId,
      @JsonKey(name: 'google_place_type') final String? googlePlaceType,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent? inputMessageContent,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') final int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height')
      final int? thumbnailHeight}) = _$InlineQueryResultVenueImpl;
  const _InlineQueryResultVenue._() : super._();

  factory _InlineQueryResultVenue.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultVenueImpl.fromJson;

  /// Type of the result, always [InlineQueryResultType.venue]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Latitude of the venue location in degrees
  @override
  @JsonKey(name: 'latitude')
  double get latitude;

  /// Longitude of the venue location in degrees
  @override
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Title of the venue
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Address of the venue
  @override
  @JsonKey(name: 'address')
  String get address;

  /// Optional. Foursquare identifier of the venue if known
  @override
  @JsonKey(name: 'foursquare_id')
  String? get foursquareId;

  /// Optional. Foursquare type of the venue, if known.
  ///
  /// (For example, "arts_entertainment/default", "arts_entertainment/aquarium" or "food/icecream".)
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

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the venue
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. URL of the thumbnail for the result
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;

  /// Optional. Thumbnail width
  @override
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth;

  /// Optional. Thumbnail height
  @override
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight;

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultVenueImplCopyWith<_$InlineQueryResultVenueImpl>
      get copyWith => throw _privateConstructorUsedError;
}
