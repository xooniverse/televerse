// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_message_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputMessageContent _$InputMessageContentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return InputTextMessageContent.fromJson(json);
    case 'location':
      return InputLocationMessageContent.fromJson(json);
    case 'venue':
      return InputVenueMessageContent.fromJson(json);
    case 'contact':
      return InputContactMessageContent.fromJson(json);
    case 'invoice':
      return InputInvoiceMessageContent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'InputMessageContent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$InputMessageContent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputTextMessageContent value) text,
    required TResult Function(InputLocationMessageContent value) location,
    required TResult Function(InputVenueMessageContent value) venue,
    required TResult Function(InputContactMessageContent value) contact,
    required TResult Function(InputInvoiceMessageContent value) invoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputTextMessageContent value)? text,
    TResult? Function(InputLocationMessageContent value)? location,
    TResult? Function(InputVenueMessageContent value)? venue,
    TResult? Function(InputContactMessageContent value)? contact,
    TResult? Function(InputInvoiceMessageContent value)? invoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputTextMessageContent value)? text,
    TResult Function(InputLocationMessageContent value)? location,
    TResult Function(InputVenueMessageContent value)? venue,
    TResult Function(InputContactMessageContent value)? contact,
    TResult Function(InputInvoiceMessageContent value)? invoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this InputMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputMessageContentCopyWith<$Res> {
  factory $InputMessageContentCopyWith(
          InputMessageContent value, $Res Function(InputMessageContent) then) =
      _$InputMessageContentCopyWithImpl<$Res, InputMessageContent>;
}

/// @nodoc
class _$InputMessageContentCopyWithImpl<$Res, $Val extends InputMessageContent>
    implements $InputMessageContentCopyWith<$Res> {
  _$InputMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InputTextMessageContentImplCopyWith<$Res> {
  factory _$$InputTextMessageContentImplCopyWith(
          _$InputTextMessageContentImpl value,
          $Res Function(_$InputTextMessageContentImpl) then) =
      __$$InputTextMessageContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'entities') List<MessageEntity>? entities,
      @JsonKey(name: 'link_preview_options')
      LinkPreviewOptions? linkPreviewOptions});

  $LinkPreviewOptionsCopyWith<$Res>? get linkPreviewOptions;
}

/// @nodoc
class __$$InputTextMessageContentImplCopyWithImpl<$Res>
    extends _$InputMessageContentCopyWithImpl<$Res,
        _$InputTextMessageContentImpl>
    implements _$$InputTextMessageContentImplCopyWith<$Res> {
  __$$InputTextMessageContentImplCopyWithImpl(
      _$InputTextMessageContentImpl _value,
      $Res Function(_$InputTextMessageContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageText = null,
    Object? parseMode = freezed,
    Object? entities = freezed,
    Object? linkPreviewOptions = freezed,
  }) {
    return _then(_$InputTextMessageContentImpl(
      messageText: null == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      entities: freezed == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      linkPreviewOptions: freezed == linkPreviewOptions
          ? _value.linkPreviewOptions
          : linkPreviewOptions // ignore: cast_nullable_to_non_nullable
              as LinkPreviewOptions?,
    ));
  }

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkPreviewOptionsCopyWith<$Res>? get linkPreviewOptions {
    if (_value.linkPreviewOptions == null) {
      return null;
    }

    return $LinkPreviewOptionsCopyWith<$Res>(_value.linkPreviewOptions!,
        (value) {
      return _then(_value.copyWith(linkPreviewOptions: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$InputTextMessageContentImpl implements InputTextMessageContent {
  const _$InputTextMessageContentImpl(
      {@JsonKey(name: 'message_text') required this.messageText,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'entities') final List<MessageEntity>? entities,
      @JsonKey(name: 'link_preview_options') this.linkPreviewOptions,
      final String? $type})
      : _entities = entities,
        $type = $type ?? 'text';

  factory _$InputTextMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputTextMessageContentImplFromJson(json);

  /// Text of the message to be sent, 1-4096 characters
  @override
  @JsonKey(name: 'message_text')
  final String messageText;

  /// Optional. Mode for parsing entities in the message text. See formatting
  /// options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in message text, which
  /// can be specified instead of parse_mode
  final List<MessageEntity>? _entities;

  /// Optional. List of special entities that appear in message text, which
  /// can be specified instead of parse_mode
  @override
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities {
    final value = _entities;
    if (value == null) return null;
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Link preview generation options for the message
  @override
  @JsonKey(name: 'link_preview_options')
  final LinkPreviewOptions? linkPreviewOptions;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMessageContent.text(messageText: $messageText, parseMode: $parseMode, entities: $entities, linkPreviewOptions: $linkPreviewOptions)';
  }

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputTextMessageContentImplCopyWith<_$InputTextMessageContentImpl>
      get copyWith => __$$InputTextMessageContentImplCopyWithImpl<
          _$InputTextMessageContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputTextMessageContent value) text,
    required TResult Function(InputLocationMessageContent value) location,
    required TResult Function(InputVenueMessageContent value) venue,
    required TResult Function(InputContactMessageContent value) contact,
    required TResult Function(InputInvoiceMessageContent value) invoice,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputTextMessageContent value)? text,
    TResult? Function(InputLocationMessageContent value)? location,
    TResult? Function(InputVenueMessageContent value)? venue,
    TResult? Function(InputContactMessageContent value)? contact,
    TResult? Function(InputInvoiceMessageContent value)? invoice,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputTextMessageContent value)? text,
    TResult Function(InputLocationMessageContent value)? location,
    TResult Function(InputVenueMessageContent value)? venue,
    TResult Function(InputContactMessageContent value)? contact,
    TResult Function(InputInvoiceMessageContent value)? invoice,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputTextMessageContentImplToJson(
      this,
    );
  }
}

abstract class InputTextMessageContent implements InputMessageContent {
  const factory InputTextMessageContent(
          {@JsonKey(name: 'message_text') required final String messageText,
          @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
          @JsonKey(name: 'entities') final List<MessageEntity>? entities,
          @JsonKey(name: 'link_preview_options')
          final LinkPreviewOptions? linkPreviewOptions}) =
      _$InputTextMessageContentImpl;

  factory InputTextMessageContent.fromJson(Map<String, dynamic> json) =
      _$InputTextMessageContentImpl.fromJson;

  /// Text of the message to be sent, 1-4096 characters
  @JsonKey(name: 'message_text')
  String get messageText;

  /// Optional. Mode for parsing entities in the message text. See formatting
  /// options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in message text, which
  /// can be specified instead of parse_mode
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities;

  /// Optional. Link preview generation options for the message
  @JsonKey(name: 'link_preview_options')
  LinkPreviewOptions? get linkPreviewOptions;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputTextMessageContentImplCopyWith<_$InputTextMessageContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputLocationMessageContentImplCopyWith<$Res> {
  factory _$$InputLocationMessageContentImplCopyWith(
          _$InputLocationMessageContentImpl value,
          $Res Function(_$InputLocationMessageContentImpl) then) =
      __$$InputLocationMessageContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'live_period') int? livePeriod,
      @JsonKey(name: 'horizontal_accuracy') int? horizontalAccuracy,
      @JsonKey(name: 'heading') int? heading,
      @JsonKey(name: 'proximity_alert_radius') int? proximityAlertRadius});
}

