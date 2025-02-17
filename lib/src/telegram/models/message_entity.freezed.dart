// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) {
  return _MessageEntity.fromJson(json);
}

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
  MessageEntityType get type => throw _privateConstructorUsedError;

  /// Offset in UTF-16 code units to the start of the entity
  int get offset => throw _privateConstructorUsedError;

  /// Length of the entity in UTF-16 code units
  int get length => throw _privateConstructorUsedError;

  /// Optional. For "text_link" only, URL that will be opened after user taps
  /// on the text
  String? get url => throw _privateConstructorUsedError;

  /// Optional. For "text_mention" only, the mentioned user
  User? get user => throw _privateConstructorUsedError;

  /// Optional. For "pre" only, the programming language of the entity text
  String? get language => throw _privateConstructorUsedError;

  /// Optional. For "custom_emoji" only, unique identifier of the custom
  /// emoji. Use getCustomEmojiStickers to get full information about the
  /// sticker
  @JsonKey(name: 'custom_emoji_id')
  String? get customEmojiId => throw _privateConstructorUsedError;

  /// Serializes this MessageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
          MessageEntity value, $Res Function(MessageEntity) then) =
      _$MessageEntityCopyWithImpl<$Res, MessageEntity>;
  @useResult
  $Res call(
      {MessageEntityType type,
      int offset,
      int length,
      String? url,
      User? user,
      String? language,
      @JsonKey(name: 'custom_emoji_id') String? customEmojiId});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res, $Val extends MessageEntity>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageEntityType,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      customEmojiId: freezed == customEmojiId
          ? _value.customEmojiId
          : customEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageEntityImplCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$MessageEntityImplCopyWith(
          _$MessageEntityImpl value, $Res Function(_$MessageEntityImpl) then) =
      __$$MessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageEntityType type,
      int offset,
      int length,
      String? url,
      User? user,
      String? language,
      @JsonKey(name: 'custom_emoji_id') String? customEmojiId});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MessageEntityImplCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$MessageEntityImpl>
    implements _$$MessageEntityImplCopyWith<$Res> {
  __$$MessageEntityImplCopyWithImpl(
      _$MessageEntityImpl _value, $Res Function(_$MessageEntityImpl) _then)
      : super(_value, _then);

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
    return _then(_$MessageEntityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageEntityType,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      customEmojiId: freezed == customEmojiId
          ? _value.customEmojiId
          : customEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageEntityImpl implements _MessageEntity {
  const _$MessageEntityImpl(
      {required this.type,
      required this.offset,
      required this.length,
      this.url,
      this.user,
      this.language,
      @JsonKey(name: 'custom_emoji_id') this.customEmojiId});

  factory _$MessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageEntityImplFromJson(json);

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
  final MessageEntityType type;

  /// Offset in UTF-16 code units to the start of the entity
  @override
  final int offset;

  /// Length of the entity in UTF-16 code units
  @override
  final int length;

  /// Optional. For "text_link" only, URL that will be opened after user taps
  /// on the text
  @override
  final String? url;

  /// Optional. For "text_mention" only, the mentioned user
  @override
  final User? user;

  /// Optional. For "pre" only, the programming language of the entity text
  @override
  final String? language;

  /// Optional. For "custom_emoji" only, unique identifier of the custom
  /// emoji. Use getCustomEmojiStickers to get full information about the
  /// sticker
  @override
  @JsonKey(name: 'custom_emoji_id')
  final String? customEmojiId;

  @override
  String toString() {
    return 'MessageEntity(type: $type, offset: $offset, length: $length, url: $url, user: $user, language: $language, customEmojiId: $customEmojiId)';
  }

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      __$$MessageEntityImplCopyWithImpl<_$MessageEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageEntityImplToJson(
      this,
    );
  }
}

abstract class _MessageEntity implements MessageEntity {
  const factory _MessageEntity(
          {required final MessageEntityType type,
          required final int offset,
          required final int length,
          final String? url,
          final User? user,
          final String? language,
          @JsonKey(name: 'custom_emoji_id') final String? customEmojiId}) =
      _$MessageEntityImpl;

  factory _MessageEntity.fromJson(Map<String, dynamic> json) =
      _$MessageEntityImpl.fromJson;

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
  MessageEntityType get type;

  /// Offset in UTF-16 code units to the start of the entity
  @override
  int get offset;

  /// Length of the entity in UTF-16 code units
  @override
  int get length;

  /// Optional. For "text_link" only, URL that will be opened after user taps
  /// on the text
  @override
  String? get url;

  /// Optional. For "text_mention" only, the mentioned user
  @override
  User? get user;

  /// Optional. For "pre" only, the programming language of the entity text
  @override
  String? get language;

  /// Optional. For "custom_emoji" only, unique identifier of the custom
  /// emoji. Use getCustomEmojiStickers to get full information about the
  /// sticker
  @override
  @JsonKey(name: 'custom_emoji_id')
  String? get customEmojiId;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
