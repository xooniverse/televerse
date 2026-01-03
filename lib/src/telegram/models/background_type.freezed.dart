// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BackgroundType _$BackgroundTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'fill':
      return BackgroundTypeFill.fromJson(json);
    case 'wallpaper':
      return BackgroundTypeWallpaper.fromJson(json);
    case 'pattern':
      return BackgroundTypePattern.fromJson(json);
    case 'chat_theme':
      return BackgroundTypeChatTheme.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'BackgroundType',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$BackgroundType {
  /// Type of the background - always fill
  @JsonKey(name: 'type')
  BackgroundTypeType get type;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundTypeCopyWith<BackgroundType> get copyWith =>
      _$BackgroundTypeCopyWithImpl<BackgroundType>(
        this as BackgroundType,
        _$identity,
      );

  /// Serializes this BackgroundType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BackgroundType(type: $type)';
  }
}

/// @nodoc
abstract mixin class $BackgroundTypeCopyWith<$Res> {
  factory $BackgroundTypeCopyWith(
    BackgroundType value,
    $Res Function(BackgroundType) _then,
  ) = _$BackgroundTypeCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') BackgroundTypeType type});
}

/// @nodoc
class _$BackgroundTypeCopyWithImpl<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  _$BackgroundTypeCopyWithImpl(this._self, this._then);

  final BackgroundType _self;
  final $Res Function(BackgroundType) _then;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as BackgroundTypeType,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [BackgroundType].
extension BackgroundTypePatterns on BackgroundType {
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
    TResult Function(BackgroundTypeFill value)? fill,
    TResult Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult Function(BackgroundTypePattern value)? pattern,
    TResult Function(BackgroundTypeChatTheme value)? chatTheme,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackgroundTypeFill() when fill != null:
        return fill(_that);
      case BackgroundTypeWallpaper() when wallpaper != null:
        return wallpaper(_that);
      case BackgroundTypePattern() when pattern != null:
        return pattern(_that);
      case BackgroundTypeChatTheme() when chatTheme != null:
        return chatTheme(_that);
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
    required TResult Function(BackgroundTypeFill value) fill,
    required TResult Function(BackgroundTypeWallpaper value) wallpaper,
    required TResult Function(BackgroundTypePattern value) pattern,
    required TResult Function(BackgroundTypeChatTheme value) chatTheme,
  }) {
    final _that = this;
    switch (_that) {
      case BackgroundTypeFill():
        return fill(_that);
      case BackgroundTypeWallpaper():
        return wallpaper(_that);
      case BackgroundTypePattern():
        return pattern(_that);
      case BackgroundTypeChatTheme():
        return chatTheme(_that);
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
    TResult? Function(BackgroundTypeFill value)? fill,
    TResult? Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult? Function(BackgroundTypePattern value)? pattern,
    TResult? Function(BackgroundTypeChatTheme value)? chatTheme,
  }) {
    final _that = this;
    switch (_that) {
      case BackgroundTypeFill() when fill != null:
        return fill(_that);
      case BackgroundTypeWallpaper() when wallpaper != null:
        return wallpaper(_that);
      case BackgroundTypePattern() when pattern != null:
        return pattern(_that);
      case BackgroundTypeChatTheme() when chatTheme != null:
        return chatTheme(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class BackgroundTypeFill implements BackgroundType {
  const BackgroundTypeFill({
    @JsonKey(name: 'type') this.type = BackgroundTypeType.fill,
    @JsonKey(name: 'fill') required this.fill,
    @JsonKey(name: 'dark_theme_dimming') this.darkThemeDimming = 0,
  });
  factory BackgroundTypeFill.fromJson(Map<String, dynamic> json) =>
      _$BackgroundTypeFillFromJson(json);

  /// Type of the background - always fill
  @override
  @JsonKey(name: 'type')
  final BackgroundTypeType type;

  /// The background fill.
  @JsonKey(name: 'fill')
  final BackgroundFill fill;

  /// Dimming of the background in dark themes, as a percentage; 0-100.
  @JsonKey(name: 'dark_theme_dimming')
  final int darkThemeDimming;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundTypeFillCopyWith<BackgroundTypeFill> get copyWith =>
      _$BackgroundTypeFillCopyWithImpl<BackgroundTypeFill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BackgroundTypeFillToJson(this);
  }

  @override
  String toString() {
    return 'BackgroundType.fill(type: $type, fill: $fill, darkThemeDimming: $darkThemeDimming)';
  }
}

/// @nodoc
abstract mixin class $BackgroundTypeFillCopyWith<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  factory $BackgroundTypeFillCopyWith(
    BackgroundTypeFill value,
    $Res Function(BackgroundTypeFill) _then,
  ) = _$BackgroundTypeFillCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') BackgroundTypeType type,
    @JsonKey(name: 'fill') BackgroundFill fill,
    @JsonKey(name: 'dark_theme_dimming') int darkThemeDimming,
  });

  $BackgroundFillCopyWith<$Res> get fill;
}