/// @nodoc
class __$$InputLocationMessageContentImplCopyWithImpl<$Res>
    extends _$InputMessageContentCopyWithImpl<$Res,
        _$InputLocationMessageContentImpl>
    implements _$$InputLocationMessageContentImplCopyWith<$Res> {
  __$$InputLocationMessageContentImplCopyWithImpl(
      _$InputLocationMessageContentImpl _value,
      $Res Function(_$InputLocationMessageContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? livePeriod = freezed,
    Object? horizontalAccuracy = freezed,
    Object? heading = freezed,
    Object? proximityAlertRadius = freezed,
  }) {
    return _then(_$InputLocationMessageContentImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      livePeriod: freezed == livePeriod
          ? _value.livePeriod
          : livePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      horizontalAccuracy: freezed == horizontalAccuracy
          ? _value.horizontalAccuracy
          : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as int?,
      proximityAlertRadius: freezed == proximityAlertRadius
          ? _value.proximityAlertRadius
          : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputLocationMessageContentImpl implements InputLocationMessageContent {
  const _$InputLocationMessageContentImpl(
      {@JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'live_period') this.livePeriod,
      @JsonKey(name: 'horizontal_accuracy') this.horizontalAccuracy,
      @JsonKey(name: 'heading') this.heading,
      @JsonKey(name: 'proximity_alert_radius') this.proximityAlertRadius,
      final String? $type})
      : $type = $type ?? 'location';

  factory _$InputLocationMessageContentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InputLocationMessageContentImplFromJson(json);

  /// Latitude of the location in degrees
  @override
  @JsonKey(name: 'latitude')
  final double latitude;

  /// Longitude of the location in degrees
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Optional. Period in seconds for which the location can be updated,
  /// should be between 60 and 86400.
  @override
  @JsonKey(name: 'live_period')
  final int? livePeriod;

  /// Optional. The radius of uncertainty for the location, measured in
  /// meters, 0-1500
  @override
  @JsonKey(name: 'horizontal_accuracy')
  final int? horizontalAccuracy;

  /// Optional. For live locations, a direction in which the user is moving,
  /// in degrees. Must be between 1 and 360 if specified.
  @override
  @JsonKey(name: 'heading')
  final int? heading;

  /// Optional. For live locations, a maximum distance for proximity alerts
  /// about approaching another chat member, in meters. Must be between 1 and
  /// 100000 if specified.
  @override
  @JsonKey(name: 'proximity_alert_radius')
  final int? proximityAlertRadius;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMessageContent.location(latitude: $latitude, longitude: $longitude, livePeriod: $livePeriod, horizontalAccuracy: $horizontalAccuracy, heading: $heading, proximityAlertRadius: $proximityAlertRadius)';
  }

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputLocationMessageContentImplCopyWith<_$InputLocationMessageContentImpl>
      get copyWith => __$$InputLocationMessageContentImplCopyWithImpl<
          _$InputLocationMessageContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputTextMessageContent value) text,
    required TResult Function(InputLocationMessageContent value) location,
    required TResult Function(InputVenueMessageContent value) venue,
    required TResult Function(InputContactMessageContent value) contact,
    required TResult Function(InputInvoiceMessageContent value) invoice,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputTextMessageContent value)? text,
    TResult? Function(InputLocationMessageContent value)? location,
    TResult? Function(InputVenueMessageContent value)? venue,
    TResult? Function(InputContactMessageContent value)? contact,
    TResult? Function(InputInvoiceMessageContent value)? invoice,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputTextMessageContent value)? text,
    TResult Function(InputLocationMessageContent value)? location,
    TResult Function(InputVenueMessageContent value)? venue,
    TResult Function(InputContactMessageContent value)? contact,
    TResult Function(InputInvoiceMessageContent value)? invoice,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputLocationMessageContentImplToJson(
      this,
    );
  }
}

