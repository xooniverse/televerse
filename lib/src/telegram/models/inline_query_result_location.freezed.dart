// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultLocation {
  /// Type of the result, always [InlineQueryResultType.location]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// Location latitude in degrees
  @JsonKey(name: 'latitude')
  double get latitude;

  /// Location longitude in degrees
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Location title
  @JsonKey(name: 'title')
  String get title;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  @JsonKey(name: 'horizontal_accuracy')
  int? get horizontalAccuracy;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  @JsonKey(name: 'live_period')
  int? get livePeriod;

  /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  @JsonKey(name: 'heading')
  int? get heading;

  /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  @JsonKey(name: 'proximity_alert_radius')
  int? get proximityAlertRadius;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the location
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;

  /// Optional. Thumbnail width
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth;

  /// Optional. Thumbnail height
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight;

  /// Create a copy of InlineQueryResultLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultLocationCopyWith<InlineQueryResultLocation> get copyWith =>
      _$InlineQueryResultLocationCopyWithImpl<InlineQueryResultLocation>(
        this as InlineQueryResultLocation,
        _$identity,
      );

  /// Serializes this InlineQueryResultLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultLocation(type: $type, id: $id, latitude: $latitude, longitude: $longitude, title: $title, horizontalAccuracy: $horizontalAccuracy, livePeriod: $livePeriod, heading: $heading, proximityAlertRadius: $proximityAlertRadius, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultLocationCopyWith<$Res> {
  factory $InlineQueryResultLocationCopyWith(
    InlineQueryResultLocation value,
    $Res Function(InlineQueryResultLocation) _then,
  ) = _$InlineQueryResultLocationCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') InlineQueryResultType type,
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'horizontal_accuracy') int? horizontalAccuracy,
    @JsonKey(name: 'live_period') int? livePeriod,
    @JsonKey(name: 'heading') int? heading,
    @JsonKey(name: 'proximity_alert_radius') int? proximityAlertRadius,
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
class _$InlineQueryResultLocationCopyWithImpl<$Res>
    implements $InlineQueryResultLocationCopyWith<$Res> {
  _$InlineQueryResultLocationCopyWithImpl(this._self, this._then);

  final InlineQueryResultLocation _self;
  final $Res Function(InlineQueryResultLocation) _then;

  /// Create a copy of InlineQueryResultLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? title = null,
    Object? horizontalAccuracy = freezed,
    Object? livePeriod = freezed,
    Object? heading = freezed,
    Object? proximityAlertRadius = freezed,
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
        horizontalAccuracy: freezed == horizontalAccuracy
            ? _self.horizontalAccuracy
            : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
                  as int?,
        livePeriod: freezed == livePeriod
            ? _self.livePeriod
            : livePeriod // ignore: cast_nullable_to_non_nullable
                  as int?,
        heading: freezed == heading
            ? _self.heading
            : heading // ignore: cast_nullable_to_non_nullable
                  as int?,
        proximityAlertRadius: freezed == proximityAlertRadius
            ? _self.proximityAlertRadius
            : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
                  as int?,
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

  /// Create a copy of InlineQueryResultLocation
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

/// Adds pattern-matching-related methods to [InlineQueryResultLocation].
extension InlineQueryResultLocationPatterns on InlineQueryResultLocation {
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
    TResult Function(_InlineQueryResultLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultLocation() when $default != null:
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
    TResult Function(_InlineQueryResultLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultLocation():
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
    TResult? Function(_InlineQueryResultLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultLocation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultLocation extends InlineQueryResultLocation {
  const _InlineQueryResultLocation({
    @JsonKey(name: 'type') this.type = InlineQueryResultType.location,
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'latitude') required this.latitude,
    @JsonKey(name: 'longitude') required this.longitude,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'horizontal_accuracy') this.horizontalAccuracy,
    @JsonKey(name: 'live_period') this.livePeriod,
    @JsonKey(name: 'heading') this.heading,
    @JsonKey(name: 'proximity_alert_radius') this.proximityAlertRadius,
    @JsonKey(name: 'reply_markup') this.replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    this.inputMessageContent,
    @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
    @JsonKey(name: 'thumbnail_width') this.thumbnailWidth,
    @JsonKey(name: 'thumbnail_height') this.thumbnailHeight,
  }) : super._();
  factory _InlineQueryResultLocation.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultLocationFromJson(json);

  /// Type of the result, always [InlineQueryResultType.location]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Location latitude in degrees
  @override
  @JsonKey(name: 'latitude')
  final double latitude;

  /// Location longitude in degrees
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Location title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  @override
  @JsonKey(name: 'horizontal_accuracy')
  final int? horizontalAccuracy;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  @override
  @JsonKey(name: 'live_period')
  final int? livePeriod;

  /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  @override
  @JsonKey(name: 'heading')
  final int? heading;

  /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  @override
  @JsonKey(name: 'proximity_alert_radius')
  final int? proximityAlertRadius;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the location
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
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

  /// Create a copy of InlineQueryResultLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultLocationCopyWith<_InlineQueryResultLocation>
  get copyWith =>
      __$InlineQueryResultLocationCopyWithImpl<_InlineQueryResultLocation>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultLocationToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultLocation(type: $type, id: $id, latitude: $latitude, longitude: $longitude, title: $title, horizontalAccuracy: $horizontalAccuracy, livePeriod: $livePeriod, heading: $heading, proximityAlertRadius: $proximityAlertRadius, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultLocationCopyWith<$Res>
    implements $InlineQueryResultLocationCopyWith<$Res> {
  factory _$InlineQueryResultLocationCopyWith(
    _InlineQueryResultLocation value,
    $Res Function(_InlineQueryResultLocation) _then,
  ) = __$InlineQueryResultLocationCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') InlineQueryResultType type,
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'horizontal_accuracy') int? horizontalAccuracy,
    @JsonKey(name: 'live_period') int? livePeriod,
    @JsonKey(name: 'heading') int? heading,
    @JsonKey(name: 'proximity_alert_radius') int? proximityAlertRadius,
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
class __$InlineQueryResultLocationCopyWithImpl<$Res>
    implements _$InlineQueryResultLocationCopyWith<$Res> {
  __$InlineQueryResultLocationCopyWithImpl(this._self, this._then);

  final _InlineQueryResultLocation _self;
  final $Res Function(_InlineQueryResultLocation) _then;

  /// Create a copy of InlineQueryResultLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? title = null,
    Object? horizontalAccuracy = freezed,
    Object? livePeriod = freezed,
    Object? heading = freezed,
    Object? proximityAlertRadius = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
  }) {
    return _then(
      _InlineQueryResultLocation(
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
        horizontalAccuracy: freezed == horizontalAccuracy
            ? _self.horizontalAccuracy
            : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
                  as int?,
        livePeriod: freezed == livePeriod
            ? _self.livePeriod
            : livePeriod // ignore: cast_nullable_to_non_nullable
                  as int?,
        heading: freezed == heading
            ? _self.heading
            : heading // ignore: cast_nullable_to_non_nullable
                  as int?,
        proximityAlertRadius: freezed == proximityAlertRadius
            ? _self.proximityAlertRadius
            : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
                  as int?,
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

  /// Create a copy of InlineQueryResultLocation
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
