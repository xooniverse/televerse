// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_area_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StoryAreaType _$StoryAreaTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'location':
      return StoryAreaTypeLocation.fromJson(json);
    case 'suggested_reaction':
      return StoryAreaTypeSuggestedReaction.fromJson(json);
    case 'link':
      return StoryAreaTypeLink.fromJson(json);
    case 'weather':
      return StoryAreaTypeWeather.fromJson(json);
    case 'unique_gift':
      return StoryAreaTypeUniqueGift.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'StoryAreaType',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$StoryAreaType {
  /// Type of the area, always "location"
  @JsonKey(name: 'type')
  StoryAreaTypeType get type;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryAreaTypeCopyWith<StoryAreaType> get copyWith =>
      _$StoryAreaTypeCopyWithImpl<StoryAreaType>(
        this as StoryAreaType,
        _$identity,
      );

  /// Serializes this StoryAreaType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'StoryAreaType(type: $type)';
  }
}

/// @nodoc
abstract mixin class $StoryAreaTypeCopyWith<$Res> {
  factory $StoryAreaTypeCopyWith(
    StoryAreaType value,
    $Res Function(StoryAreaType) _then,
  ) = _$StoryAreaTypeCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') StoryAreaTypeType type});
}

/// @nodoc
class _$StoryAreaTypeCopyWithImpl<$Res>
    implements $StoryAreaTypeCopyWith<$Res> {
  _$StoryAreaTypeCopyWithImpl(this._self, this._then);

  final StoryAreaType _self;
  final $Res Function(StoryAreaType) _then;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as StoryAreaTypeType,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [StoryAreaType].
extension StoryAreaTypePatterns on StoryAreaType {
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
    TResult Function(StoryAreaTypeLocation value)? location,
    TResult Function(StoryAreaTypeSuggestedReaction value)? suggestedReaction,
    TResult Function(StoryAreaTypeLink value)? link,
    TResult Function(StoryAreaTypeWeather value)? weather,
    TResult Function(StoryAreaTypeUniqueGift value)? uniqueGift,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StoryAreaTypeLocation() when location != null:
        return location(_that);
      case StoryAreaTypeSuggestedReaction() when suggestedReaction != null:
        return suggestedReaction(_that);
      case StoryAreaTypeLink() when link != null:
        return link(_that);
      case StoryAreaTypeWeather() when weather != null:
        return weather(_that);
      case StoryAreaTypeUniqueGift() when uniqueGift != null:
        return uniqueGift(_that);
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
    required TResult Function(StoryAreaTypeLocation value) location,
    required TResult Function(StoryAreaTypeSuggestedReaction value)
    suggestedReaction,
    required TResult Function(StoryAreaTypeLink value) link,
    required TResult Function(StoryAreaTypeWeather value) weather,
    required TResult Function(StoryAreaTypeUniqueGift value) uniqueGift,
  }) {
    final _that = this;
    switch (_that) {
      case StoryAreaTypeLocation():
        return location(_that);
      case StoryAreaTypeSuggestedReaction():
        return suggestedReaction(_that);
      case StoryAreaTypeLink():
        return link(_that);
      case StoryAreaTypeWeather():
        return weather(_that);
      case StoryAreaTypeUniqueGift():
        return uniqueGift(_that);
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
    TResult? Function(StoryAreaTypeLocation value)? location,
    TResult? Function(StoryAreaTypeSuggestedReaction value)? suggestedReaction,
    TResult? Function(StoryAreaTypeLink value)? link,
    TResult? Function(StoryAreaTypeWeather value)? weather,
    TResult? Function(StoryAreaTypeUniqueGift value)? uniqueGift,
  }) {
    final _that = this;
    switch (_that) {
      case StoryAreaTypeLocation() when location != null:
        return location(_that);
      case StoryAreaTypeSuggestedReaction() when suggestedReaction != null:
        return suggestedReaction(_that);
      case StoryAreaTypeLink() when link != null:
        return link(_that);
      case StoryAreaTypeWeather() when weather != null:
        return weather(_that);
      case StoryAreaTypeUniqueGift() when uniqueGift != null:
        return uniqueGift(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class StoryAreaTypeLocation implements StoryAreaType {
  const StoryAreaTypeLocation({
    @JsonKey(name: 'type') this.type = StoryAreaTypeType.location,
    @JsonKey(name: 'latitude') required this.latitude,
    @JsonKey(name: 'longitude') required this.longitude,
    @JsonKey(name: 'address') this.address,
  });
  factory StoryAreaTypeLocation.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaTypeLocationFromJson(json);

  /// Type of the area, always "location"
  @override
  @JsonKey(name: 'type')
  final StoryAreaTypeType type;

  /// Location latitude in degrees
  @JsonKey(name: 'latitude')
  final double latitude;

  /// Location longitude in degrees
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Optional. Address of the location
  @JsonKey(name: 'address')
  final LocationAddress? address;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryAreaTypeLocationCopyWith<StoryAreaTypeLocation> get copyWith =>
      _$StoryAreaTypeLocationCopyWithImpl<StoryAreaTypeLocation>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$StoryAreaTypeLocationToJson(this);
  }

  @override
  String toString() {
    return 'StoryAreaType.location(type: $type, latitude: $latitude, longitude: $longitude, address: $address)';
  }
}

/// @nodoc
abstract mixin class $StoryAreaTypeLocationCopyWith<$Res>
    implements $StoryAreaTypeCopyWith<$Res> {
  factory $StoryAreaTypeLocationCopyWith(
    StoryAreaTypeLocation value,
    $Res Function(StoryAreaTypeLocation) _then,
  ) = _$StoryAreaTypeLocationCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') StoryAreaTypeType type,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'address') LocationAddress? address,
  });

  $LocationAddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$StoryAreaTypeLocationCopyWithImpl<$Res>
    implements $StoryAreaTypeLocationCopyWith<$Res> {
  _$StoryAreaTypeLocationCopyWithImpl(this._self, this._then);

  final StoryAreaTypeLocation _self;
  final $Res Function(StoryAreaTypeLocation) _then;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
  }) {
    return _then(
      StoryAreaTypeLocation(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as StoryAreaTypeType,
        latitude: null == latitude
            ? _self.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _self.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
        address: freezed == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as LocationAddress?,
      ),
    );
  }

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $LocationAddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StoryAreaTypeSuggestedReaction implements StoryAreaType {
  const StoryAreaTypeSuggestedReaction({
    @JsonKey(name: 'type') this.type = StoryAreaTypeType.suggestedReaction,
    @JsonKey(name: 'reaction_type') required this.reactionType,
    @JsonKey(name: 'is_dark') this.isDark,
    @JsonKey(name: 'is_flipped') this.isFlipped,
  });
  factory StoryAreaTypeSuggestedReaction.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaTypeSuggestedReactionFromJson(json);

  /// Type of the area, always "suggested_reaction"
  @override
  @JsonKey(name: 'type')
  final StoryAreaTypeType type;

  /// Type of the reaction
  @JsonKey(name: 'reaction_type')
  final ReactionType reactionType;

  /// Optional. Pass True if the reaction area has a dark background
  @JsonKey(name: 'is_dark')
  final bool? isDark;

  /// Optional. Pass True if reaction area corner is flipped
  @JsonKey(name: 'is_flipped')
  final bool? isFlipped;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryAreaTypeSuggestedReactionCopyWith<StoryAreaTypeSuggestedReaction>
  get copyWith =>
      _$StoryAreaTypeSuggestedReactionCopyWithImpl<
        StoryAreaTypeSuggestedReaction
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoryAreaTypeSuggestedReactionToJson(this);
  }

  @override
  String toString() {
    return 'StoryAreaType.suggestedReaction(type: $type, reactionType: $reactionType, isDark: $isDark, isFlipped: $isFlipped)';
  }
}