/// @nodoc
class _$BackgroundTypeFillCopyWithImpl<$Res>
    implements $BackgroundTypeFillCopyWith<$Res> {
  _$BackgroundTypeFillCopyWithImpl(this._self, this._then);

  final BackgroundTypeFill _self;
  final $Res Function(BackgroundTypeFill) _then;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? fill = null,
    Object? darkThemeDimming = null,
  }) {
    return _then(
      BackgroundTypeFill(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as BackgroundTypeType,
        fill: null == fill
            ? _self.fill
            : fill // ignore: cast_nullable_to_non_nullable
                  as BackgroundFill,
        darkThemeDimming: null == darkThemeDimming
            ? _self.darkThemeDimming
            : darkThemeDimming // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundFillCopyWith<$Res> get fill {
    return $BackgroundFillCopyWith<$Res>(_self.fill, (value) {
      return _then(_self.copyWith(fill: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class BackgroundTypeWallpaper implements BackgroundType {
  const BackgroundTypeWallpaper({
    @JsonKey(name: 'type') this.type = BackgroundTypeType.wallpaper,
    @JsonKey(name: 'document') required this.document,
    @JsonKey(name: "dark_theme_dimming") this.darkThemeDimming = 0,
    @JsonKey(name: "is_blurred") this.isBlurred,
    @JsonKey(name: "is_moving") this.isMoving,
  });
  factory BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) =>
      _$BackgroundTypeWallpaperFromJson(json);

  /// Type of the background - always `wallpaper`
  @override
  @JsonKey(name: 'type')
  final BackgroundTypeType type;

  /// Document with the wallpaper.
  @JsonKey(name: 'document')
  final Document document;

  /// Dimming of the background in dark themes, as a percentage; 0-100.
  @JsonKey(name: "dark_theme_dimming")
  final int darkThemeDimming;

  /// True, if the wallpaper is downscaled to fit in a 450x450 square and then
  /// box-blurred with radius 12.
  @JsonKey(name: "is_blurred")
  final bool? isBlurred;

  /// True, if the background moves slightly when the device is tilted.
  @JsonKey(name: "is_moving")
  final bool? isMoving;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundTypeWallpaperCopyWith<BackgroundTypeWallpaper> get copyWith =>
      _$BackgroundTypeWallpaperCopyWithImpl<BackgroundTypeWallpaper>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$BackgroundTypeWallpaperToJson(this);
  }

  @override
  String toString() {
    return 'BackgroundType.wallpaper(type: $type, document: $document, darkThemeDimming: $darkThemeDimming, isBlurred: $isBlurred, isMoving: $isMoving)';
  }
}

/// @nodoc
abstract mixin class $BackgroundTypeWallpaperCopyWith<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  factory $BackgroundTypeWallpaperCopyWith(
    BackgroundTypeWallpaper value,
    $Res Function(BackgroundTypeWallpaper) _then,
  ) = _$BackgroundTypeWallpaperCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') BackgroundTypeType type,
    @JsonKey(name: 'document') Document document,
    @JsonKey(name: "dark_theme_dimming") int darkThemeDimming,
    @JsonKey(name: "is_blurred") bool? isBlurred,
    @JsonKey(name: "is_moving") bool? isMoving,
  });

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$BackgroundTypeWallpaperCopyWithImpl<$Res>
    implements $BackgroundTypeWallpaperCopyWith<$Res> {
  _$BackgroundTypeWallpaperCopyWithImpl(this._self, this._then);

  final BackgroundTypeWallpaper _self;
  final $Res Function(BackgroundTypeWallpaper) _then;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? document = null,
    Object? darkThemeDimming = null,
    Object? isBlurred = freezed,
    Object? isMoving = freezed,
  }) {
    return _then(
      BackgroundTypeWallpaper(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as BackgroundTypeType,
        document: null == document
            ? _self.document
            : document // ignore: cast_nullable_to_non_nullable
                  as Document,
        darkThemeDimming: null == darkThemeDimming
            ? _self.darkThemeDimming
            : darkThemeDimming // ignore: cast_nullable_to_non_nullable
                  as int,
        isBlurred: freezed == isBlurred
            ? _self.isBlurred
            : isBlurred // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isMoving: freezed == isMoving
            ? _self.isMoving
            : isMoving // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_self.document, (value) {
      return _then(_self.copyWith(document: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class BackgroundTypePattern implements BackgroundType {
  const BackgroundTypePattern({
    @JsonKey(name: 'type') this.type = BackgroundTypeType.pattern,
    @JsonKey(name: 'document') required this.document,
    @JsonKey(name: 'fill') required this.fill,
    @JsonKey(name: 'intensity') this.intensity = 0,
    @JsonKey(name: "is_inverted") this.isInverted,
    @JsonKey(name: "is_moving") this.isMoving,
  });
  factory BackgroundTypePattern.fromJson(Map<String, dynamic> json) =>
      _$BackgroundTypePatternFromJson(json);

  /// Type of the background - always `pattern`
  @override
  @JsonKey(name: 'type')
  final BackgroundTypeType type;

  /// Document with the wallpaper.
  @JsonKey(name: 'document')
  final Document document;

  /// The background fill that is combined with the pattern.
  @JsonKey(name: 'fill')
  final BackgroundFill fill;

  /// Intensity of the pattern when it is shown above the filled background;
  /// 0-100.
  @JsonKey(name: 'intensity')
  final int intensity;

  /// True, if the background fill must be applied only to the pattern itself.
  /// All other pixels are black in this case. For dark themes only.
  @JsonKey(name: "is_inverted")
  final bool? isInverted;

  /// True, if the background moves slightly when the device is tilted.
  @JsonKey(name: "is_moving")
  final bool? isMoving;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundTypePatternCopyWith<BackgroundTypePattern> get copyWith =>
      _$BackgroundTypePatternCopyWithImpl<BackgroundTypePattern>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$BackgroundTypePatternToJson(this);
  }

  @override
  String toString() {
    return 'BackgroundType.pattern(type: $type, document: $document, fill: $fill, intensity: $intensity, isInverted: $isInverted, isMoving: $isMoving)';
  }
}

/// @nodoc
abstract mixin class $BackgroundTypePatternCopyWith<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  factory $BackgroundTypePatternCopyWith(
    BackgroundTypePattern value,
    $Res Function(BackgroundTypePattern) _then,
  ) = _$BackgroundTypePatternCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') BackgroundTypeType type,
    @JsonKey(name: 'document') Document document,
    @JsonKey(name: 'fill') BackgroundFill fill,
    @JsonKey(name: 'intensity') int intensity,
    @JsonKey(name: "is_inverted") bool? isInverted,
    @JsonKey(name: "is_moving") bool? isMoving,
  });

  $DocumentCopyWith<$Res> get document;
  $BackgroundFillCopyWith<$Res> get fill;
}

/// @nodoc
class _$BackgroundTypePatternCopyWithImpl<$Res>
    implements $BackgroundTypePatternCopyWith<$Res> {
  _$BackgroundTypePatternCopyWithImpl(this._self, this._then);

  final BackgroundTypePattern _self;
  final $Res Function(BackgroundTypePattern) _then;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? document = null,
    Object? fill = null,
    Object? intensity = null,
    Object? isInverted = freezed,
    Object? isMoving = freezed,
  }) {
    return _then(
      BackgroundTypePattern(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as BackgroundTypeType,
        document: null == document
            ? _self.document
            : document // ignore: cast_nullable_to_non_nullable
                  as Document,
        fill: null == fill
            ? _self.fill
            : fill // ignore: cast_nullable_to_non_nullable
                  as BackgroundFill,
        intensity: null == intensity
            ? _self.intensity
            : intensity // ignore: cast_nullable_to_non_nullable
                  as int,
        isInverted: freezed == isInverted
            ? _self.isInverted
            : isInverted // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isMoving: freezed == isMoving
            ? _self.isMoving
            : isMoving // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_self.document, (value) {
      return _then(_self.copyWith(document: value));
    });
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundFillCopyWith<$Res> get fill {
    return $BackgroundFillCopyWith<$Res>(_self.fill, (value) {
      return _then(_self.copyWith(fill: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class BackgroundTypeChatTheme implements BackgroundType {
  const BackgroundTypeChatTheme({
    @JsonKey(name: 'type') this.type = BackgroundTypeType.chatTheme,
    @JsonKey(name: 'theme_name') required this.themeName,
  });
  factory BackgroundTypeChatTheme.fromJson(Map<String, dynamic> json) =>
      _$BackgroundTypeChatThemeFromJson(json);

  /// Type of the background - always fill
  @override
  @JsonKey(name: 'type')
  final BackgroundTypeType type;

  /// Name of the chat theme, which is usually an emoji
  @JsonKey(name: 'theme_name')
  final String themeName;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundTypeChatThemeCopyWith<BackgroundTypeChatTheme> get copyWith =>
      _$BackgroundTypeChatThemeCopyWithImpl<BackgroundTypeChatTheme>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$BackgroundTypeChatThemeToJson(this);
  }

  @override
  String toString() {
    return 'BackgroundType.chatTheme(type: $type, themeName: $themeName)';
  }
}

/// @nodoc
abstract mixin class $BackgroundTypeChatThemeCopyWith<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  factory $BackgroundTypeChatThemeCopyWith(
    BackgroundTypeChatTheme value,
    $Res Function(BackgroundTypeChatTheme) _then,
  ) = _$BackgroundTypeChatThemeCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') BackgroundTypeType type,
    @JsonKey(name: 'theme_name') String themeName,
  });
}

/// @nodoc
class _$BackgroundTypeChatThemeCopyWithImpl<$Res>
    implements $BackgroundTypeChatThemeCopyWith<$Res> {
  _$BackgroundTypeChatThemeCopyWithImpl(this._self, this._then);

  final BackgroundTypeChatTheme _self;
  final $Res Function(BackgroundTypeChatTheme) _then;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? themeName = null}) {
    return _then(
      BackgroundTypeChatTheme(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as BackgroundTypeType,
        themeName: null == themeName
            ? _self.themeName
            : themeName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
