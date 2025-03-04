// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultLocation _$InlineQueryResultLocationFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultLocation.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultLocation {
  /// Type of the result, always [InlineQueryResultType.location]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Location latitude in degrees
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;

  /// Location longitude in degrees
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;

  /// Location title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  @JsonKey(name: 'horizontal_accuracy')
  int? get horizontalAccuracy => throw _privateConstructorUsedError;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  @JsonKey(name: 'live_period')
  int? get livePeriod => throw _privateConstructorUsedError;

  /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  @JsonKey(name: 'heading')
  int? get heading => throw _privateConstructorUsedError;

  /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  @JsonKey(name: 'proximity_alert_radius')
  int? get proximityAlertRadius => throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. Content of the message to be sent instead of the location
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Optional. Url of the thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Optional. Thumbnail width
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth => throw _privateConstructorUsedError;

  /// Optional. Thumbnail height
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultLocationCopyWith<InlineQueryResultLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultLocationCopyWith<$Res> {
  factory $InlineQueryResultLocationCopyWith(InlineQueryResultLocation value,
          $Res Function(InlineQueryResultLocation) then) =
      _$InlineQueryResultLocationCopyWithImpl<$Res, InlineQueryResultLocation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
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
      @JsonKey(name: 'thumbnail_height') int? thumbnailHeight});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultLocationCopyWithImpl<$Res,
        $Val extends InlineQueryResultLocation>
    implements $InlineQueryResultLocationCopyWith<$Res> {
  _$InlineQueryResultLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
      horizontalAccuracy: freezed == horizontalAccuracy
          ? _value.horizontalAccuracy
          : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      livePeriod: freezed == livePeriod
          ? _value.livePeriod
          : livePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as int?,
      proximityAlertRadius: freezed == proximityAlertRadius
          ? _value.proximityAlertRadius
          : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
              as int?,
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

  /// Create a copy of InlineQueryResultLocation
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
abstract class _$$InlineQueryResultLocationImplCopyWith<$Res>
    implements $InlineQueryResultLocationCopyWith<$Res> {
  factory _$$InlineQueryResultLocationImplCopyWith(
          _$InlineQueryResultLocationImpl value,
          $Res Function(_$InlineQueryResultLocationImpl) then) =
      __$$InlineQueryResultLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
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
      @JsonKey(name: 'thumbnail_height') int? thumbnailHeight});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$$InlineQueryResultLocationImplCopyWithImpl<$Res>
    extends _$InlineQueryResultLocationCopyWithImpl<$Res,
        _$InlineQueryResultLocationImpl>
    implements _$$InlineQueryResultLocationImplCopyWith<$Res> {
  __$$InlineQueryResultLocationImplCopyWithImpl(
      _$InlineQueryResultLocationImpl _value,
      $Res Function(_$InlineQueryResultLocationImpl) _then)
      : super(_value, _then);

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
    return _then(_$InlineQueryResultLocationImpl(
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
      horizontalAccuracy: freezed == horizontalAccuracy
          ? _value.horizontalAccuracy
          : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      livePeriod: freezed == livePeriod
          ? _value.livePeriod
          : livePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as int?,
      proximityAlertRadius: freezed == proximityAlertRadius
          ? _value.proximityAlertRadius
          : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$InlineQueryResultLocationImpl extends _InlineQueryResultLocation {
  const _$InlineQueryResultLocationImpl(
      {@JsonKey(name: 'type') this.type = InlineQueryResultType.location,
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
      @JsonKey(name: 'thumbnail_height') this.thumbnailHeight})
      : super._();

  factory _$InlineQueryResultLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultLocationImplFromJson(json);

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

  @override
  String toString() {
    return 'InlineQueryResultLocation(type: $type, id: $id, latitude: $latitude, longitude: $longitude, title: $title, horizontalAccuracy: $horizontalAccuracy, livePeriod: $livePeriod, heading: $heading, proximityAlertRadius: $proximityAlertRadius, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }

  /// Create a copy of InlineQueryResultLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultLocationImplCopyWith<_$InlineQueryResultLocationImpl>
      get copyWith => __$$InlineQueryResultLocationImplCopyWithImpl<
          _$InlineQueryResultLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultLocationImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultLocation extends InlineQueryResultLocation {
  const factory _InlineQueryResultLocation(
      {@JsonKey(name: 'type') final InlineQueryResultType type,
      @JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'latitude') required final double latitude,
      @JsonKey(name: 'longitude') required final double longitude,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'horizontal_accuracy') final int? horizontalAccuracy,
      @JsonKey(name: 'live_period') final int? livePeriod,
      @JsonKey(name: 'heading') final int? heading,
      @JsonKey(name: 'proximity_alert_radius') final int? proximityAlertRadius,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent? inputMessageContent,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') final int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height')
      final int? thumbnailHeight}) = _$InlineQueryResultLocationImpl;
  const _InlineQueryResultLocation._() : super._();

  factory _InlineQueryResultLocation.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultLocationImpl.fromJson;

  /// Type of the result, always [InlineQueryResultType.location]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Location latitude in degrees
  @override
  @JsonKey(name: 'latitude')
  double get latitude;

  /// Location longitude in degrees
  @override
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Location title
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  @override
  @JsonKey(name: 'horizontal_accuracy')
  int? get horizontalAccuracy;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  @override
  @JsonKey(name: 'live_period')
  int? get livePeriod;

  /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  @override
  @JsonKey(name: 'heading')
  int? get heading;

  /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  @override
  @JsonKey(name: 'proximity_alert_radius')
  int? get proximityAlertRadius;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the location
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. Url of the thumbnail for the result
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

  /// Create a copy of InlineQueryResultLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultLocationImplCopyWith<_$InlineQueryResultLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
