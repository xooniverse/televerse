// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      throw CheckedFromJsonException(json, 'type', 'BackgroundType',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BackgroundType {
  /// Type of the background - always fill
  BackgroundTypeType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundTypeFill value) fill,
    required TResult Function(BackgroundTypeWallpaper value) wallpaper,
    required TResult Function(BackgroundTypePattern value) pattern,
    required TResult Function(BackgroundTypeChatTheme value) chatTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundTypeFill value)? fill,
    TResult? Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult? Function(BackgroundTypePattern value)? pattern,
    TResult? Function(BackgroundTypeChatTheme value)? chatTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundTypeFill value)? fill,
    TResult Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult Function(BackgroundTypePattern value)? pattern,
    TResult Function(BackgroundTypeChatTheme value)? chatTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BackgroundType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackgroundTypeCopyWith<BackgroundType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundTypeCopyWith<$Res> {
  factory $BackgroundTypeCopyWith(
          BackgroundType value, $Res Function(BackgroundType) then) =
      _$BackgroundTypeCopyWithImpl<$Res, BackgroundType>;
  @useResult
  $Res call({BackgroundTypeType type});
}

/// @nodoc
class _$BackgroundTypeCopyWithImpl<$Res, $Val extends BackgroundType>
    implements $BackgroundTypeCopyWith<$Res> {
  _$BackgroundTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundTypeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundTypeFillImplCopyWith<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  factory _$$BackgroundTypeFillImplCopyWith(_$BackgroundTypeFillImpl value,
          $Res Function(_$BackgroundTypeFillImpl) then) =
      __$$BackgroundTypeFillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BackgroundTypeType type,
      BackgroundFill fill,
      @JsonKey(name: 'dark_theme_dimming') int darkThemeDimming});

  $BackgroundFillCopyWith<$Res> get fill;
}

