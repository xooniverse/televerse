// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unique_gift_colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UniqueGiftColors {
  /// Custom emoji identifier of the unique gift's model
  @JsonKey(name: 'model_custom_emoji_id')
  String get modelCustomEmojiId;

  /// Custom emoji identifier of the unique gift's symbol
  @JsonKey(name: 'symbol_custom_emoji_id')
  String get symbolCustomEmojiId;

  /// Main color used in light themes; RGB format
  @JsonKey(name: 'light_theme_main_color')
  int get lightThemeMainColor;

  /// List of 1-3 additional colors used in light themes; RGB format
  @JsonKey(name: 'light_theme_other_colors')
  List<int> get lightThemeOtherColors;

  /// Main color used in dark themes; RGB format
  @JsonKey(name: 'dark_theme_main_color')
  int get darkThemeMainColor;

  /// List of 1-3 additional colors used in dark themes; RGB format
  @JsonKey(name: 'dark_theme_other_colors')
  List<int> get darkThemeOtherColors;

  /// Create a copy of UniqueGiftColors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueGiftColorsCopyWith<UniqueGiftColors> get copyWith =>
      _$UniqueGiftColorsCopyWithImpl<UniqueGiftColors>(
        this as UniqueGiftColors,
        _$identity,
      );

  /// Serializes this UniqueGiftColors to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UniqueGiftColors(modelCustomEmojiId: $modelCustomEmojiId, symbolCustomEmojiId: $symbolCustomEmojiId, lightThemeMainColor: $lightThemeMainColor, lightThemeOtherColors: $lightThemeOtherColors, darkThemeMainColor: $darkThemeMainColor, darkThemeOtherColors: $darkThemeOtherColors)';
  }
}

/// @nodoc
abstract mixin class $UniqueGiftColorsCopyWith<$Res> {
  factory $UniqueGiftColorsCopyWith(
    UniqueGiftColors value,
    $Res Function(UniqueGiftColors) _then,
  ) = _$UniqueGiftColorsCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'model_custom_emoji_id') String modelCustomEmojiId,
    @JsonKey(name: 'symbol_custom_emoji_id') String symbolCustomEmojiId,
    @JsonKey(name: 'light_theme_main_color') int lightThemeMainColor,
    @JsonKey(name: 'light_theme_other_colors') List<int> lightThemeOtherColors,
    @JsonKey(name: 'dark_theme_main_color') int darkThemeMainColor,
    @JsonKey(name: 'dark_theme_other_colors') List<int> darkThemeOtherColors,
  });
}