abstract class InputLocationMessageContent implements InputMessageContent {
  const factory InputLocationMessageContent(
      {@JsonKey(name: 'latitude') required final double latitude,
      @JsonKey(name: 'longitude') required final double longitude,
      @JsonKey(name: 'live_period') final int? livePeriod,
      @JsonKey(name: 'horizontal_accuracy') final int? horizontalAccuracy,
      @JsonKey(name: 'heading') final int? heading,
      @JsonKey(name: 'proximity_alert_radius')
      final int? proximityAlertRadius}) = _$InputLocationMessageContentImpl;

  factory InputLocationMessageContent.fromJson(Map<String, dynamic> json) =
      _$InputLocationMessageContentImpl.fromJson;

  /// Latitude of the location in degrees
  @JsonKey(name: 'latitude')
  double get latitude;

  /// Longitude of the location in degrees
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Optional. Period in seconds for which the location can be updated,
  /// should be between 60 and 86400.
  @JsonKey(name: 'live_period')
  int? get livePeriod;

  /// Optional. The radius of uncertainty for the location, measured in
  /// meters, 0-1500
  @JsonKey(name: 'horizontal_accuracy')
  int? get horizontalAccuracy;

  /// Optional. For live locations, a direction in which the user is moving,
  /// in degrees. Must be between 1 and 360 if specified.
  @JsonKey(name: 'heading')
  int? get heading;

  /// Optional. For live locations, a maximum distance for proximity alerts
  /// about approaching another chat member, in meters. Must be between 1 and
  /// 100000 if specified.
  @JsonKey(name: 'proximity_alert_radius')
  int? get proximityAlertRadius;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputLocationMessageContentImplCopyWith<_$InputLocationMessageContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputVenueMessageContentImplCopyWith<$Res> {
  factory _$$InputVenueMessageContentImplCopyWith(
          _$InputVenueMessageContentImpl value,
          $Res Function(_$InputVenueMessageContentImpl) then) =
      __$$InputVenueMessageContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'foursquare_id') String? foursquareId,
      @JsonKey(name: 'foursquare_type') String? foursquareType,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'google_place_type') String? googlePlaceType});
}