/// @nodoc
class __$$BackgroundTypeFillImplCopyWithImpl<$Res>
    extends _$BackgroundTypeCopyWithImpl<$Res, _$BackgroundTypeFillImpl>
    implements _$$BackgroundTypeFillImplCopyWith<$Res> {
  __$$BackgroundTypeFillImplCopyWithImpl(_$BackgroundTypeFillImpl _value,
      $Res Function(_$BackgroundTypeFillImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? fill = null,
    Object? darkThemeDimming = null,
  }) {
    return _then(_$BackgroundTypeFillImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundTypeType,
      fill: null == fill
          ? _value.fill
          : fill // ignore: cast_nullable_to_non_nullable
              as BackgroundFill,
      darkThemeDimming: null == darkThemeDimming
          ? _value.darkThemeDimming
          : darkThemeDimming // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundFillCopyWith<$Res> get fill {
    return $BackgroundFillCopyWith<$Res>(_value.fill, (value) {
      return _then(_value.copyWith(fill: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundTypeFillImpl implements BackgroundTypeFill {
  const _$BackgroundTypeFillImpl(
      {this.type = BackgroundTypeType.fill,
      required this.fill,
      @JsonKey(name: 'dark_theme_dimming') this.darkThemeDimming = 0});

  factory _$BackgroundTypeFillImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundTypeFillImplFromJson(json);

  /// Type of the background - always fill
  @override
  @JsonKey()
  final BackgroundTypeType type;

  /// The background fill.
  @override
  final BackgroundFill fill;

  /// Dimming of the background in dark themes, as a percentage; 0-100.
  @override
  @JsonKey(name: 'dark_theme_dimming')
  final int darkThemeDimming;

  @override
  String toString() {
    return 'BackgroundType.fill(type: $type, fill: $fill, darkThemeDimming: $darkThemeDimming)';
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundTypeFillImplCopyWith<_$BackgroundTypeFillImpl> get copyWith =>
      __$$BackgroundTypeFillImplCopyWithImpl<_$BackgroundTypeFillImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundTypeFill value) fill,
    required TResult Function(BackgroundTypeWallpaper value) wallpaper,
    required TResult Function(BackgroundTypePattern value) pattern,
    required TResult Function(BackgroundTypeChatTheme value) chatTheme,
  }) {
    return fill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundTypeFill value)? fill,
    TResult? Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult? Function(BackgroundTypePattern value)? pattern,
    TResult? Function(BackgroundTypeChatTheme value)? chatTheme,
  }) {
    return fill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundTypeFill value)? fill,
    TResult Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult Function(BackgroundTypePattern value)? pattern,
    TResult Function(BackgroundTypeChatTheme value)? chatTheme,
    required TResult orElse(),
  }) {
    if (fill != null) {
      return fill(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundTypeFillImplToJson(
      this,
    );
  }
}

abstract class BackgroundTypeFill implements BackgroundType {
  const factory BackgroundTypeFill(
          {final BackgroundTypeType type,
          required final BackgroundFill fill,
          @JsonKey(name: 'dark_theme_dimming') final int darkThemeDimming}) =
      _$BackgroundTypeFillImpl;

  factory BackgroundTypeFill.fromJson(Map<String, dynamic> json) =
      _$BackgroundTypeFillImpl.fromJson;

  /// Type of the background - always fill
  @override
  BackgroundTypeType get type;

  /// The background fill.
  BackgroundFill get fill;

  /// Dimming of the background in dark themes, as a percentage; 0-100.
  @JsonKey(name: 'dark_theme_dimming')
  int get darkThemeDimming;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundTypeFillImplCopyWith<_$BackgroundTypeFillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackgroundTypeWallpaperImplCopyWith<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  factory _$$BackgroundTypeWallpaperImplCopyWith(
          _$BackgroundTypeWallpaperImpl value,
          $Res Function(_$BackgroundTypeWallpaperImpl) then) =
      __$$BackgroundTypeWallpaperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BackgroundTypeType type,
      Document document,
      @JsonKey(name: "dark_theme_dimming") int darkThemeDimming,
      @JsonKey(name: "is_blurred") bool? isBlurred,
      @JsonKey(name: "is_moving") bool? isMoving});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$BackgroundTypeWallpaperImplCopyWithImpl<$Res>
    extends _$BackgroundTypeCopyWithImpl<$Res, _$BackgroundTypeWallpaperImpl>
    implements _$$BackgroundTypeWallpaperImplCopyWith<$Res> {
  __$$BackgroundTypeWallpaperImplCopyWithImpl(
      _$BackgroundTypeWallpaperImpl _value,
      $Res Function(_$BackgroundTypeWallpaperImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? document = null,
    Object? darkThemeDimming = null,
    Object? isBlurred = freezed,
    Object? isMoving = freezed,
  }) {
    return _then(_$BackgroundTypeWallpaperImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundTypeType,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
      darkThemeDimming: null == darkThemeDimming
          ? _value.darkThemeDimming
          : darkThemeDimming // ignore: cast_nullable_to_non_nullable
              as int,
      isBlurred: freezed == isBlurred
          ? _value.isBlurred
          : isBlurred // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMoving: freezed == isMoving
          ? _value.isMoving
          : isMoving // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundTypeWallpaperImpl implements BackgroundTypeWallpaper {
  const _$BackgroundTypeWallpaperImpl(
      {this.type = BackgroundTypeType.wallpaper,
      required this.document,
      @JsonKey(name: "dark_theme_dimming") this.darkThemeDimming = 0,
      @JsonKey(name: "is_blurred") this.isBlurred,
      @JsonKey(name: "is_moving") this.isMoving});

  factory _$BackgroundTypeWallpaperImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundTypeWallpaperImplFromJson(json);

  /// Type of the background - always `wallpaper`
  @override
  @JsonKey()
  final BackgroundTypeType type;

  /// Document with the wallpaper.
  @override
  final Document document;

  /// Dimming of the background in dark themes, as a percentage; 0-100.
  @override
  @JsonKey(name: "dark_theme_dimming")
  final int darkThemeDimming;

  /// True, if the wallpaper is downscaled to fit in a 450x450 square and then
  /// box-blurred with radius 12.
  @override
  @JsonKey(name: "is_blurred")
  final bool? isBlurred;

  /// True, if the background moves slightly when the device is tilted.
  @override
  @JsonKey(name: "is_moving")
  final bool? isMoving;

  @override
  String toString() {
    return 'BackgroundType.wallpaper(type: $type, document: $document, darkThemeDimming: $darkThemeDimming, isBlurred: $isBlurred, isMoving: $isMoving)';
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundTypeWallpaperImplCopyWith<_$BackgroundTypeWallpaperImpl>
      get copyWith => __$$BackgroundTypeWallpaperImplCopyWithImpl<
          _$BackgroundTypeWallpaperImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundTypeFill value) fill,
    required TResult Function(BackgroundTypeWallpaper value) wallpaper,
    required TResult Function(BackgroundTypePattern value) pattern,
    required TResult Function(BackgroundTypeChatTheme value) chatTheme,
  }) {
    return wallpaper(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundTypeFill value)? fill,
    TResult? Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult? Function(BackgroundTypePattern value)? pattern,
    TResult? Function(BackgroundTypeChatTheme value)? chatTheme,
  }) {
    return wallpaper?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundTypeFill value)? fill,
    TResult Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult Function(BackgroundTypePattern value)? pattern,
    TResult Function(BackgroundTypeChatTheme value)? chatTheme,
    required TResult orElse(),
  }) {
    if (wallpaper != null) {
      return wallpaper(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundTypeWallpaperImplToJson(
      this,
    );
  }
}

abstract class BackgroundTypeWallpaper implements BackgroundType {
  const factory BackgroundTypeWallpaper(
          {final BackgroundTypeType type,
          required final Document document,
          @JsonKey(name: "dark_theme_dimming") final int darkThemeDimming,
          @JsonKey(name: "is_blurred") final bool? isBlurred,
          @JsonKey(name: "is_moving") final bool? isMoving}) =
      _$BackgroundTypeWallpaperImpl;

  factory BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) =
      _$BackgroundTypeWallpaperImpl.fromJson;

  /// Type of the background - always `wallpaper`
  @override
  BackgroundTypeType get type;

  /// Document with the wallpaper.
  Document get document;

  /// Dimming of the background in dark themes, as a percentage; 0-100.
  @JsonKey(name: "dark_theme_dimming")
  int get darkThemeDimming;

  /// True, if the wallpaper is downscaled to fit in a 450x450 square and then
  /// box-blurred with radius 12.
  @JsonKey(name: "is_blurred")
  bool? get isBlurred;

  /// True, if the background moves slightly when the device is tilted.
  @JsonKey(name: "is_moving")
  bool? get isMoving;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundTypeWallpaperImplCopyWith<_$BackgroundTypeWallpaperImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackgroundTypePatternImplCopyWith<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  factory _$$BackgroundTypePatternImplCopyWith(
          _$BackgroundTypePatternImpl value,
          $Res Function(_$BackgroundTypePatternImpl) then) =
      __$$BackgroundTypePatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BackgroundTypeType type,
      Document document,
      BackgroundFill fill,
      int intensity,
      @JsonKey(name: "is_inverted") bool? isInverted,
      @JsonKey(name: "is_moving") bool? isMoving});

  $DocumentCopyWith<$Res> get document;
  $BackgroundFillCopyWith<$Res> get fill;
}

