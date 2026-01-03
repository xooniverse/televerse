// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_intro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessIntro {
  /// Optional. Title text of the business intro.
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Message text of the business intro.
  @JsonKey(name: 'message')
  String? get message;

  /// Optional. Sticker of the business intro.
  @JsonKey(name: 'sticker')
  Sticker? get sticker;

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BusinessIntroCopyWith<BusinessIntro> get copyWith =>
      _$BusinessIntroCopyWithImpl<BusinessIntro>(
        this as BusinessIntro,
        _$identity,
      );

  /// Serializes this BusinessIntro to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BusinessIntro(title: $title, message: $message, sticker: $sticker)';
  }
}

/// @nodoc
abstract mixin class $BusinessIntroCopyWith<$Res> {
  factory $BusinessIntroCopyWith(
    BusinessIntro value,
    $Res Function(BusinessIntro) _then,
  ) = _$BusinessIntroCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'sticker') Sticker? sticker,
  });

  $StickerCopyWith<$Res>? get sticker;
}

/// @nodoc
class _$BusinessIntroCopyWithImpl<$Res>
    implements $BusinessIntroCopyWith<$Res> {
  _$BusinessIntroCopyWithImpl(this._self, this._then);

  final BusinessIntro _self;
  final $Res Function(BusinessIntro) _then;

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? sticker = freezed,
  }) {
    return _then(
      _self.copyWith(
        title: freezed == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        message: freezed == message
            ? _self.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        sticker: freezed == sticker
            ? _self.sticker
            : sticker // ignore: cast_nullable_to_non_nullable
                  as Sticker?,
      ),
    );
  }

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res>? get sticker {
    if (_self.sticker == null) {
      return null;
    }

    return $StickerCopyWith<$Res>(_self.sticker!, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BusinessIntro].
extension BusinessIntroPatterns on BusinessIntro {
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
    TResult Function(_BusinessIntro value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BusinessIntro() when $default != null:
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
    TResult Function(_BusinessIntro value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BusinessIntro():
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
    TResult? Function(_BusinessIntro value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BusinessIntro() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BusinessIntro implements BusinessIntro {
  const _BusinessIntro({
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'message') this.message,
    @JsonKey(name: 'sticker') this.sticker,
  });
  factory _BusinessIntro.fromJson(Map<String, dynamic> json) =>
      _$BusinessIntroFromJson(json);

  /// Optional. Title text of the business intro.
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Message text of the business intro.
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Optional. Sticker of the business intro.
  @override
  @JsonKey(name: 'sticker')
  final Sticker? sticker;

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BusinessIntroCopyWith<_BusinessIntro> get copyWith =>
      __$BusinessIntroCopyWithImpl<_BusinessIntro>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BusinessIntroToJson(this);
  }

  @override
  String toString() {
    return 'BusinessIntro(title: $title, message: $message, sticker: $sticker)';
  }
}

/// @nodoc
abstract mixin class _$BusinessIntroCopyWith<$Res>
    implements $BusinessIntroCopyWith<$Res> {
  factory _$BusinessIntroCopyWith(
    _BusinessIntro value,
    $Res Function(_BusinessIntro) _then,
  ) = __$BusinessIntroCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'sticker') Sticker? sticker,
  });

  @override
  $StickerCopyWith<$Res>? get sticker;
}

/// @nodoc
class __$BusinessIntroCopyWithImpl<$Res>
    implements _$BusinessIntroCopyWith<$Res> {
  __$BusinessIntroCopyWithImpl(this._self, this._then);

  final _BusinessIntro _self;
  final $Res Function(_BusinessIntro) _then;

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? sticker = freezed,
  }) {
    return _then(
      _BusinessIntro(
        title: freezed == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        message: freezed == message
            ? _self.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        sticker: freezed == sticker
            ? _self.sticker
            : sticker // ignore: cast_nullable_to_non_nullable
                  as Sticker?,
      ),
    );
  }

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res>? get sticker {
    if (_self.sticker == null) {
      return null;
    }

    return $StickerCopyWith<$Res>(_self.sticker!, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }
}