/// @nodoc
class _$UniqueGiftColorsCopyWithImpl<$Res>
    implements $UniqueGiftColorsCopyWith<$Res> {
  _$UniqueGiftColorsCopyWithImpl(this._self, this._then);

  final UniqueGiftColors _self;
  final $Res Function(UniqueGiftColors) _then;

  /// Create a copy of UniqueGiftColors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelCustomEmojiId = null,
    Object? symbolCustomEmojiId = null,
    Object? lightThemeMainColor = null,
    Object? lightThemeOtherColors = null,
    Object? darkThemeMainColor = null,
    Object? darkThemeOtherColors = null,
  }) {
    return _then(
      _self.copyWith(
        modelCustomEmojiId: null == modelCustomEmojiId
            ? _self.modelCustomEmojiId
            : modelCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String,
        symbolCustomEmojiId: null == symbolCustomEmojiId
            ? _self.symbolCustomEmojiId
            : symbolCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String,
        lightThemeMainColor: null == lightThemeMainColor
            ? _self.lightThemeMainColor
            : lightThemeMainColor // ignore: cast_nullable_to_non_nullable
                  as int,
        lightThemeOtherColors: null == lightThemeOtherColors
            ? _self.lightThemeOtherColors
            : lightThemeOtherColors // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        darkThemeMainColor: null == darkThemeMainColor
            ? _self.darkThemeMainColor
            : darkThemeMainColor // ignore: cast_nullable_to_non_nullable
                  as int,
        darkThemeOtherColors: null == darkThemeOtherColors
            ? _self.darkThemeOtherColors
            : darkThemeOtherColors // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [UniqueGiftColors].
extension UniqueGiftColorsPatterns on UniqueGiftColors {
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
    TResult Function(_UniqueGiftColors value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftColors() when $default != null:
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
    TResult Function(_UniqueGiftColors value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftColors():
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
    TResult? Function(_UniqueGiftColors value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftColors() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UniqueGiftColors implements UniqueGiftColors {
  const _UniqueGiftColors({
    @JsonKey(name: 'model_custom_emoji_id') required this.modelCustomEmojiId,
    @JsonKey(name: 'symbol_custom_emoji_id') required this.symbolCustomEmojiId,
    @JsonKey(name: 'light_theme_main_color') required this.lightThemeMainColor,
    @JsonKey(name: 'light_theme_other_colors')
    required final List<int> lightThemeOtherColors,
    @JsonKey(name: 'dark_theme_main_color') required this.darkThemeMainColor,
    @JsonKey(name: 'dark_theme_other_colors')
    required final List<int> darkThemeOtherColors,
  }) : _lightThemeOtherColors = lightThemeOtherColors,
       _darkThemeOtherColors = darkThemeOtherColors;
  factory _UniqueGiftColors.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftColorsFromJson(json);

  /// Custom emoji identifier of the unique gift's model
  @override
  @JsonKey(name: 'model_custom_emoji_id')
  final String modelCustomEmojiId;

  /// Custom emoji identifier of the unique gift's symbol
  @override
  @JsonKey(name: 'symbol_custom_emoji_id')
  final String symbolCustomEmojiId;

  /// Main color used in light themes; RGB format
  @override
  @JsonKey(name: 'light_theme_main_color')
  final int lightThemeMainColor;

  /// List of 1-3 additional colors used in light themes; RGB format
  final List<int> _lightThemeOtherColors;

  /// List of 1-3 additional colors used in light themes; RGB format
  @override
  @JsonKey(name: 'light_theme_other_colors')
  List<int> get lightThemeOtherColors {
    if (_lightThemeOtherColors is EqualUnmodifiableListView)
      return _lightThemeOtherColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lightThemeOtherColors);
  }

  /// Main color used in dark themes; RGB format
  @override
  @JsonKey(name: 'dark_theme_main_color')
  final int darkThemeMainColor;

  /// List of 1-3 additional colors used in dark themes; RGB format
  final List<int> _darkThemeOtherColors;

  /// List of 1-3 additional colors used in dark themes; RGB format
  @override
  @JsonKey(name: 'dark_theme_other_colors')
  List<int> get darkThemeOtherColors {
    if (_darkThemeOtherColors is EqualUnmodifiableListView)
      return _darkThemeOtherColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_darkThemeOtherColors);
  }

  /// Create a copy of UniqueGiftColors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueGiftColorsCopyWith<_UniqueGiftColors> get copyWith =>
      __$UniqueGiftColorsCopyWithImpl<_UniqueGiftColors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueGiftColorsToJson(this);
  }

  @override
  String toString() {
    return 'UniqueGiftColors(modelCustomEmojiId: $modelCustomEmojiId, symbolCustomEmojiId: $symbolCustomEmojiId, lightThemeMainColor: $lightThemeMainColor, lightThemeOtherColors: $lightThemeOtherColors, darkThemeMainColor: $darkThemeMainColor, darkThemeOtherColors: $darkThemeOtherColors)';
  }
}

/// @nodoc
abstract mixin class _$UniqueGiftColorsCopyWith<$Res>
    implements $UniqueGiftColorsCopyWith<$Res> {
  factory _$UniqueGiftColorsCopyWith(
    _UniqueGiftColors value,
    $Res Function(_UniqueGiftColors) _then,
  ) = __$UniqueGiftColorsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'model_custom_emoji_id') String modelCustomEmojiId,
    @JsonKey(name: 'symbol_custom_emoji_id') String symbolCustomEmojiId,
    @JsonKey(name: 'light_theme_main_color') int lightThemeMainColor,
    @JsonKey(name: 'light_theme_other_colors') List<int> lightThemeOtherColors,
    @JsonKey(name: 'dark_theme_main_color') int darkThemeMainColor,
    @JsonKey(name: 'dark_theme_other_colors') List<int> darkThemeOtherColors,
  });
}

/// @nodoc
class __$UniqueGiftColorsCopyWithImpl<$Res>
    implements _$UniqueGiftColorsCopyWith<$Res> {
  __$UniqueGiftColorsCopyWithImpl(this._self, this._then);

  final _UniqueGiftColors _self;
  final $Res Function(_UniqueGiftColors) _then;

  /// Create a copy of UniqueGiftColors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? modelCustomEmojiId = null,
    Object? symbolCustomEmojiId = null,
    Object? lightThemeMainColor = null,
    Object? lightThemeOtherColors = null,
    Object? darkThemeMainColor = null,
    Object? darkThemeOtherColors = null,
  }) {
    return _then(
      _UniqueGiftColors(
        modelCustomEmojiId: null == modelCustomEmojiId
            ? _self.modelCustomEmojiId
            : modelCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String,
        symbolCustomEmojiId: null == symbolCustomEmojiId
            ? _self.symbolCustomEmojiId
            : symbolCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String,
        lightThemeMainColor: null == lightThemeMainColor
            ? _self.lightThemeMainColor
            : lightThemeMainColor // ignore: cast_nullable_to_non_nullable
                  as int,
        lightThemeOtherColors: null == lightThemeOtherColors
            ? _self._lightThemeOtherColors
            : lightThemeOtherColors // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        darkThemeMainColor: null == darkThemeMainColor
            ? _self.darkThemeMainColor
            : darkThemeMainColor // ignore: cast_nullable_to_non_nullable
                  as int,
        darkThemeOtherColors: null == darkThemeOtherColors
            ? _self._darkThemeOtherColors
            : darkThemeOtherColors // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}
