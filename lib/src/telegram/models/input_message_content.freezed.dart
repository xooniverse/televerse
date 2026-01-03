// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_message_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'InputMessageContent',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$InputMessageContent {
  /// Serializes this InputMessageContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputMessageContent()';
  }
}

/// @nodoc
class $InputMessageContentCopyWith<$Res> {
  $InputMessageContentCopyWith(
    InputMessageContent _,
    $Res Function(InputMessageContent) __,
  );
}

/// Adds pattern-matching-related methods to [InputMessageContent].
extension InputMessageContentPatterns on InputMessageContent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputTextMessageContent value)? text,
    TResult Function(InputLocationMessageContent value)? location,
    TResult Function(InputVenueMessageContent value)? venue,
    TResult Function(InputContactMessageContent value)? contact,
    TResult Function(InputInvoiceMessageContent value)? invoice,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InputTextMessageContent() when text != null:
        return text(_that);
      case InputLocationMessageContent() when location != null:
        return location(_that);
      case InputVenueMessageContent() when venue != null:
        return venue(_that);
      case InputContactMessageContent() when contact != null:
        return contact(_that);
      case InputInvoiceMessageContent() when invoice != null:
        return invoice(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(InputTextMessageContent value) text,
    required TResult Function(InputLocationMessageContent value) location,
    required TResult Function(InputVenueMessageContent value) venue,
    required TResult Function(InputContactMessageContent value) contact,
    required TResult Function(InputInvoiceMessageContent value) invoice,
  }) {
    final _that = this;
    switch (_that) {
      case InputTextMessageContent():
        return text(_that);
      case InputLocationMessageContent():
        return location(_that);
      case InputVenueMessageContent():
        return venue(_that);
      case InputContactMessageContent():
        return contact(_that);
      case InputInvoiceMessageContent():
        return invoice(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputTextMessageContent value)? text,
    TResult? Function(InputLocationMessageContent value)? location,
    TResult? Function(InputVenueMessageContent value)? venue,
    TResult? Function(InputContactMessageContent value)? contact,
    TResult? Function(InputInvoiceMessageContent value)? invoice,
  }) {
    final _that = this;
    switch (_that) {
      case InputTextMessageContent() when text != null:
        return text(_that);
      case InputLocationMessageContent() when location != null:
        return location(_that);
      case InputVenueMessageContent() when venue != null:
        return venue(_that);
      case InputContactMessageContent() when contact != null:
        return contact(_that);
      case InputInvoiceMessageContent() when invoice != null:
        return invoice(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class InputTextMessageContent implements InputMessageContent {
  const InputTextMessageContent({
    @JsonKey(name: 'message_text') required this.messageText,
    @JsonKey(name: 'parse_mode') this.parseMode,
    @JsonKey(name: 'entities') final List<MessageEntity>? entities,
    @JsonKey(name: 'link_preview_options') this.linkPreviewOptions,
    final String? $type,
  }) : _entities = entities,
       $type = $type ?? 'text';
  factory InputTextMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputTextMessageContentFromJson(json);

  /// Text of the message to be sent, 1-4096 characters
  @JsonKey(name: 'message_text')
  final String messageText;

  /// Optional. Mode for parsing entities in the message text. See formatting
  /// options for more details.
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in message text, which
  /// can be specified instead of parse_mode
  final List<MessageEntity>? _entities;

  /// Optional. List of special entities that appear in message text, which
  /// can be specified instead of parse_mode
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities {
    final value = _entities;
    if (value == null) return null;
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Link preview generation options for the message
  @JsonKey(name: 'link_preview_options')
  final LinkPreviewOptions? linkPreviewOptions;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputTextMessageContentCopyWith<InputTextMessageContent> get copyWith =>
      _$InputTextMessageContentCopyWithImpl<InputTextMessageContent>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InputTextMessageContentToJson(this);
  }

  @override
  String toString() {
    return 'InputMessageContent.text(messageText: $messageText, parseMode: $parseMode, entities: $entities, linkPreviewOptions: $linkPreviewOptions)';
  }
}

/// @nodoc
abstract mixin class $InputTextMessageContentCopyWith<$Res>
    implements $InputMessageContentCopyWith<$Res> {
  factory $InputTextMessageContentCopyWith(
    InputTextMessageContent value,
    $Res Function(InputTextMessageContent) _then,
  ) = _$InputTextMessageContentCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'message_text') String messageText,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'entities') List<MessageEntity>? entities,
    @JsonKey(name: 'link_preview_options')
    LinkPreviewOptions? linkPreviewOptions,
  });

  $LinkPreviewOptionsCopyWith<$Res>? get linkPreviewOptions;
}

