// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_shared.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatShared _$ChatSharedFromJson(Map<String, dynamic> json) {
  return _ChatShared.fromJson(json);
}

/// @nodoc
mixin _$ChatShared {
  /// Identifier of the request
  @JsonKey(name: 'request_id')
  int get requestId => throw _privateConstructorUsedError;

  /// Identifier of the shared chat. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so a 64-bit integer or double-precision float type are
  /// safe for storing this identifier. The bot may not have access to the
  /// chat and could be unable to use this identifier, unless the chat is
  /// already known to the bot by some other means.
  @JsonKey(name: 'chat_id')
  int get chatId => throw _privateConstructorUsedError;

  /// Optional. Title of the chat, if the title was requested by the bot.
  String? get title => throw _privateConstructorUsedError;

  /// Optional. Username of the chat, if the username was requested by the bot
  /// and available.
  String? get username => throw _privateConstructorUsedError;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot
  List<PhotoSize>? get photo => throw _privateConstructorUsedError;

  /// Serializes this ChatShared to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatShared
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatSharedCopyWith<ChatShared> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSharedCopyWith<$Res> {
  factory $ChatSharedCopyWith(
          ChatShared value, $Res Function(ChatShared) then) =
      _$ChatSharedCopyWithImpl<$Res, ChatShared>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'chat_id') int chatId,
      String? title,
      String? username,
      List<PhotoSize>? photo});
}

/// @nodoc
class _$ChatSharedCopyWithImpl<$Res, $Val extends ChatShared>
    implements $ChatSharedCopyWith<$Res> {
  _$ChatSharedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatSharedImplCopyWith<$Res>
    implements $ChatSharedCopyWith<$Res> {
  factory _$$ChatSharedImplCopyWith(
          _$ChatSharedImpl value, $Res Function(_$ChatSharedImpl) then) =
      __$$ChatSharedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'chat_id') int chatId,
      String? title,
      String? username,
      List<PhotoSize>? photo});
}

/// @nodoc
class __$$ChatSharedImplCopyWithImpl<$Res>
    extends _$ChatSharedCopyWithImpl<$Res, _$ChatSharedImpl>
    implements _$$ChatSharedImplCopyWith<$Res> {
  __$$ChatSharedImplCopyWithImpl(
      _$ChatSharedImpl _value, $Res Function(_$ChatSharedImpl) _then)
      : super(_value, _then);

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
    return _then(_$ChatSharedImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatSharedImpl implements _ChatShared {
  const _$ChatSharedImpl(
      {@JsonKey(name: 'request_id') required this.requestId,
      @JsonKey(name: 'chat_id') required this.chatId,
      this.title,
      this.username,
      final List<PhotoSize>? photo})
      : _photo = photo;

  factory _$ChatSharedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatSharedImplFromJson(json);

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
  final String? title;

  /// Optional. Username of the chat, if the username was requested by the bot
  /// and available.
  @override
  final String? username;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot
  final List<PhotoSize>? _photo;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot
  @override
  List<PhotoSize>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatShared(requestId: $requestId, chatId: $chatId, title: $title, username: $username, photo: $photo)';
  }

  /// Create a copy of ChatShared
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSharedImplCopyWith<_$ChatSharedImpl> get copyWith =>
      __$$ChatSharedImplCopyWithImpl<_$ChatSharedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatSharedImplToJson(
      this,
    );
  }
}

abstract class _ChatShared implements ChatShared {
  const factory _ChatShared(
      {@JsonKey(name: 'request_id') required final int requestId,
      @JsonKey(name: 'chat_id') required final int chatId,
      final String? title,
      final String? username,
      final List<PhotoSize>? photo}) = _$ChatSharedImpl;

  factory _ChatShared.fromJson(Map<String, dynamic> json) =
      _$ChatSharedImpl.fromJson;

  /// Identifier of the request
  @override
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Identifier of the shared chat. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so a 64-bit integer or double-precision float type are
  /// safe for storing this identifier. The bot may not have access to the
  /// chat and could be unable to use this identifier, unless the chat is
  /// already known to the bot by some other means.
  @override
  @JsonKey(name: 'chat_id')
  int get chatId;

  /// Optional. Title of the chat, if the title was requested by the bot.
  @override
  String? get title;

  /// Optional. Username of the chat, if the username was requested by the bot
  /// and available.
  @override
  String? get username;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot
  @override
  List<PhotoSize>? get photo;

  /// Create a copy of ChatShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSharedImplCopyWith<_$ChatSharedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