/// @nodoc
class __$$InputVenueMessageContentImplCopyWithImpl<$Res>
    extends _$InputMessageContentCopyWithImpl<$Res,
        _$InputVenueMessageContentImpl>
    implements _$$InputVenueMessageContentImplCopyWith<$Res> {
  __$$InputVenueMessageContentImplCopyWithImpl(
      _$InputVenueMessageContentImpl _value,
      $Res Function(_$InputVenueMessageContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? title = null,
    Object? address = null,
    Object? foursquareId = freezed,
    Object? foursquareType = freezed,
    Object? googlePlaceId = freezed,
    Object? googlePlaceType = freezed,
  }) {
    return _then(_$InputVenueMessageContentImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputVenueMessageContentImpl implements InputVenueMessageContent {
  const _$InputVenueMessageContentImpl(
      {@JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'foursquare_id') this.foursquareId,
      @JsonKey(name: 'foursquare_type') this.foursquareType,
      @JsonKey(name: 'google_place_id') this.googlePlaceId,
      @JsonKey(name: 'google_place_type') this.googlePlaceType,
      final String? $type})
      : $type = $type ?? 'venue';

  factory _$InputVenueMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputVenueMessageContentImplFromJson(json);

  /// Latitude of the venue in degrees
  @override
  @JsonKey(name: 'latitude')
  final double latitude;

  /// Longitude of the venue in degrees
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Name of the venue
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Address of the venue
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Optional. Foursquare identifier of the venue, if known
  @override
  @JsonKey(name: 'foursquare_id')
  final String? foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example,
  /// “arts_entertainment/default”, “arts_entertainment/aquarium” or
  /// “food/icecream”.)
  @override
  @JsonKey(name: 'foursquare_type')
  final String? foursquareType;

  /// Optional. Google Places identifier of the venue
  @override
  @JsonKey(name: 'google_place_id')
  final String? googlePlaceId;

  /// Optional. Google Places type of the venue. ([See supported
  /// types](https://developers.google.com/places/web-service/supported_types))
  @override
  @JsonKey(name: 'google_place_type')
  final String? googlePlaceType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMessageContent.venue(latitude: $latitude, longitude: $longitude, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputVenueMessageContentImplCopyWith<_$InputVenueMessageContentImpl>
      get copyWith => __$$InputVenueMessageContentImplCopyWithImpl<
          _$InputVenueMessageContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputTextMessageContent value) text,
    required TResult Function(InputLocationMessageContent value) location,
    required TResult Function(InputVenueMessageContent value) venue,
    required TResult Function(InputContactMessageContent value) contact,
    required TResult Function(InputInvoiceMessageContent value) invoice,
  }) {
    return venue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputTextMessageContent value)? text,
    TResult? Function(InputLocationMessageContent value)? location,
    TResult? Function(InputVenueMessageContent value)? venue,
    TResult? Function(InputContactMessageContent value)? contact,
    TResult? Function(InputInvoiceMessageContent value)? invoice,
  }) {
    return venue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputTextMessageContent value)? text,
    TResult Function(InputLocationMessageContent value)? location,
    TResult Function(InputVenueMessageContent value)? venue,
    TResult Function(InputContactMessageContent value)? contact,
    TResult Function(InputInvoiceMessageContent value)? invoice,
    required TResult orElse(),
  }) {
    if (venue != null) {
      return venue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputVenueMessageContentImplToJson(
      this,
    );
  }
}

abstract class InputVenueMessageContent implements InputMessageContent {
  const factory InputVenueMessageContent(
          {@JsonKey(name: 'latitude') required final double latitude,
          @JsonKey(name: 'longitude') required final double longitude,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'foursquare_id') final String? foursquareId,
          @JsonKey(name: 'foursquare_type') final String? foursquareType,
          @JsonKey(name: 'google_place_id') final String? googlePlaceId,
          @JsonKey(name: 'google_place_type') final String? googlePlaceType}) =
      _$InputVenueMessageContentImpl;

  factory InputVenueMessageContent.fromJson(Map<String, dynamic> json) =
      _$InputVenueMessageContentImpl.fromJson;

  /// Latitude of the venue in degrees
  @JsonKey(name: 'latitude')
  double get latitude;

  /// Longitude of the venue in degrees
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Name of the venue
  @JsonKey(name: 'title')
  String get title;

  /// Address of the venue
  @JsonKey(name: 'address')
  String get address;

  /// Optional. Foursquare identifier of the venue, if known
  @JsonKey(name: 'foursquare_id')
  String? get foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example,
  /// “arts_entertainment/default”, “arts_entertainment/aquarium” or
  /// “food/icecream”.)
  @JsonKey(name: 'foursquare_type')
  String? get foursquareType;

  /// Optional. Google Places identifier of the venue
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId;

  /// Optional. Google Places type of the venue. ([See supported
  /// types](https://developers.google.com/places/web-service/supported_types))
  @JsonKey(name: 'google_place_type')
  String? get googlePlaceType;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputVenueMessageContentImplCopyWith<_$InputVenueMessageContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputContactMessageContentImplCopyWith<$Res> {
  factory _$$InputContactMessageContentImplCopyWith(
          _$InputContactMessageContentImpl value,
          $Res Function(_$InputContactMessageContentImpl) then) =
      __$$InputContactMessageContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'vcard') String? vcard});
}