/// @nodoc
class _$InputTextMessageContentCopyWithImpl<$Res>
    implements $InputTextMessageContentCopyWith<$Res> {
  _$InputTextMessageContentCopyWithImpl(this._self, this._then);

  final InputTextMessageContent _self;
  final $Res Function(InputTextMessageContent) _then;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messageText = null,
    Object? parseMode = freezed,
    Object? entities = freezed,
    Object? linkPreviewOptions = freezed,
  }) {
    return _then(
      InputTextMessageContent(
        messageText: null == messageText
            ? _self.messageText
            : messageText // ignore: cast_nullable_to_non_nullable
                  as String,
        parseMode: freezed == parseMode
            ? _self.parseMode
            : parseMode // ignore: cast_nullable_to_non_nullable
                  as ParseMode?,
        entities: freezed == entities
            ? _self._entities
            : entities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        linkPreviewOptions: freezed == linkPreviewOptions
            ? _self.linkPreviewOptions
            : linkPreviewOptions // ignore: cast_nullable_to_non_nullable
                  as LinkPreviewOptions?,
      ),
    );
  }

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkPreviewOptionsCopyWith<$Res>? get linkPreviewOptions {
    if (_self.linkPreviewOptions == null) {
      return null;
    }

    return $LinkPreviewOptionsCopyWith<$Res>(_self.linkPreviewOptions!, (
      value,
    ) {
      return _then(_self.copyWith(linkPreviewOptions: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class InputLocationMessageContent implements InputMessageContent {
  const InputLocationMessageContent({
    @JsonKey(name: 'latitude') required this.latitude,
    @JsonKey(name: 'longitude') required this.longitude,
    @JsonKey(name: 'live_period') this.livePeriod,
    @JsonKey(name: 'horizontal_accuracy') this.horizontalAccuracy,
    @JsonKey(name: 'heading') this.heading,
    @JsonKey(name: 'proximity_alert_radius') this.proximityAlertRadius,
    final String? $type,
  }) : $type = $type ?? 'location';
  factory InputLocationMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputLocationMessageContentFromJson(json);

  /// Latitude of the location in degrees
  @JsonKey(name: 'latitude')
  final double latitude;

  /// Longitude of the location in degrees
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Optional. Period in seconds for which the location can be updated,
  /// should be between 60 and 86400.
  @JsonKey(name: 'live_period')
  final int? livePeriod;

  /// Optional. The radius of uncertainty for the location, measured in
  /// meters, 0-1500
  @JsonKey(name: 'horizontal_accuracy')
  final int? horizontalAccuracy;

  /// Optional. For live locations, a direction in which the user is moving,
  /// in degrees. Must be between 1 and 360 if specified.
  @JsonKey(name: 'heading')
  final int? heading;

  /// Optional. For live locations, a maximum distance for proximity alerts
  /// about approaching another chat member, in meters. Must be between 1 and
  /// 100000 if specified.
  @JsonKey(name: 'proximity_alert_radius')
  final int? proximityAlertRadius;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputLocationMessageContentCopyWith<InputLocationMessageContent>
  get copyWith =>
      _$InputLocationMessageContentCopyWithImpl<InputLocationMessageContent>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InputLocationMessageContentToJson(this);
  }

  @override
  String toString() {
    return 'InputMessageContent.location(latitude: $latitude, longitude: $longitude, livePeriod: $livePeriod, horizontalAccuracy: $horizontalAccuracy, heading: $heading, proximityAlertRadius: $proximityAlertRadius)';
  }
}

/// @nodoc
abstract mixin class $InputLocationMessageContentCopyWith<$Res>
    implements $InputMessageContentCopyWith<$Res> {
  factory $InputLocationMessageContentCopyWith(
    InputLocationMessageContent value,
    $Res Function(InputLocationMessageContent) _then,
  ) = _$InputLocationMessageContentCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'live_period') int? livePeriod,
    @JsonKey(name: 'horizontal_accuracy') int? horizontalAccuracy,
    @JsonKey(name: 'heading') int? heading,
    @JsonKey(name: 'proximity_alert_radius') int? proximityAlertRadius,
  });
}

/// @nodoc
class _$InputLocationMessageContentCopyWithImpl<$Res>
    implements $InputLocationMessageContentCopyWith<$Res> {
  _$InputLocationMessageContentCopyWithImpl(this._self, this._then);

  final InputLocationMessageContent _self;
  final $Res Function(InputLocationMessageContent) _then;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? livePeriod = freezed,
    Object? horizontalAccuracy = freezed,
    Object? heading = freezed,
    Object? proximityAlertRadius = freezed,
  }) {
    return _then(
      InputLocationMessageContent(
        latitude: null == latitude
            ? _self.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _self.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
        livePeriod: freezed == livePeriod
            ? _self.livePeriod
            : livePeriod // ignore: cast_nullable_to_non_nullable
                  as int?,
        horizontalAccuracy: freezed == horizontalAccuracy
            ? _self.horizontalAccuracy
            : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
                  as int?,
        heading: freezed == heading
            ? _self.heading
            : heading // ignore: cast_nullable_to_non_nullable
                  as int?,
        proximityAlertRadius: freezed == proximityAlertRadius
            ? _self.proximityAlertRadius
            : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class InputVenueMessageContent implements InputMessageContent {
  const InputVenueMessageContent({
    @JsonKey(name: 'latitude') required this.latitude,
    @JsonKey(name: 'longitude') required this.longitude,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'foursquare_id') this.foursquareId,
    @JsonKey(name: 'foursquare_type') this.foursquareType,
    @JsonKey(name: 'google_place_id') this.googlePlaceId,
    @JsonKey(name: 'google_place_type') this.googlePlaceType,
    final String? $type,
  }) : $type = $type ?? 'venue';
  factory InputVenueMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputVenueMessageContentFromJson(json);

  /// Latitude of the venue in degrees
  @JsonKey(name: 'latitude')
  final double latitude;

  /// Longitude of the venue in degrees
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Name of the venue
  @JsonKey(name: 'title')
  final String title;

  /// Address of the venue
  @JsonKey(name: 'address')
  final String address;

  /// Optional. Foursquare identifier of the venue, if known
  @JsonKey(name: 'foursquare_id')
  final String? foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example,
  /// “arts_entertainment/default”, “arts_entertainment/aquarium” or
  /// “food/icecream”.)
  @JsonKey(name: 'foursquare_type')
  final String? foursquareType;

  /// Optional. Google Places identifier of the venue
  @JsonKey(name: 'google_place_id')
  final String? googlePlaceId;

  /// Optional. Google Places type of the venue. ([See supported
  /// types](https://developers.google.com/places/web-service/supported_types))
  @JsonKey(name: 'google_place_type')
  final String? googlePlaceType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputVenueMessageContentCopyWith<InputVenueMessageContent> get copyWith =>
      _$InputVenueMessageContentCopyWithImpl<InputVenueMessageContent>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InputVenueMessageContentToJson(this);
  }

  @override
  String toString() {
    return 'InputMessageContent.venue(latitude: $latitude, longitude: $longitude, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }
}

/// @nodoc
abstract mixin class $InputVenueMessageContentCopyWith<$Res>
    implements $InputMessageContentCopyWith<$Res> {
  factory $InputVenueMessageContentCopyWith(
    InputVenueMessageContent value,
    $Res Function(InputVenueMessageContent) _then,
  ) = _$InputVenueMessageContentCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'foursquare_id') String? foursquareId,
    @JsonKey(name: 'foursquare_type') String? foursquareType,
    @JsonKey(name: 'google_place_id') String? googlePlaceId,
    @JsonKey(name: 'google_place_type') String? googlePlaceType,
  });
}

