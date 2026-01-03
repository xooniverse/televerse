// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_venue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultVenue {
  /// Type of the result, always [InlineQueryResultType.venue]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// Latitude of the venue location in degrees
  @JsonKey(name: 'latitude')
  double get latitude;

  /// Longitude of the venue location in degrees
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Title of the venue
  @JsonKey(name: 'title')
  String get title;

  /// Address of the venue
  @JsonKey(name: 'address')
  String get address;

  /// Optional. Foursquare identifier of the venue if known
  @JsonKey(name: 'foursquare_id')
  String? get foursquareId;

  /// Optional. Foursquare type of the venue, if known.
  ///
  /// (For example, "arts_entertainment/default", "arts_entertainment/aquarium" or "food/icecream".)
  @JsonKey(name: 'foursquare_type')
  String? get foursquareType;

  /// Optional. Google Places identifier of the venue
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  @JsonKey(name: 'google_place_type')
  String? get googlePlaceType;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the venue
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. URL of the thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;

  /// Optional. Thumbnail width
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth;

  /// Optional. Thumbnail height
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight;

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultVenueCopyWith<InlineQueryResultVenue> get copyWith =>
      _$InlineQueryResultVenueCopyWithImpl<InlineQueryResultVenue>(
        this as InlineQueryResultVenue,
        _$identity,
      );

  /// Serializes this InlineQueryResultVenue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultVenue(type: $type, id: $id, latitude: $latitude, longitude: $longitude, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultVenueCopyWith<$Res> {
  factory $InlineQueryResultVenueCopyWith(
    InlineQueryResultVenue value,
    $Res Function(InlineQueryResultVenue) _then,
  ) = _$InlineQueryResultVenueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') InlineQueryResultType type,
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
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
  });

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultVenueCopyWithImpl<$Res>
    implements $InlineQueryResultVenueCopyWith<$Res> {
  _$InlineQueryResultVenueCopyWithImpl(this._self, this._then);

  final InlineQueryResultVenue _self;
  final $Res Function(InlineQueryResultVenue) _then;

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
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        latitude: null == latitude
            ? _self.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _self.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
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
        replyMarkup: freezed == replyMarkup
            ? _self.replyMarkup
            : replyMarkup // ignore: cast_nullable_to_non_nullable
                  as InlineKeyboardMarkup?,
        inputMessageContent: freezed == inputMessageContent
            ? _self.inputMessageContent
            : inputMessageContent // ignore: cast_nullable_to_non_nullable
                  as InputMessageContent?,
        thumbnailUrl: freezed == thumbnailUrl
            ? _self.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnailWidth: freezed == thumbnailWidth
            ? _self.thumbnailWidth
            : thumbnailWidth // ignore: cast_nullable_to_non_nullable
                  as int?,
        thumbnailHeight: freezed == thumbnailHeight
            ? _self.thumbnailHeight
            : thumbnailHeight // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!, (
      value,
    ) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}

/// Adds pattern-matching-related methods to [InlineQueryResultVenue].
extension InlineQueryResultVenuePatterns on InlineQueryResultVenue {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InlineQueryResultVenue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultVenue() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InlineQueryResultVenue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultVenue():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InlineQueryResultVenue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultVenue() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultVenue extends InlineQueryResultVenue {
  const _InlineQueryResultVenue({
    @JsonKey(name: 'type') this.type = InlineQueryResultType.venue,
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
    @JsonKey(name: 'thumbnail_height') this.thumbnailHeight,
  }) : super._();
  factory _InlineQueryResultVenue.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVenueFromJson(json);

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

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultVenueCopyWith<_InlineQueryResultVenue> get copyWith =>
      __$InlineQueryResultVenueCopyWithImpl<_InlineQueryResultVenue>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultVenueToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultVenue(type: $type, id: $id, latitude: $latitude, longitude: $longitude, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultVenueCopyWith<$Res>
    implements $InlineQueryResultVenueCopyWith<$Res> {
  factory _$InlineQueryResultVenueCopyWith(
    _InlineQueryResultVenue value,
    $Res Function(_InlineQueryResultVenue) _then,
  ) = __$InlineQueryResultVenueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') InlineQueryResultType type,
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
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
  });

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultVenueCopyWithImpl<$Res>
    implements _$InlineQueryResultVenueCopyWith<$Res> {
  __$InlineQueryResultVenueCopyWithImpl(this._self, this._then);

  final _InlineQueryResultVenue _self;
  final $Res Function(_InlineQueryResultVenue) _then;

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(
      _InlineQueryResultVenue(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        latitude: null == latitude
            ? _self.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _self.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
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
        replyMarkup: freezed == replyMarkup
            ? _self.replyMarkup
            : replyMarkup // ignore: cast_nullable_to_non_nullable
                  as InlineKeyboardMarkup?,
        inputMessageContent: freezed == inputMessageContent
            ? _self.inputMessageContent
            : inputMessageContent // ignore: cast_nullable_to_non_nullable
                  as InputMessageContent?,
        thumbnailUrl: freezed == thumbnailUrl
            ? _self.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnailWidth: freezed == thumbnailWidth
            ? _self.thumbnailWidth
            : thumbnailWidth // ignore: cast_nullable_to_non_nullable
                  as int?,
        thumbnailHeight: freezed == thumbnailHeight
            ? _self.thumbnailHeight
            : thumbnailHeight // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of InlineQueryResultVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!, (
      value,
    ) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}