/// @nodoc
class __$$InputContactMessageContentImplCopyWithImpl<$Res>
    extends _$InputMessageContentCopyWithImpl<$Res,
        _$InputContactMessageContentImpl>
    implements _$$InputContactMessageContentImplCopyWith<$Res> {
  __$$InputContactMessageContentImplCopyWithImpl(
      _$InputContactMessageContentImpl _value,
      $Res Function(_$InputContactMessageContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? vcard = freezed,
  }) {
    return _then(_$InputContactMessageContentImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      vcard: freezed == vcard
          ? _value.vcard
          : vcard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputContactMessageContentImpl implements InputContactMessageContent {
  const _$InputContactMessageContentImpl(
      {@JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'vcard') this.vcard,
      final String? $type})
      : $type = $type ?? 'contact';

  factory _$InputContactMessageContentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InputContactMessageContentImplFromJson(json);

  /// Contact's phone number
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  /// Contact's first name
  @override
  @JsonKey(name: 'first_name')
  final String firstName;

  /// Optional. Contact's last name
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Optional. Additional data about the contact in the form of a
  /// [vCard](https://en.wikipedia.org/wiki/VCard), 0-2048 bytes
  @override
  @JsonKey(name: 'vcard')
  final String? vcard;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMessageContent.contact(phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, vcard: $vcard)';
  }

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputContactMessageContentImplCopyWith<_$InputContactMessageContentImpl>
      get copyWith => __$$InputContactMessageContentImplCopyWithImpl<
          _$InputContactMessageContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputTextMessageContent value) text,
    required TResult Function(InputLocationMessageContent value) location,
    required TResult Function(InputVenueMessageContent value) venue,
    required TResult Function(InputContactMessageContent value) contact,
    required TResult Function(InputInvoiceMessageContent value) invoice,
  }) {
    return contact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputTextMessageContent value)? text,
    TResult? Function(InputLocationMessageContent value)? location,
    TResult? Function(InputVenueMessageContent value)? venue,
    TResult? Function(InputContactMessageContent value)? contact,
    TResult? Function(InputInvoiceMessageContent value)? invoice,
  }) {
    return contact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputTextMessageContent value)? text,
    TResult Function(InputLocationMessageContent value)? location,
    TResult Function(InputVenueMessageContent value)? venue,
    TResult Function(InputContactMessageContent value)? contact,
    TResult Function(InputInvoiceMessageContent value)? invoice,
    required TResult orElse(),
  }) {
    if (contact != null) {
      return contact(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputContactMessageContentImplToJson(
      this,
    );
  }
}

abstract class InputContactMessageContent implements InputMessageContent {
  const factory InputContactMessageContent(
          {@JsonKey(name: 'phone_number') required final String phoneNumber,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') final String? lastName,
          @JsonKey(name: 'vcard') final String? vcard}) =
      _$InputContactMessageContentImpl;

  factory InputContactMessageContent.fromJson(Map<String, dynamic> json) =
      _$InputContactMessageContentImpl.fromJson;

  /// Contact's phone number
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  /// Contact's first name
  @JsonKey(name: 'first_name')
  String get firstName;

  /// Optional. Contact's last name
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. Additional data about the contact in the form of a
  /// [vCard](https://en.wikipedia.org/wiki/VCard), 0-2048 bytes
  @JsonKey(name: 'vcard')
  String? get vcard;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputContactMessageContentImplCopyWith<_$InputContactMessageContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputInvoiceMessageContentImplCopyWith<$Res> {
  factory _$$InputInvoiceMessageContentImplCopyWith(
          _$InputInvoiceMessageContentImpl value,
          $Res Function(_$InputInvoiceMessageContentImpl) then) =
      __$$InputInvoiceMessageContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'payload') String payload,
      @JsonKey(name: 'provider_token') String? providerToken,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'prices') List<LabeledPrice> prices,
      @JsonKey(name: 'max_tip_amount') int? maxTipAmount,
      @JsonKey(name: 'suggested_tip_amounts') List<int>? suggestedTipAmounts,
      @JsonKey(name: 'provider_data') String? providerData,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'photo_size') int? photoSize,
      @JsonKey(name: 'photo_width') int? photoWidth,
      @JsonKey(name: 'photo_height') int? photoHeight,
      @JsonKey(name: 'need_name') bool? needName,
      @JsonKey(name: 'need_phone_number') bool? needPhoneNumber,
      @JsonKey(name: 'need_email') bool? needEmail,
      @JsonKey(name: 'need_shipping_address') bool? needShippingAddress,
      @JsonKey(name: 'send_phone_number_to_provider')
      bool? sendPhoneNumberToProvider,
      @JsonKey(name: 'send_email_to_provider') bool? sendEmailToProvider,
      @JsonKey(name: 'is_flexible') bool? isFlexible});
}