/// @nodoc
class _$InputVenueMessageContentCopyWithImpl<$Res>
    implements $InputVenueMessageContentCopyWith<$Res> {
  _$InputVenueMessageContentCopyWithImpl(this._self, this._then);

  final InputVenueMessageContent _self;
  final $Res Function(InputVenueMessageContent) _then;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
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
    return _then(
      InputVenueMessageContent(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class InputContactMessageContent implements InputMessageContent {
  const InputContactMessageContent({
    @JsonKey(name: 'phone_number') required this.phoneNumber,
    @JsonKey(name: 'first_name') required this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    @JsonKey(name: 'vcard') this.vcard,
    final String? $type,
  }) : $type = $type ?? 'contact';
  factory InputContactMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputContactMessageContentFromJson(json);

  /// Contact's phone number
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  /// Contact's first name
  @JsonKey(name: 'first_name')
  final String firstName;

  /// Optional. Contact's last name
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Optional. Additional data about the contact in the form of a
  /// [vCard](https://en.wikipedia.org/wiki/VCard), 0-2048 bytes
  @JsonKey(name: 'vcard')
  final String? vcard;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputContactMessageContentCopyWith<InputContactMessageContent>
  get copyWith =>
      _$InputContactMessageContentCopyWithImpl<InputContactMessageContent>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InputContactMessageContentToJson(this);
  }

  @override
  String toString() {
    return 'InputMessageContent.contact(phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, vcard: $vcard)';
  }
}

/// @nodoc
abstract mixin class $InputContactMessageContentCopyWith<$Res>
    implements $InputMessageContentCopyWith<$Res> {
  factory $InputContactMessageContentCopyWith(
    InputContactMessageContent value,
    $Res Function(InputContactMessageContent) _then,
  ) = _$InputContactMessageContentCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'phone_number') String phoneNumber,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'vcard') String? vcard,
  });
}

