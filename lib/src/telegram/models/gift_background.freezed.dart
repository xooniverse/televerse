// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_background.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GiftBackground {
  /// Center color of the background in RGB format
  @JsonKey(name: 'center_color')
  int get centerColor;

  /// Edge color of the background in RGB format
  @JsonKey(name: 'edge_color')
  int get edgeColor;

  /// Text color of the background in RGB format
  @JsonKey(name: 'text_color')
  int get textColor;

  /// Create a copy of GiftBackground
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GiftBackgroundCopyWith<GiftBackground> get copyWith =>
      _$GiftBackgroundCopyWithImpl<GiftBackground>(
        this as GiftBackground,
        _$identity,
      );

  /// Serializes this GiftBackground to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'GiftBackground(centerColor: $centerColor, edgeColor: $edgeColor, textColor: $textColor)';
  }
}

/// @nodoc
abstract mixin class $GiftBackgroundCopyWith<$Res> {
  factory $GiftBackgroundCopyWith(
    GiftBackground value,
    $Res Function(GiftBackground) _then,
  ) = _$GiftBackgroundCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'center_color') int centerColor,
    @JsonKey(name: 'edge_color') int edgeColor,
    @JsonKey(name: 'text_color') int textColor,
  });
}

/// @nodoc
class _$GiftBackgroundCopyWithImpl<$Res>
    implements $GiftBackgroundCopyWith<$Res> {
  _$GiftBackgroundCopyWithImpl(this._self, this._then);

  final GiftBackground _self;
  final $Res Function(GiftBackground) _then;

  /// Create a copy of GiftBackground
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? centerColor = null,
    Object? edgeColor = null,
    Object? textColor = null,
  }) {
    return _then(
      _self.copyWith(
        centerColor: null == centerColor
            ? _self.centerColor
            : centerColor // ignore: cast_nullable_to_non_nullable
                  as int,
        edgeColor: null == edgeColor
            ? _self.edgeColor
            : edgeColor // ignore: cast_nullable_to_non_nullable
                  as int,
        textColor: null == textColor
            ? _self.textColor
            : textColor // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [GiftBackground].
extension GiftBackgroundPatterns on GiftBackground {
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
    TResult Function(_GiftBackground value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GiftBackground() when $default != null:
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
    TResult Function(_GiftBackground value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GiftBackground():
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
    TResult? Function(_GiftBackground value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GiftBackground() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GiftBackground implements GiftBackground {
  const _GiftBackground({
    @JsonKey(name: 'center_color') required this.centerColor,
    @JsonKey(name: 'edge_color') required this.edgeColor,
    @JsonKey(name: 'text_color') required this.textColor,
  });
  factory _GiftBackground.fromJson(Map<String, dynamic> json) =>
      _$GiftBackgroundFromJson(json);

  /// Center color of the background in RGB format
  @override
  @JsonKey(name: 'center_color')
  final int centerColor;

  /// Edge color of the background in RGB format
  @override
  @JsonKey(name: 'edge_color')
  final int edgeColor;

  /// Text color of the background in RGB format
  @override
  @JsonKey(name: 'text_color')
  final int textColor;

  /// Create a copy of GiftBackground
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GiftBackgroundCopyWith<_GiftBackground> get copyWith =>
      __$GiftBackgroundCopyWithImpl<_GiftBackground>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GiftBackgroundToJson(this);
  }

  @override
  String toString() {
    return 'GiftBackground(centerColor: $centerColor, edgeColor: $edgeColor, textColor: $textColor)';
  }
}

/// @nodoc
abstract mixin class _$GiftBackgroundCopyWith<$Res>
    implements $GiftBackgroundCopyWith<$Res> {
  factory _$GiftBackgroundCopyWith(
    _GiftBackground value,
    $Res Function(_GiftBackground) _then,
  ) = __$GiftBackgroundCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'center_color') int centerColor,
    @JsonKey(name: 'edge_color') int edgeColor,
    @JsonKey(name: 'text_color') int textColor,
  });
}

/// @nodoc
class __$GiftBackgroundCopyWithImpl<$Res>
    implements _$GiftBackgroundCopyWith<$Res> {
  __$GiftBackgroundCopyWithImpl(this._self, this._then);

  final _GiftBackground _self;
  final $Res Function(_GiftBackground) _then;

  /// Create a copy of GiftBackground
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? centerColor = null,
    Object? edgeColor = null,
    Object? textColor = null,
  }) {
    return _then(
      _GiftBackground(
        centerColor: null == centerColor
            ? _self.centerColor
            : centerColor // ignore: cast_nullable_to_non_nullable
                  as int,
        edgeColor: null == edgeColor
            ? _self.edgeColor
            : edgeColor // ignore: cast_nullable_to_non_nullable
                  as int,
        textColor: null == textColor
            ? _self.textColor
            : textColor // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}