/// @nodoc
class __$$InputInvoiceMessageContentImplCopyWithImpl<$Res>
    extends _$InputMessageContentCopyWithImpl<$Res,
        _$InputInvoiceMessageContentImpl>
    implements _$$InputInvoiceMessageContentImplCopyWith<$Res> {
  __$$InputInvoiceMessageContentImplCopyWithImpl(
      _$InputInvoiceMessageContentImpl _value,
      $Res Function(_$InputInvoiceMessageContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? payload = null,
    Object? providerToken = freezed,
    Object? currency = null,
    Object? prices = null,
    Object? maxTipAmount = freezed,
    Object? suggestedTipAmounts = freezed,
    Object? providerData = freezed,
    Object? photoUrl = freezed,
    Object? photoSize = freezed,
    Object? photoWidth = freezed,
    Object? photoHeight = freezed,
    Object? needName = freezed,
    Object? needPhoneNumber = freezed,
    Object? needEmail = freezed,
    Object? needShippingAddress = freezed,
    Object? sendPhoneNumberToProvider = freezed,
    Object? sendEmailToProvider = freezed,
    Object? isFlexible = freezed,
  }) {
    return _then(_$InputInvoiceMessageContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      providerToken: freezed == providerToken
          ? _value.providerToken
          : providerToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<LabeledPrice>,
      maxTipAmount: freezed == maxTipAmount
          ? _value.maxTipAmount
          : maxTipAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      suggestedTipAmounts: freezed == suggestedTipAmounts
          ? _value._suggestedTipAmounts
          : suggestedTipAmounts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      providerData: freezed == providerData
          ? _value.providerData
          : providerData // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photoSize: freezed == photoSize
          ? _value.photoSize
          : photoSize // ignore: cast_nullable_to_non_nullable
              as int?,
      photoWidth: freezed == photoWidth
          ? _value.photoWidth
          : photoWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      photoHeight: freezed == photoHeight
          ? _value.photoHeight
          : photoHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      needName: freezed == needName
          ? _value.needName
          : needName // ignore: cast_nullable_to_non_nullable
              as bool?,
      needPhoneNumber: freezed == needPhoneNumber
          ? _value.needPhoneNumber
          : needPhoneNumber // ignore: cast_nullable_to_non_nullable
              as bool?,
      needEmail: freezed == needEmail
          ? _value.needEmail
          : needEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      needShippingAddress: freezed == needShippingAddress
          ? _value.needShippingAddress
          : needShippingAddress // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendPhoneNumberToProvider: freezed == sendPhoneNumberToProvider
          ? _value.sendPhoneNumberToProvider
          : sendPhoneNumberToProvider // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendEmailToProvider: freezed == sendEmailToProvider
          ? _value.sendEmailToProvider
          : sendEmailToProvider // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFlexible: freezed == isFlexible
          ? _value.isFlexible
          : isFlexible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputInvoiceMessageContentImpl implements InputInvoiceMessageContent {
  const _$InputInvoiceMessageContentImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'payload') required this.payload,
      @JsonKey(name: 'provider_token') this.providerToken,
      @JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'prices') required final List<LabeledPrice> prices,
      @JsonKey(name: 'max_tip_amount') this.maxTipAmount,
      @JsonKey(name: 'suggested_tip_amounts')
      final List<int>? suggestedTipAmounts,
      @JsonKey(name: 'provider_data') this.providerData,
      @JsonKey(name: 'photo_url') this.photoUrl,
      @JsonKey(name: 'photo_size') this.photoSize,
      @JsonKey(name: 'photo_width') this.photoWidth,
      @JsonKey(name: 'photo_height') this.photoHeight,
      @JsonKey(name: 'need_name') this.needName,
      @JsonKey(name: 'need_phone_number') this.needPhoneNumber,
      @JsonKey(name: 'need_email') this.needEmail,
      @JsonKey(name: 'need_shipping_address') this.needShippingAddress,
      @JsonKey(name: 'send_phone_number_to_provider')
      this.sendPhoneNumberToProvider,
      @JsonKey(name: 'send_email_to_provider') this.sendEmailToProvider,
      @JsonKey(name: 'is_flexible') this.isFlexible,
      final String? $type})
      : _prices = prices,
        _suggestedTipAmounts = suggestedTipAmounts,
        $type = $type ?? 'invoice';

  factory _$InputInvoiceMessageContentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InputInvoiceMessageContentImplFromJson(json);

  /// Product name, 1-32 characters
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Product description, 1-255 characters
  @override
  @JsonKey(name: 'description')
  final String description;

  /// Bot-defined invoice payload, 1-128 bytes. This will not be displayed to
  /// the user, use for your internal processes.
  @override
  @JsonKey(name: 'payload')
  final String payload;

  /// Optional. Payment provider token, obtained via @BotFather. Pass an empty
  /// string for payments in Telegram Stars.
  @override
  @JsonKey(name: 'provider_token')
  final String? providerToken;

  /// Three-letter ISO 4217 currency code, [see more on
  /// currencies](https://core.telegram.org/bots/payments#supported-currencies)
  @override
  @JsonKey(name: 'currency')
  final String currency;

  /// Price breakdown, a JSON-serialized list of components (e.g. product
  /// price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  final List<LabeledPrice> _prices;

  /// Price breakdown, a JSON-serialized list of components (e.g. product
  /// price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  @override
  @JsonKey(name: 'prices')
  List<LabeledPrice> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  /// Optional. The maximum accepted amount for tips in the smallest units of
  /// the currency (integer, not float/double). For example, for a maximum tip
  /// of US$ 1.45 pass max_tip_amount = 145. See the exp parameter in
  /// currencies.json, it shows the number of digits past the decimal point
  /// for each currency (2 for the majority of currencies). Defaults to 0
  @override
  @JsonKey(name: 'max_tip_amount')
  final int? maxTipAmount;

  /// Optional. A JSON-serialized array of suggested amounts of tip in the
  /// smallest units of the currency (integer, not float/double). At most 4
  /// suggested tip amounts can be specified. The suggested tip amounts must
  /// be positive, passed in a strictly increased order and must not exceed
  /// max_tip_amount.
  final List<int>? _suggestedTipAmounts;

  /// Optional. A JSON-serialized array of suggested amounts of tip in the
  /// smallest units of the currency (integer, not float/double). At most 4
  /// suggested tip amounts can be specified. The suggested tip amounts must
  /// be positive, passed in a strictly increased order and must not exceed
  /// max_tip_amount.
  @override
  @JsonKey(name: 'suggested_tip_amounts')
  List<int>? get suggestedTipAmounts {
    final value = _suggestedTipAmounts;
    if (value == null) return null;
    if (_suggestedTipAmounts is EqualUnmodifiableListView)
      return _suggestedTipAmounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. A JSON-serialized object for data about the invoice, which
  /// will be shared with the payment provider. A detailed description of the
  /// required fields should be provided by the payment provider.
  @override
  @JsonKey(name: 'provider_data')
  final String? providerData;

  /// Optional. URL of the product photo for the invoice. Can be a photo of
  /// the goods or a marketing image for a service.
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;

  /// Optional. Photo size in bytes
  @override
  @JsonKey(name: 'photo_size')
  final int? photoSize;

  /// Optional. Photo width
  @override
  @JsonKey(name: 'photo_width')
  final int? photoWidth;

  /// Optional. Photo height
  @override
  @JsonKey(name: 'photo_height')
  final int? photoHeight;

  /// Optional. Pass True if you require the user's full name to complete the
  /// order
  @override
  @JsonKey(name: 'need_name')
  final bool? needName;

  /// Optional. Pass True if you require the user's phone number to complete
  /// the order
  @override
  @JsonKey(name: 'need_phone_number')
  final bool? needPhoneNumber;

  /// Optional. Pass True if you require the user's email address to complete
  /// the order
  @override
  @JsonKey(name: 'need_email')
  final bool? needEmail;

  /// Optional. Pass True if you require the user's shipping address to
  /// complete the order
  @override
  @JsonKey(name: 'need_shipping_address')
  final bool? needShippingAddress;

  /// Optional. Pass True if the user's phone number should be sent to
  /// provider
  @override
  @JsonKey(name: 'send_phone_number_to_provider')
  final bool? sendPhoneNumberToProvider;

  /// Optional. Pass True if the user's email address should be sent to
  /// provider
  @override
  @JsonKey(name: 'send_email_to_provider')
  final bool? sendEmailToProvider;

  /// Optional. Pass True if the final price depends on the shipping method
  @override
  @JsonKey(name: 'is_flexible')
  final bool? isFlexible;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMessageContent.invoice(title: $title, description: $description, payload: $payload, providerToken: $providerToken, currency: $currency, prices: $prices, maxTipAmount: $maxTipAmount, suggestedTipAmounts: $suggestedTipAmounts, providerData: $providerData, photoUrl: $photoUrl, photoSize: $photoSize, photoWidth: $photoWidth, photoHeight: $photoHeight, needName: $needName, needPhoneNumber: $needPhoneNumber, needEmail: $needEmail, needShippingAddress: $needShippingAddress, sendPhoneNumberToProvider: $sendPhoneNumberToProvider, sendEmailToProvider: $sendEmailToProvider, isFlexible: $isFlexible)';
  }

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputInvoiceMessageContentImplCopyWith<_$InputInvoiceMessageContentImpl>
      get copyWith => __$$InputInvoiceMessageContentImplCopyWithImpl<
          _$InputInvoiceMessageContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputTextMessageContent value) text,
    required TResult Function(InputLocationMessageContent value) location,
    required TResult Function(InputVenueMessageContent value) venue,
    required TResult Function(InputContactMessageContent value) contact,
    required TResult Function(InputInvoiceMessageContent value) invoice,
  }) {
    return invoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputTextMessageContent value)? text,
    TResult? Function(InputLocationMessageContent value)? location,
    TResult? Function(InputVenueMessageContent value)? venue,
    TResult? Function(InputContactMessageContent value)? contact,
    TResult? Function(InputInvoiceMessageContent value)? invoice,
  }) {
    return invoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputTextMessageContent value)? text,
    TResult Function(InputLocationMessageContent value)? location,
    TResult Function(InputVenueMessageContent value)? venue,
    TResult Function(InputContactMessageContent value)? contact,
    TResult Function(InputInvoiceMessageContent value)? invoice,
    required TResult orElse(),
  }) {
    if (invoice != null) {
      return invoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputInvoiceMessageContentImplToJson(
      this,
    );
  }
}