/// @nodoc
class _$InputContactMessageContentCopyWithImpl<$Res>
    implements $InputContactMessageContentCopyWith<$Res> {
  _$InputContactMessageContentCopyWithImpl(this._self, this._then);

  final InputContactMessageContent _self;
  final $Res Function(InputContactMessageContent) _then;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? vcard = freezed,
  }) {
    return _then(
      InputContactMessageContent(
        phoneNumber: null == phoneNumber
            ? _self.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _self.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: freezed == lastName
            ? _self.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        vcard: freezed == vcard
            ? _self.vcard
            : vcard // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class InputInvoiceMessageContent implements InputMessageContent {
  const InputInvoiceMessageContent({
    @JsonKey(name: 'title') required this.title,
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
    final String? $type,
  }) : _prices = prices,
       _suggestedTipAmounts = suggestedTipAmounts,
       $type = $type ?? 'invoice';
  factory InputInvoiceMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputInvoiceMessageContentFromJson(json);

  /// Product name, 1-32 characters
  @JsonKey(name: 'title')
  final String title;

  /// Product description, 1-255 characters
  @JsonKey(name: 'description')
  final String description;

  /// Bot-defined invoice payload, 1-128 bytes. This will not be displayed to
  /// the user, use for your internal processes.
  @JsonKey(name: 'payload')
  final String payload;

  /// Optional. Payment provider token, obtained via @BotFather. Pass an empty
  /// string for payments in Telegram Stars.
  @JsonKey(name: 'provider_token')
  final String? providerToken;

  /// Three-letter ISO 4217 currency code, [see more on
  /// currencies](https://core.telegram.org/bots/payments#supported-currencies)
  @JsonKey(name: 'currency')
  final String currency;

  /// Price breakdown, a JSON-serialized list of components (e.g. product
  /// price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  final List<LabeledPrice> _prices;

  /// Price breakdown, a JSON-serialized list of components (e.g. product
  /// price, tax, discount, delivery cost, delivery tax, bonus, etc.)
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
  @JsonKey(name: 'provider_data')
  final String? providerData;

  /// Optional. URL of the product photo for the invoice. Can be a photo of
  /// the goods or a marketing image for a service.
  @JsonKey(name: 'photo_url')
  final String? photoUrl;

  /// Optional. Photo size in bytes
  @JsonKey(name: 'photo_size')
  final int? photoSize;

  /// Optional. Photo width
  @JsonKey(name: 'photo_width')
  final int? photoWidth;

  /// Optional. Photo height
  @JsonKey(name: 'photo_height')
  final int? photoHeight;

  /// Optional. Pass True if you require the user's full name to complete the
  /// order
  @JsonKey(name: 'need_name')
  final bool? needName;

  /// Optional. Pass True if you require the user's phone number to complete
  /// the order
  @JsonKey(name: 'need_phone_number')
  final bool? needPhoneNumber;

  /// Optional. Pass True if you require the user's email address to complete
  /// the order
  @JsonKey(name: 'need_email')
  final bool? needEmail;

  /// Optional. Pass True if you require the user's shipping address to
  /// complete the order
  @JsonKey(name: 'need_shipping_address')
  final bool? needShippingAddress;

  /// Optional. Pass True if the user's phone number should be sent to
  /// provider
  @JsonKey(name: 'send_phone_number_to_provider')
  final bool? sendPhoneNumberToProvider;

  /// Optional. Pass True if the user's email address should be sent to
  /// provider
  @JsonKey(name: 'send_email_to_provider')
  final bool? sendEmailToProvider;

  /// Optional. Pass True if the final price depends on the shipping method
  @JsonKey(name: 'is_flexible')
  final bool? isFlexible;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputInvoiceMessageContentCopyWith<InputInvoiceMessageContent>
  get copyWith =>
      _$InputInvoiceMessageContentCopyWithImpl<InputInvoiceMessageContent>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InputInvoiceMessageContentToJson(this);
  }

  @override
  String toString() {
    return 'InputMessageContent.invoice(title: $title, description: $description, payload: $payload, providerToken: $providerToken, currency: $currency, prices: $prices, maxTipAmount: $maxTipAmount, suggestedTipAmounts: $suggestedTipAmounts, providerData: $providerData, photoUrl: $photoUrl, photoSize: $photoSize, photoWidth: $photoWidth, photoHeight: $photoHeight, needName: $needName, needPhoneNumber: $needPhoneNumber, needEmail: $needEmail, needShippingAddress: $needShippingAddress, sendPhoneNumberToProvider: $sendPhoneNumberToProvider, sendEmailToProvider: $sendEmailToProvider, isFlexible: $isFlexible)';
  }
}

/// @nodoc
abstract mixin class $InputInvoiceMessageContentCopyWith<$Res>
    implements $InputMessageContentCopyWith<$Res> {
  factory $InputInvoiceMessageContentCopyWith(
    InputInvoiceMessageContent value,
    $Res Function(InputInvoiceMessageContent) _then,
  ) = _$InputInvoiceMessageContentCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
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
    @JsonKey(name: 'is_flexible') bool? isFlexible,
  });
}

