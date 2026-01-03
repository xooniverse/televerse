// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForumTopic {
  /// Unique identifier of the forum topic
  @JsonKey(name: 'message_thread_id')
  int get messageThreadId;

  /// Name of the topic
  @JsonKey(name: 'name')
  String get name;

  /// Color of the topic icon in RGB format
  @JsonKey(name: 'icon_color')
  int get iconColor;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  @JsonKey(name: 'icon_custom_emoji_id')
  String? get iconCustomEmojiId;

  /// Optional. True, if the name of the topic wasn't specified explicitly by its creator and likely needs to be changed by the bot
  @JsonKey(name: 'is_name_implicit')
  bool? get isNameImplicit;

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForumTopicCopyWith<ForumTopic> get copyWith =>
      _$ForumTopicCopyWithImpl<ForumTopic>(this as ForumTopic, _$identity);

  /// Serializes this ForumTopic to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ForumTopic(messageThreadId: $messageThreadId, name: $name, iconColor: $iconColor, iconCustomEmojiId: $iconCustomEmojiId, isNameImplicit: $isNameImplicit)';
  }
}

/// @nodoc
abstract mixin class $ForumTopicCopyWith<$Res> {
  factory $ForumTopicCopyWith(
    ForumTopic value,
    $Res Function(ForumTopic) _then,
  ) = _$ForumTopicCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'message_thread_id') int messageThreadId,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'icon_color') int iconColor,
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
    @JsonKey(name: 'is_name_implicit') bool? isNameImplicit,
  });
}

/// @nodoc
class _$ForumTopicCopyWithImpl<$Res> implements $ForumTopicCopyWith<$Res> {
  _$ForumTopicCopyWithImpl(this._self, this._then);

  final ForumTopic _self;
  final $Res Function(ForumTopic) _then;

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageThreadId = null,
    Object? name = null,
    Object? iconColor = null,
    Object? iconCustomEmojiId = freezed,
    Object? isNameImplicit = freezed,
  }) {
    return _then(
      _self.copyWith(
        messageThreadId: null == messageThreadId
            ? _self.messageThreadId
            : messageThreadId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        iconColor: null == iconColor
            ? _self.iconColor
            : iconColor // ignore: cast_nullable_to_non_nullable
                  as int,
        iconCustomEmojiId: freezed == iconCustomEmojiId
            ? _self.iconCustomEmojiId
            : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isNameImplicit: freezed == isNameImplicit
            ? _self.isNameImplicit
            : isNameImplicit // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ForumTopic].
extension ForumTopicPatterns on ForumTopic {
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
    TResult Function(_ForumTopic value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ForumTopic() when $default != null:
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
    TResult Function(_ForumTopic value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ForumTopic():
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
    TResult? Function(_ForumTopic value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ForumTopic() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ForumTopic implements ForumTopic {
  const _ForumTopic({
    @JsonKey(name: 'message_thread_id') required this.messageThreadId,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'icon_color') required this.iconColor,
    @JsonKey(name: 'icon_custom_emoji_id') this.iconCustomEmojiId,
    @JsonKey(name: 'is_name_implicit') this.isNameImplicit,
  });
  factory _ForumTopic.fromJson(Map<String, dynamic> json) =>
      _$ForumTopicFromJson(json);

  /// Unique identifier of the forum topic
  @override
  @JsonKey(name: 'message_thread_id')
  final int messageThreadId;

  /// Name of the topic
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Color of the topic icon in RGB format
  @override
  @JsonKey(name: 'icon_color')
  final int iconColor;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  @override
  @JsonKey(name: 'icon_custom_emoji_id')
  final String? iconCustomEmojiId;

  /// Optional. True, if the name of the topic wasn't specified explicitly by its creator and likely needs to be changed by the bot
  @override
  @JsonKey(name: 'is_name_implicit')
  final bool? isNameImplicit;

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForumTopicCopyWith<_ForumTopic> get copyWith =>
      __$ForumTopicCopyWithImpl<_ForumTopic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForumTopicToJson(this);
  }

  @override
  String toString() {
    return 'ForumTopic(messageThreadId: $messageThreadId, name: $name, iconColor: $iconColor, iconCustomEmojiId: $iconCustomEmojiId, isNameImplicit: $isNameImplicit)';
  }
}

/// @nodoc
abstract mixin class _$ForumTopicCopyWith<$Res>
    implements $ForumTopicCopyWith<$Res> {
  factory _$ForumTopicCopyWith(
    _ForumTopic value,
    $Res Function(_ForumTopic) _then,
  ) = __$ForumTopicCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'message_thread_id') int messageThreadId,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'icon_color') int iconColor,
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
    @JsonKey(name: 'is_name_implicit') bool? isNameImplicit,
  });
}

/// @nodoc
class __$ForumTopicCopyWithImpl<$Res> implements _$ForumTopicCopyWith<$Res> {
  __$ForumTopicCopyWithImpl(this._self, this._then);

  final _ForumTopic _self;
  final $Res Function(_ForumTopic) _then;

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messageThreadId = null,
    Object? name = null,
    Object? iconColor = null,
    Object? iconCustomEmojiId = freezed,
    Object? isNameImplicit = freezed,
  }) {
    return _then(
      _ForumTopic(
        messageThreadId: null == messageThreadId
            ? _self.messageThreadId
            : messageThreadId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        iconColor: null == iconColor
            ? _self.iconColor
            : iconColor // ignore: cast_nullable_to_non_nullable
                  as int,
        iconCustomEmojiId: freezed == iconCustomEmojiId
            ? _self.iconCustomEmojiId
            : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isNameImplicit: freezed == isNameImplicit
            ? _self.isNameImplicit
            : isNameImplicit // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
