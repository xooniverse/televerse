// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_topic_edited.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForumTopicEdited {
  /// Optional. New name of the topic, if it was edited
  @JsonKey(name: 'name')
  String? get name;

  /// Optional. New identifier of the custom emoji shown as the topic icon,
  /// if it was edited; an empty string if the icon was removed
  @JsonKey(name: 'icon_custom_emoji_id')
  String? get iconCustomEmojiId;

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForumTopicEditedCopyWith<ForumTopicEdited> get copyWith =>
      _$ForumTopicEditedCopyWithImpl<ForumTopicEdited>(
        this as ForumTopicEdited,
        _$identity,
      );

  /// Serializes this ForumTopicEdited to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ForumTopicEdited(name: $name, iconCustomEmojiId: $iconCustomEmojiId)';
  }
}

/// @nodoc
abstract mixin class $ForumTopicEditedCopyWith<$Res> {
  factory $ForumTopicEditedCopyWith(
    ForumTopicEdited value,
    $Res Function(ForumTopicEdited) _then,
  ) = _$ForumTopicEditedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
  });
}

/// @nodoc
class _$ForumTopicEditedCopyWithImpl<$Res>
    implements $ForumTopicEditedCopyWith<$Res> {
  _$ForumTopicEditedCopyWithImpl(this._self, this._then);

  final ForumTopicEdited _self;
  final $Res Function(ForumTopicEdited) _then;

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? iconCustomEmojiId = freezed}) {
    return _then(
      _self.copyWith(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        iconCustomEmojiId: freezed == iconCustomEmojiId
            ? _self.iconCustomEmojiId
            : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ForumTopicEdited].
extension ForumTopicEditedPatterns on ForumTopicEdited {
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
    TResult Function(_ForumTopicEdited value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ForumTopicEdited() when $default != null:
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
    TResult Function(_ForumTopicEdited value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ForumTopicEdited():
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
    TResult? Function(_ForumTopicEdited value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ForumTopicEdited() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ForumTopicEdited implements ForumTopicEdited {
  const _ForumTopicEdited({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'icon_custom_emoji_id') this.iconCustomEmojiId,
  });
  factory _ForumTopicEdited.fromJson(Map<String, dynamic> json) =>
      _$ForumTopicEditedFromJson(json);

  /// Optional. New name of the topic, if it was edited
  @override
  @JsonKey(name: 'name')
  final String? name;

  /// Optional. New identifier of the custom emoji shown as the topic icon,
  /// if it was edited; an empty string if the icon was removed
  @override
  @JsonKey(name: 'icon_custom_emoji_id')
  final String? iconCustomEmojiId;

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForumTopicEditedCopyWith<_ForumTopicEdited> get copyWith =>
      __$ForumTopicEditedCopyWithImpl<_ForumTopicEdited>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForumTopicEditedToJson(this);
  }

  @override
  String toString() {
    return 'ForumTopicEdited(name: $name, iconCustomEmojiId: $iconCustomEmojiId)';
  }
}

/// @nodoc
abstract mixin class _$ForumTopicEditedCopyWith<$Res>
    implements $ForumTopicEditedCopyWith<$Res> {
  factory _$ForumTopicEditedCopyWith(
    _ForumTopicEdited value,
    $Res Function(_ForumTopicEdited) _then,
  ) = __$ForumTopicEditedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
  });
}

/// @nodoc
class __$ForumTopicEditedCopyWithImpl<$Res>
    implements _$ForumTopicEditedCopyWith<$Res> {
  __$ForumTopicEditedCopyWithImpl(this._self, this._then);

  final _ForumTopicEdited _self;
  final $Res Function(_ForumTopicEdited) _then;

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? name = freezed, Object? iconCustomEmojiId = freezed}) {
    return _then(
      _ForumTopicEdited(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        iconCustomEmojiId: freezed == iconCustomEmojiId
            ? _self.iconCustomEmojiId
            : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