abstract class InputInvoiceMessageContent implements InputMessageContent {
  const factory InputInvoiceMessageContent(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'payload') required final String payload,
      @JsonKey(name: 'provider_token') final String? providerToken,
      @JsonKey(name: 'currency') required final String currency,
      @JsonKey(name: 'prices') required final List<LabeledPrice> prices,
      @JsonKey(name: 'max_tip_amount') final int? maxTipAmount,
      @JsonKey(name: 'suggested_tip_amounts')
      final List<int>? suggestedTipAmounts,
      @JsonKey(name: 'provider_data') final String? providerData,
      @JsonKey(name: 'photo_url') final String? photoUrl,
      @JsonKey(name: 'photo_size') final int? photoSize,
      @JsonKey(name: 'photo_width') final int? photoWidth,
      @JsonKey(name: 'photo_height') final int? photoHeight,
      @JsonKey(name: 'need_name') final bool? needName,
      @JsonKey(name: 'need_phone_number') final bool? needPhoneNumber,
      @JsonKey(name: 'need_email') final bool? needEmail,
      @JsonKey(name: 'need_shipping_address') final bool? needShippingAddress,
      @JsonKey(name: 'send_phone_number_to_provider')
      final bool? sendPhoneNumberToProvider,
      @JsonKey(name: 'send_email_to_provider') final bool? sendEmailToProvider,
      @JsonKey(name: 'is_flexible')
      final bool? isFlexible}) = _$InputInvoiceMessageContentImpl;

  factory InputInvoiceMessageContent.fromJson(Map<String, dynamic> json) =
      _$InputInvoiceMessageContentImpl.fromJson;

  /// Product name, 1-32 characters
  @JsonKey(name: 'title')
  String get title;

  /// Product description, 1-255 characters
  @JsonKey(name: 'description')
  String get description;

  /// Bot-defined invoice payload, 1-128 bytes. This will not be displayed to
  /// the user, use for your internal processes.
  @JsonKey(name: 'payload')
  String get payload;

  /// Optional. Payment provider token, obtained via @BotFather. Pass an empty
  /// string for payments in Telegram Stars.
  @JsonKey(name: 'provider_token')
  String? get providerToken;

  /// Three-letter ISO 4217 currency code, [see more on
  /// currencies](https://core.telegram.org/bots/payments#supported-currencies)
  @JsonKey(name: 'currency')
  String get currency;

  /// Price breakdown, a JSON-serialized list of components (e.g. product
  /// price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  @JsonKey(name: 'prices')
  List<LabeledPrice> get prices;

  /// Optional. The maximum accepted amount for tips in the smallest units of
  /// the currency (integer, not float/double). For example, for a maximum tip
  /// of US$ 1.45 pass max_tip_amount = 145. See the exp parameter in
  /// currencies.json, it shows the number of digits past the decimal point
  /// for each currency (2 for the majority of currencies). Defaults to 0
  @JsonKey(name: 'max_tip_amount')
  int? get maxTipAmount;

  /// Optional. A JSON-serialized array of suggested amounts of tip in the
  /// smallest units of the currency (integer, not float/double). At most 4
  /// suggested tip amounts can be specified. The suggested tip amounts must
  /// be positive, passed in a strictly increased order and must not exceed
  /// max_tip_amount.
  @JsonKey(name: 'suggested_tip_amounts')
  List<int>? get suggestedTipAmounts;

  /// Optional. A JSON-serialized object for data about the invoice, which
  /// will be shared with the payment provider. A detailed description of the
  /// required fields should be provided by the payment provider.
  @JsonKey(name: 'provider_data')
  String? get providerData;

  /// Optional. URL of the product photo for the invoice. Can be a photo of
  /// the goods or a marketing image for a service.
  @JsonKey(name: 'photo_url')
  String? get photoUrl;

  /// Optional. Photo size in bytes
  @JsonKey(name: 'photo_size')
  int? get photoSize;

  /// Optional. Photo width
  @JsonKey(name: 'photo_width')
  int? get photoWidth;

  /// Optional. Photo height
  @JsonKey(name: 'photo_height')
  int? get photoHeight;

  /// Optional. Pass True if you require the user's full name to complete the
  /// order
  @JsonKey(name: 'need_name')
  bool? get needName;

  /// Optional. Pass True if you require the user's phone number to complete
  /// the order
  @JsonKey(name: 'need_phone_number')
  bool? get needPhoneNumber;

  /// Optional. Pass True if you require the user's email address to complete
  /// the order
  @JsonKey(name: 'need_email')
  bool? get needEmail;

  /// Optional. Pass True if you require the user's shipping address to
  /// complete the order
  @JsonKey(name: 'need_shipping_address')
  bool? get needShippingAddress;

  /// Optional. Pass True if the user's phone number should be sent to
  /// provider
  @JsonKey(name: 'send_phone_number_to_provider')
  bool? get sendPhoneNumberToProvider;

  /// Optional. Pass True if the user's email address should be sent to
  /// provider
  @JsonKey(name: 'send_email_to_provider')
  bool? get sendEmailToProvider;

  /// Optional. Pass True if the final price depends on the shipping method
  @JsonKey(name: 'is_flexible')
  bool? get isFlexible;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputInvoiceMessageContentImplCopyWith<_$InputInvoiceMessageContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
