// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_shared.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatShared {
  /// Identifier of the request
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Identifier of the shared chat. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so a 64-bit integer or double-precision float type are
  /// safe for storing this identifier. The bot may not have access to the
  /// chat and could be unable to use this identifier, unless the chat is
  /// already known to the bot by some other means.
  @JsonKey(name: 'chat_id')
  int get chatId;

  /// Optional. Title of the chat, if the title was requested by the bot.
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Username of the chat, if the username was requested by the bot
  /// and available.
  @JsonKey(name: 'username')
  String? get username;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo;

  /// Create a copy of ChatShared
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatSharedCopyWith<ChatShared> get copyWith =>
      _$ChatSharedCopyWithImpl<ChatShared>(this as ChatShared, _$identity);

  /// Serializes this ChatShared to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatShared(requestId: $requestId, chatId: $chatId, title: $title, username: $username, photo: $photo)';
  }
}

/// @nodoc
abstract mixin class $ChatSharedCopyWith<$Res> {
  factory $ChatSharedCopyWith(
          ChatShared value, $Res Function(ChatShared) _then) =
      _$ChatSharedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'chat_id') int chatId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'photo') List<PhotoSize>? photo});
}

/// @nodoc
class _$ChatSharedCopyWithImpl<$Res> implements $ChatSharedCopyWith<$Res> {
  _$ChatSharedCopyWithImpl(this._self, this._then);

  final ChatShared _self;
  final $Res Function(ChatShared) _then;

  /// Create a copy of ChatShared
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? chatId = null,
    Object? title = freezed,
    Object? username = freezed,
    Object? photo = freezed,
  }) {
    return _then(_self.copyWith(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChatShared implements ChatShared {
  const _ChatShared(
      {@JsonKey(name: 'request_id') required this.requestId,
      @JsonKey(name: 'chat_id') required this.chatId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'photo') final List<PhotoSize>? photo})
      : _photo = photo;
  factory _ChatShared.fromJson(Map<String, dynamic> json) =>
      _$ChatSharedFromJson(json);

  /// Identifier of the request
  @override
  @JsonKey(name: 'request_id')
  final int requestId;

  /// Identifier of the shared chat. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so a 64-bit integer or double-precision float type are
  /// safe for storing this identifier. The bot may not have access to the
  /// chat and could be unable to use this identifier, unless the chat is
  /// already known to the bot by some other means.
  @override
  @JsonKey(name: 'chat_id')
  final int chatId;

  /// Optional. Title of the chat, if the title was requested by the bot.
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Username of the chat, if the username was requested by the bot
  /// and available.
  @override
  @JsonKey(name: 'username')
  final String? username;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot
  final List<PhotoSize>? _photo;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ChatShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatSharedCopyWith<_ChatShared> get copyWith =>
      __$ChatSharedCopyWithImpl<_ChatShared>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatSharedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatShared(requestId: $requestId, chatId: $chatId, title: $title, username: $username, photo: $photo)';
  }
}

/// @nodoc
abstract mixin class _$ChatSharedCopyWith<$Res>
    implements $ChatSharedCopyWith<$Res> {
  factory _$ChatSharedCopyWith(
          _ChatShared value, $Res Function(_ChatShared) _then) =
      __$ChatSharedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'chat_id') int chatId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'photo') List<PhotoSize>? photo});
}

/// @nodoc
class __$ChatSharedCopyWithImpl<$Res> implements _$ChatSharedCopyWith<$Res> {
  __$ChatSharedCopyWithImpl(this._self, this._then);

  final _ChatShared _self;
  final $Res Function(_ChatShared) _then;

  /// Create a copy of ChatShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? chatId = null,
    Object? title = freezed,
    Object? username = freezed,
    Object? photo = freezed,
  }) {
    return _then(_ChatShared(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _self._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>?,
    ));
  }
}
