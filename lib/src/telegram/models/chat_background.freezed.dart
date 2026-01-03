// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_background.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatBackground {
  /// Type of the background.
  @JsonKey(name: 'type')
  BackgroundType get type;

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBackgroundCopyWith<ChatBackground> get copyWith =>
      _$ChatBackgroundCopyWithImpl<ChatBackground>(
        this as ChatBackground,
        _$identity,
      );

  /// Serializes this ChatBackground to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatBackground(type: $type)';
  }
}

/// @nodoc
abstract mixin class $ChatBackgroundCopyWith<$Res> {
  factory $ChatBackgroundCopyWith(
    ChatBackground value,
    $Res Function(ChatBackground) _then,
  ) = _$ChatBackgroundCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') BackgroundType type});

  $BackgroundTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ChatBackgroundCopyWithImpl<$Res>
    implements $ChatBackgroundCopyWith<$Res> {
  _$ChatBackgroundCopyWithImpl(this._self, this._then);

  final ChatBackground _self;
  final $Res Function(ChatBackground) _then;

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as BackgroundType,
      ),
    );
  }

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundTypeCopyWith<$Res> get type {
    return $BackgroundTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatBackground].
extension ChatBackgroundPatterns on ChatBackground {
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
    TResult Function(_ChatBackground value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatBackground() when $default != null:
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
    TResult Function(_ChatBackground value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatBackground():
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
    TResult? Function(_ChatBackground value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatBackground() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatBackground implements ChatBackground {
  const _ChatBackground({@JsonKey(name: 'type') required this.type});
  factory _ChatBackground.fromJson(Map<String, dynamic> json) =>
      _$ChatBackgroundFromJson(json);

  /// Type of the background.
  @override
  @JsonKey(name: 'type')
  final BackgroundType type;

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatBackgroundCopyWith<_ChatBackground> get copyWith =>
      __$ChatBackgroundCopyWithImpl<_ChatBackground>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatBackgroundToJson(this);
  }

  @override
  String toString() {
    return 'ChatBackground(type: $type)';
  }
}

/// @nodoc
abstract mixin class _$ChatBackgroundCopyWith<$Res>
    implements $ChatBackgroundCopyWith<$Res> {
  factory _$ChatBackgroundCopyWith(
    _ChatBackground value,
    $Res Function(_ChatBackground) _then,
  ) = __$ChatBackgroundCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') BackgroundType type});

  @override
  $BackgroundTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$ChatBackgroundCopyWithImpl<$Res>
    implements _$ChatBackgroundCopyWith<$Res> {
  __$ChatBackgroundCopyWithImpl(this._self, this._then);

  final _ChatBackground _self;
  final $Res Function(_ChatBackground) _then;

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null}) {
    return _then(
      _ChatBackground(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as BackgroundType,
      ),
    );
  }

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundTypeCopyWith<$Res> get type {
    return $BackgroundTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}
