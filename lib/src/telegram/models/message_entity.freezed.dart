// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageEntity {
  /// Type of the entity. Currently, can be:
  /// - mention - (@username)
  /// - hashtag - (#hashtag),
  /// - cashtag - ($USD),
  /// - botCommand - (/start@jobs_bot),
  /// - url - (https://telegram.org),
  /// - email - (do-not-reply@telegram.org),
  /// - phoneNumber - (+1-212-555-0123),
  /// - bold - (bold text),
  /// - italic - (italic text),
  /// - underline - (underlined text),
  /// - strikethrough - (strikethrough text),
  /// - spoiler - (spoiler message),
  /// - code - (monowidth string),
  /// - pre - (monowidth block),
  /// - textLink - (for clickable text URLs),
  /// - textMention - (for users without usernames),
  /// - customEmoji - (for inline custom emoji stickers)
  @JsonKey(name: 'type')
  MessageEntityType get type;

  /// Offset in UTF-16 code units to the start of the entity
  @JsonKey(name: 'offset')
  int get offset;

  /// Length of the entity in UTF-16 code units
  @JsonKey(name: 'length')
  int get length;

  /// Optional. For "text_link" only, URL that will be opened after user taps
  /// on the text
  @JsonKey(name: 'url')
  String? get url;

  /// Optional. For "text_mention" only, the mentioned user
  @JsonKey(name: 'user')
  User? get user;

  /// Optional. For "pre" only, the programming language of the entity text
  @JsonKey(name: 'language')
  String? get language;

  /// Optional. For "custom_emoji" only, unique identifier of the custom
  /// emoji. Use getCustomEmojiStickers to get full information about the
  /// sticker
  @JsonKey(name: 'custom_emoji_id')
  String? get customEmojiId;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      _$MessageEntityCopyWithImpl<MessageEntity>(
        this as MessageEntity,
        _$identity,
      );

  /// Serializes this MessageEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MessageEntity(type: $type, offset: $offset, length: $length, url: $url, user: $user, language: $language, customEmojiId: $customEmojiId)';
  }
}

/// @nodoc
abstract mixin class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
    MessageEntity value,
    $Res Function(MessageEntity) _then,
  ) = _$MessageEntityCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') MessageEntityType type,
    @JsonKey(name: 'offset') int offset,
    @JsonKey(name: 'length') int length,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'custom_emoji_id') String? customEmojiId,
  });

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._self, this._then);

  final MessageEntity _self;
  final $Res Function(MessageEntity) _then;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? offset = null,
    Object? length = null,
    Object? url = freezed,
    Object? user = freezed,
    Object? language = freezed,
    Object? customEmojiId = freezed,
  }) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as MessageEntityType,
        offset: null == offset
            ? _self.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as int,
        length: null == length
            ? _self.length
            : length // ignore: cast_nullable_to_non_nullable
                  as int,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        language: freezed == language
            ? _self.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String?,
        customEmojiId: freezed == customEmojiId
            ? _self.customEmojiId
            : customEmojiId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MessageEntity].
extension MessageEntityPatterns on MessageEntity {
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
    TResult Function(_MessageEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MessageEntity() when $default != null:
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
    TResult Function(_MessageEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageEntity():
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
    TResult? Function(_MessageEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MessageEntity implements MessageEntity {
  const _MessageEntity({
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'offset') required this.offset,
    @JsonKey(name: 'length') required this.length,
    @JsonKey(name: 'url') this.url,
    @JsonKey(name: 'user') this.user,
    @JsonKey(name: 'language') this.language,
    @JsonKey(name: 'custom_emoji_id') this.customEmojiId,
  });
  factory _MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);

  /// Type of the entity. Currently, can be:
  /// - mention - (@username)
  /// - hashtag - (#hashtag),
  /// - cashtag - ($USD),
  /// - botCommand - (/start@jobs_bot),
  /// - url - (https://telegram.org),
  /// - email - (do-not-reply@telegram.org),
  /// - phoneNumber - (+1-212-555-0123),
  /// - bold - (bold text),
  /// - italic - (italic text),
  /// - underline - (underlined text),
  /// - strikethrough - (strikethrough text),
  /// - spoiler - (spoiler message),
  /// - code - (monowidth string),
  /// - pre - (monowidth block),
  /// - textLink - (for clickable text URLs),
  /// - textMention - (for users without usernames),
  /// - customEmoji - (for inline custom emoji stickers)
  @override
  @JsonKey(name: 'type')
  final MessageEntityType type;

  /// Offset in UTF-16 code units to the start of the entity
  @override
  @JsonKey(name: 'offset')
  final int offset;

  /// Length of the entity in UTF-16 code units
  @override
  @JsonKey(name: 'length')
  final int length;

  /// Optional. For "text_link" only, URL that will be opened after user taps
  /// on the text
  @override
  @JsonKey(name: 'url')
  final String? url;

  /// Optional. For "text_mention" only, the mentioned user
  @override
  @JsonKey(name: 'user')
  final User? user;

  /// Optional. For "pre" only, the programming language of the entity text
  @override
  @JsonKey(name: 'language')
  final String? language;

  /// Optional. For "custom_emoji" only, unique identifier of the custom
  /// emoji. Use getCustomEmojiStickers to get full information about the
  /// sticker
  @override
  @JsonKey(name: 'custom_emoji_id')
  final String? customEmojiId;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageEntityCopyWith<_MessageEntity> get copyWith =>
      __$MessageEntityCopyWithImpl<_MessageEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageEntityToJson(this);
  }

  @override
  String toString() {
    return 'MessageEntity(type: $type, offset: $offset, length: $length, url: $url, user: $user, language: $language, customEmojiId: $customEmojiId)';
  }
}

/// @nodoc
abstract mixin class _$MessageEntityCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$MessageEntityCopyWith(
    _MessageEntity value,
    $Res Function(_MessageEntity) _then,
  ) = __$MessageEntityCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') MessageEntityType type,
    @JsonKey(name: 'offset') int offset,
    @JsonKey(name: 'length') int length,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'custom_emoji_id') String? customEmojiId,
  });

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$MessageEntityCopyWithImpl<$Res>
    implements _$MessageEntityCopyWith<$Res> {
  __$MessageEntityCopyWithImpl(this._self, this._then);

  final _MessageEntity _self;
  final $Res Function(_MessageEntity) _then;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? offset = null,
    Object? length = null,
    Object? url = freezed,
    Object? user = freezed,
    Object? language = freezed,
    Object? customEmojiId = freezed,
  }) {
    return _then(
      _MessageEntity(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as MessageEntityType,
        offset: null == offset
            ? _self.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as int,
        length: null == length
            ? _self.length
            : length // ignore: cast_nullable_to_non_nullable
                  as int,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        language: freezed == language
            ? _self.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String?,
        customEmojiId: freezed == customEmojiId
            ? _self.customEmojiId
            : customEmojiId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}