/// @nodoc
class __$$BackgroundTypePatternImplCopyWithImpl<$Res>
    extends _$BackgroundTypeCopyWithImpl<$Res, _$BackgroundTypePatternImpl>
    implements _$$BackgroundTypePatternImplCopyWith<$Res> {
  __$$BackgroundTypePatternImplCopyWithImpl(_$BackgroundTypePatternImpl _value,
      $Res Function(_$BackgroundTypePatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? document = null,
    Object? fill = null,
    Object? intensity = null,
    Object? isInverted = freezed,
    Object? isMoving = freezed,
  }) {
    return _then(_$BackgroundTypePatternImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundTypeType,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
      fill: null == fill
          ? _value.fill
          : fill // ignore: cast_nullable_to_non_nullable
              as BackgroundFill,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as int,
      isInverted: freezed == isInverted
          ? _value.isInverted
          : isInverted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMoving: freezed == isMoving
          ? _value.isMoving
          : isMoving // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value));
    });
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundFillCopyWith<$Res> get fill {
    return $BackgroundFillCopyWith<$Res>(_value.fill, (value) {
      return _then(_value.copyWith(fill: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundTypePatternImpl implements BackgroundTypePattern {
  const _$BackgroundTypePatternImpl(
      {this.type = BackgroundTypeType.pattern,
      required this.document,
      required this.fill,
      this.intensity = 0,
      @JsonKey(name: "is_inverted") this.isInverted,
      @JsonKey(name: "is_moving") this.isMoving});

  factory _$BackgroundTypePatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundTypePatternImplFromJson(json);

  /// Type of the background - always `pattern`
  @override
  @JsonKey()
  final BackgroundTypeType type;

  /// Document with the wallpaper.
  @override
  final Document document;

  /// The background fill that is combined with the pattern.
  @override
  final BackgroundFill fill;

  /// Intensity of the pattern when it is shown above the filled background;
  /// 0-100.
  @override
  @JsonKey()
  final int intensity;

  /// True, if the background fill must be applied only to the pattern itself.
  /// All other pixels are black in this case. For dark themes only.
  @override
  @JsonKey(name: "is_inverted")
  final bool? isInverted;

  /// True, if the background moves slightly when the device is tilted.
  @override
  @JsonKey(name: "is_moving")
  final bool? isMoving;

  @override
  String toString() {
    return 'BackgroundType.pattern(type: $type, document: $document, fill: $fill, intensity: $intensity, isInverted: $isInverted, isMoving: $isMoving)';
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundTypePatternImplCopyWith<_$BackgroundTypePatternImpl>
      get copyWith => __$$BackgroundTypePatternImplCopyWithImpl<
          _$BackgroundTypePatternImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundTypeFill value) fill,
    required TResult Function(BackgroundTypeWallpaper value) wallpaper,
    required TResult Function(BackgroundTypePattern value) pattern,
    required TResult Function(BackgroundTypeChatTheme value) chatTheme,
  }) {
    return pattern(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundTypeFill value)? fill,
    TResult? Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult? Function(BackgroundTypePattern value)? pattern,
    TResult? Function(BackgroundTypeChatTheme value)? chatTheme,
  }) {
    return pattern?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundTypeFill value)? fill,
    TResult Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult Function(BackgroundTypePattern value)? pattern,
    TResult Function(BackgroundTypeChatTheme value)? chatTheme,
    required TResult orElse(),
  }) {
    if (pattern != null) {
      return pattern(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundTypePatternImplToJson(
      this,
    );
  }
}

abstract class BackgroundTypePattern implements BackgroundType {
  const factory BackgroundTypePattern(
          {final BackgroundTypeType type,
          required final Document document,
          required final BackgroundFill fill,
          final int intensity,
          @JsonKey(name: "is_inverted") final bool? isInverted,
          @JsonKey(name: "is_moving") final bool? isMoving}) =
      _$BackgroundTypePatternImpl;

  factory BackgroundTypePattern.fromJson(Map<String, dynamic> json) =
      _$BackgroundTypePatternImpl.fromJson;

  /// Type of the background - always `pattern`
  @override
  BackgroundTypeType get type;

  /// Document with the wallpaper.
  Document get document;

  /// The background fill that is combined with the pattern.
  BackgroundFill get fill;

  /// Intensity of the pattern when it is shown above the filled background;
  /// 0-100.
  int get intensity;

  /// True, if the background fill must be applied only to the pattern itself.
  /// All other pixels are black in this case. For dark themes only.
  @JsonKey(name: "is_inverted")
  bool? get isInverted;

  /// True, if the background moves slightly when the device is tilted.
  @JsonKey(name: "is_moving")
  bool? get isMoving;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundTypePatternImplCopyWith<_$BackgroundTypePatternImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackgroundTypeChatThemeImplCopyWith<$Res>
    implements $BackgroundTypeCopyWith<$Res> {
  factory _$$BackgroundTypeChatThemeImplCopyWith(
          _$BackgroundTypeChatThemeImpl value,
          $Res Function(_$BackgroundTypeChatThemeImpl) then) =
      __$$BackgroundTypeChatThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BackgroundTypeType type, @JsonKey(name: 'theme_name') String themeName});
}

/// @nodoc
class __$$BackgroundTypeChatThemeImplCopyWithImpl<$Res>
    extends _$BackgroundTypeCopyWithImpl<$Res, _$BackgroundTypeChatThemeImpl>
    implements _$$BackgroundTypeChatThemeImplCopyWith<$Res> {
  __$$BackgroundTypeChatThemeImplCopyWithImpl(
      _$BackgroundTypeChatThemeImpl _value,
      $Res Function(_$BackgroundTypeChatThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? themeName = null,
  }) {
    return _then(_$BackgroundTypeChatThemeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundTypeType,
      themeName: null == themeName
          ? _value.themeName
          : themeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundTypeChatThemeImpl implements BackgroundTypeChatTheme {
  const _$BackgroundTypeChatThemeImpl(
      {this.type = BackgroundTypeType.chatTheme,
      @JsonKey(name: 'theme_name') required this.themeName});

  factory _$BackgroundTypeChatThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundTypeChatThemeImplFromJson(json);

  /// Type of the background - always fill
  @override
  @JsonKey()
  final BackgroundTypeType type;

  /// Name of the chat theme, which is usually an emoji
  @override
  @JsonKey(name: 'theme_name')
  final String themeName;

  @override
  String toString() {
    return 'BackgroundType.chatTheme(type: $type, themeName: $themeName)';
  }

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundTypeChatThemeImplCopyWith<_$BackgroundTypeChatThemeImpl>
      get copyWith => __$$BackgroundTypeChatThemeImplCopyWithImpl<
          _$BackgroundTypeChatThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundTypeFill value) fill,
    required TResult Function(BackgroundTypeWallpaper value) wallpaper,
    required TResult Function(BackgroundTypePattern value) pattern,
    required TResult Function(BackgroundTypeChatTheme value) chatTheme,
  }) {
    return chatTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundTypeFill value)? fill,
    TResult? Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult? Function(BackgroundTypePattern value)? pattern,
    TResult? Function(BackgroundTypeChatTheme value)? chatTheme,
  }) {
    return chatTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundTypeFill value)? fill,
    TResult Function(BackgroundTypeWallpaper value)? wallpaper,
    TResult Function(BackgroundTypePattern value)? pattern,
    TResult Function(BackgroundTypeChatTheme value)? chatTheme,
    required TResult orElse(),
  }) {
    if (chatTheme != null) {
      return chatTheme(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundTypeChatThemeImplToJson(
      this,
    );
  }
}

abstract class BackgroundTypeChatTheme implements BackgroundType {
  const factory BackgroundTypeChatTheme(
          {final BackgroundTypeType type,
          @JsonKey(name: 'theme_name') required final String themeName}) =
      _$BackgroundTypeChatThemeImpl;

  factory BackgroundTypeChatTheme.fromJson(Map<String, dynamic> json) =
      _$BackgroundTypeChatThemeImpl.fromJson;

  /// Type of the background - always fill
  @override
  BackgroundTypeType get type;

  /// Name of the chat theme, which is usually an emoji
  @JsonKey(name: 'theme_name')
  String get themeName;

  /// Create a copy of BackgroundType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundTypeChatThemeImplCopyWith<_$BackgroundTypeChatThemeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