/// @nodoc
class _$InputInvoiceMessageContentCopyWithImpl<$Res>
    implements $InputInvoiceMessageContentCopyWith<$Res> {
  _$InputInvoiceMessageContentCopyWithImpl(this._self, this._then);

  final InputInvoiceMessageContent _self;
  final $Res Function(InputInvoiceMessageContent) _then;

  /// Create a copy of InputMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
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
    return _then(
      InputInvoiceMessageContent(
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        payload: null == payload
            ? _self.payload
            : payload // ignore: cast_nullable_to_non_nullable
                  as String,
        providerToken: freezed == providerToken
            ? _self.providerToken
            : providerToken // ignore: cast_nullable_to_non_nullable
                  as String?,
        currency: null == currency
            ? _self.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        prices: null == prices
            ? _self._prices
            : prices // ignore: cast_nullable_to_non_nullable
                  as List<LabeledPrice>,
        maxTipAmount: freezed == maxTipAmount
            ? _self.maxTipAmount
            : maxTipAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        suggestedTipAmounts: freezed == suggestedTipAmounts
            ? _self._suggestedTipAmounts
            : suggestedTipAmounts // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
        providerData: freezed == providerData
            ? _self.providerData
            : providerData // ignore: cast_nullable_to_non_nullable
                  as String?,
        photoUrl: freezed == photoUrl
            ? _self.photoUrl
            : photoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        photoSize: freezed == photoSize
            ? _self.photoSize
            : photoSize // ignore: cast_nullable_to_non_nullable
                  as int?,
        photoWidth: freezed == photoWidth
            ? _self.photoWidth
            : photoWidth // ignore: cast_nullable_to_non_nullable
                  as int?,
        photoHeight: freezed == photoHeight
            ? _self.photoHeight
            : photoHeight // ignore: cast_nullable_to_non_nullable
                  as int?,
        needName: freezed == needName
            ? _self.needName
            : needName // ignore: cast_nullable_to_non_nullable
                  as bool?,
        needPhoneNumber: freezed == needPhoneNumber
            ? _self.needPhoneNumber
            : needPhoneNumber // ignore: cast_nullable_to_non_nullable
                  as bool?,
        needEmail: freezed == needEmail
            ? _self.needEmail
            : needEmail // ignore: cast_nullable_to_non_nullable
                  as bool?,
        needShippingAddress: freezed == needShippingAddress
            ? _self.needShippingAddress
            : needShippingAddress // ignore: cast_nullable_to_non_nullable
                  as bool?,
        sendPhoneNumberToProvider: freezed == sendPhoneNumberToProvider
            ? _self.sendPhoneNumberToProvider
            : sendPhoneNumberToProvider // ignore: cast_nullable_to_non_nullable
                  as bool?,
        sendEmailToProvider: freezed == sendEmailToProvider
            ? _self.sendEmailToProvider
            : sendEmailToProvider // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isFlexible: freezed == isFlexible
            ? _self.isFlexible
            : isFlexible // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