/// @nodoc
abstract mixin class $StoryAreaTypeSuggestedReactionCopyWith<$Res>
    implements $StoryAreaTypeCopyWith<$Res> {
  factory $StoryAreaTypeSuggestedReactionCopyWith(
    StoryAreaTypeSuggestedReaction value,
    $Res Function(StoryAreaTypeSuggestedReaction) _then,
  ) = _$StoryAreaTypeSuggestedReactionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') StoryAreaTypeType type,
    @JsonKey(name: 'reaction_type') ReactionType reactionType,
    @JsonKey(name: 'is_dark') bool? isDark,
    @JsonKey(name: 'is_flipped') bool? isFlipped,
  });

  $ReactionTypeCopyWith<$Res> get reactionType;
}

/// @nodoc
class _$StoryAreaTypeSuggestedReactionCopyWithImpl<$Res>
    implements $StoryAreaTypeSuggestedReactionCopyWith<$Res> {
  _$StoryAreaTypeSuggestedReactionCopyWithImpl(this._self, this._then);

  final StoryAreaTypeSuggestedReaction _self;
  final $Res Function(StoryAreaTypeSuggestedReaction) _then;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? reactionType = null,
    Object? isDark = freezed,
    Object? isFlipped = freezed,
  }) {
    return _then(
      StoryAreaTypeSuggestedReaction(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as StoryAreaTypeType,
        reactionType: null == reactionType
            ? _self.reactionType
            : reactionType // ignore: cast_nullable_to_non_nullable
                  as ReactionType,
        isDark: freezed == isDark
            ? _self.isDark
            : isDark // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isFlipped: freezed == isFlipped
            ? _self.isFlipped
            : isFlipped // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReactionTypeCopyWith<$Res> get reactionType {
    return $ReactionTypeCopyWith<$Res>(_self.reactionType, (value) {
      return _then(_self.copyWith(reactionType: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StoryAreaTypeLink implements StoryAreaType {
  const StoryAreaTypeLink({
    @JsonKey(name: 'type') this.type = StoryAreaTypeType.link,
    @JsonKey(name: 'url') required this.url,
  });
  factory StoryAreaTypeLink.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaTypeLinkFromJson(json);

  /// Type of the area, always "link"
  @override
  @JsonKey(name: 'type')
  final StoryAreaTypeType type;

  /// HTTP or tg:// URL to be opened when the area is clicked
  @JsonKey(name: 'url')
  final String url;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryAreaTypeLinkCopyWith<StoryAreaTypeLink> get copyWith =>
      _$StoryAreaTypeLinkCopyWithImpl<StoryAreaTypeLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoryAreaTypeLinkToJson(this);
  }

  @override
  String toString() {
    return 'StoryAreaType.link(type: $type, url: $url)';
  }
}

/// @nodoc
abstract mixin class $StoryAreaTypeLinkCopyWith<$Res>
    implements $StoryAreaTypeCopyWith<$Res> {
  factory $StoryAreaTypeLinkCopyWith(
    StoryAreaTypeLink value,
    $Res Function(StoryAreaTypeLink) _then,
  ) = _$StoryAreaTypeLinkCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') StoryAreaTypeType type,
    @JsonKey(name: 'url') String url,
  });
}

/// @nodoc
class _$StoryAreaTypeLinkCopyWithImpl<$Res>
    implements $StoryAreaTypeLinkCopyWith<$Res> {
  _$StoryAreaTypeLinkCopyWithImpl(this._self, this._then);

  final StoryAreaTypeLink _self;
  final $Res Function(StoryAreaTypeLink) _then;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? url = null}) {
    return _then(
      StoryAreaTypeLink(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as StoryAreaTypeType,
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class StoryAreaTypeWeather implements StoryAreaType {
  const StoryAreaTypeWeather({
    @JsonKey(name: 'type') this.type = StoryAreaTypeType.weather,
    @JsonKey(name: 'temperature') required this.temperature,
    @JsonKey(name: 'emoji') required this.emoji,
    @JsonKey(name: 'background_color') required this.backgroundColor,
  });
  factory StoryAreaTypeWeather.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaTypeWeatherFromJson(json);

  /// Type of the area, always "weather"
  @override
  @JsonKey(name: 'type')
  final StoryAreaTypeType type;

  /// Temperature, in degree Celsius
  @JsonKey(name: 'temperature')
  final double temperature;

  /// Emoji representing the weather
  @JsonKey(name: 'emoji')
  final String emoji;

  /// A color of the area background in the ARGB format
  @JsonKey(name: 'background_color')
  final int backgroundColor;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryAreaTypeWeatherCopyWith<StoryAreaTypeWeather> get copyWith =>
      _$StoryAreaTypeWeatherCopyWithImpl<StoryAreaTypeWeather>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$StoryAreaTypeWeatherToJson(this);
  }

  @override
  String toString() {
    return 'StoryAreaType.weather(type: $type, temperature: $temperature, emoji: $emoji, backgroundColor: $backgroundColor)';
  }
}

/// @nodoc
abstract mixin class $StoryAreaTypeWeatherCopyWith<$Res>
    implements $StoryAreaTypeCopyWith<$Res> {
  factory $StoryAreaTypeWeatherCopyWith(
    StoryAreaTypeWeather value,
    $Res Function(StoryAreaTypeWeather) _then,
  ) = _$StoryAreaTypeWeatherCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') StoryAreaTypeType type,
    @JsonKey(name: 'temperature') double temperature,
    @JsonKey(name: 'emoji') String emoji,
    @JsonKey(name: 'background_color') int backgroundColor,
  });
}

/// @nodoc
class _$StoryAreaTypeWeatherCopyWithImpl<$Res>
    implements $StoryAreaTypeWeatherCopyWith<$Res> {
  _$StoryAreaTypeWeatherCopyWithImpl(this._self, this._then);

  final StoryAreaTypeWeather _self;
  final $Res Function(StoryAreaTypeWeather) _then;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? temperature = null,
    Object? emoji = null,
    Object? backgroundColor = null,
  }) {
    return _then(
      StoryAreaTypeWeather(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as StoryAreaTypeType,
        temperature: null == temperature
            ? _self.temperature
            : temperature // ignore: cast_nullable_to_non_nullable
                  as double,
        emoji: null == emoji
            ? _self.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String,
        backgroundColor: null == backgroundColor
            ? _self.backgroundColor
            : backgroundColor // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class StoryAreaTypeUniqueGift implements StoryAreaType {
  const StoryAreaTypeUniqueGift({
    @JsonKey(name: 'type') this.type = StoryAreaTypeType.uniqueGift,
  });
  factory StoryAreaTypeUniqueGift.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaTypeUniqueGiftFromJson(json);

  /// Type of the area, always "unique_gift"
  @override
  @JsonKey(name: 'type')
  final StoryAreaTypeType type;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryAreaTypeUniqueGiftCopyWith<StoryAreaTypeUniqueGift> get copyWith =>
      _$StoryAreaTypeUniqueGiftCopyWithImpl<StoryAreaTypeUniqueGift>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$StoryAreaTypeUniqueGiftToJson(this);
  }

  @override
  String toString() {
    return 'StoryAreaType.uniqueGift(type: $type)';
  }
}

/// @nodoc
abstract mixin class $StoryAreaTypeUniqueGiftCopyWith<$Res>
    implements $StoryAreaTypeCopyWith<$Res> {
  factory $StoryAreaTypeUniqueGiftCopyWith(
    StoryAreaTypeUniqueGift value,
    $Res Function(StoryAreaTypeUniqueGift) _then,
  ) = _$StoryAreaTypeUniqueGiftCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') StoryAreaTypeType type});
}

/// @nodoc
class _$StoryAreaTypeUniqueGiftCopyWithImpl<$Res>
    implements $StoryAreaTypeUniqueGiftCopyWith<$Res> {
  _$StoryAreaTypeUniqueGiftCopyWithImpl(this._self, this._then);

  final StoryAreaTypeUniqueGift _self;
  final $Res Function(StoryAreaTypeUniqueGift) _then;

  /// Create a copy of StoryAreaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null}) {
    return _then(
      StoryAreaTypeUniqueGift(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as StoryAreaTypeType,
      ),
    );
  }
}
