// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_reaction_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageReactionUpdated _$MessageReactionUpdatedFromJson(
    Map<String, dynamic> json) {
  return _MessageReactionUpdated.fromJson(json);
}

/// @nodoc
mixin _$MessageReactionUpdated {
  /// The chat containing the message the user reacted to.
  @JsonKey(name: 'chat')
  Chat get chat => throw _privateConstructorUsedError;

  /// Unique identifier of the message inside the chat.
  @JsonKey(name: 'message_id')
  int get messageId => throw _privateConstructorUsedError;

  /// The user that changed the reaction, if the user isn't anonymous.
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;

  /// The chat on behalf of which the reaction was changed, if the user is anonymous.
  @JsonKey(name: 'actor_chat')
  Chat? get actorChat => throw _privateConstructorUsedError;

  /// Date of the change in Unix time.
  @JsonKey(name: 'date')
  int get date => throw _privateConstructorUsedError;

  /// Previous list of reaction types that were set by the user.
  @JsonKey(name: 'old_reaction')
  List<ReactionType> get oldReaction => throw _privateConstructorUsedError;

  /// New list of reaction types that have been set by the user.
  @JsonKey(name: 'new_reaction')
  List<ReactionType> get newReaction => throw _privateConstructorUsedError;

  /// Serializes this MessageReactionUpdated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageReactionUpdatedCopyWith<MessageReactionUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageReactionUpdatedCopyWith<$Res> {
  factory $MessageReactionUpdatedCopyWith(MessageReactionUpdated value,
          $Res Function(MessageReactionUpdated) then) =
      _$MessageReactionUpdatedCopyWithImpl<$Res, MessageReactionUpdated>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'actor_chat') Chat? actorChat,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'old_reaction') List<ReactionType> oldReaction,
      @JsonKey(name: 'new_reaction') List<ReactionType> newReaction});

  $ChatCopyWith<$Res> get chat;
  $UserCopyWith<$Res>? get user;
  $ChatCopyWith<$Res>? get actorChat;
}

/// @nodoc
class _$MessageReactionUpdatedCopyWithImpl<$Res,
        $Val extends MessageReactionUpdated>
    implements $MessageReactionUpdatedCopyWith<$Res> {
  _$MessageReactionUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? messageId = null,
    Object? user = freezed,
    Object? actorChat = freezed,
    Object? date = null,
    Object? oldReaction = null,
    Object? newReaction = null,
  }) {
    return _then(_value.copyWith(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      actorChat: freezed == actorChat
          ? _value.actorChat
          : actorChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      oldReaction: null == oldReaction
          ? _value.oldReaction
          : oldReaction // ignore: cast_nullable_to_non_nullable
              as List<ReactionType>,
      newReaction: null == newReaction
          ? _value.newReaction
          : newReaction // ignore: cast_nullable_to_non_nullable
              as List<ReactionType>,
    ) as $Val);
  }

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }

  /// Create a copy of MessageReactionUpdated
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

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get actorChat {
    if (_value.actorChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.actorChat!, (value) {
      return _then(_value.copyWith(actorChat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageReactionUpdatedImplCopyWith<$Res>
    implements $MessageReactionUpdatedCopyWith<$Res> {
  factory _$$MessageReactionUpdatedImplCopyWith(
          _$MessageReactionUpdatedImpl value,
          $Res Function(_$MessageReactionUpdatedImpl) then) =
      __$$MessageReactionUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'actor_chat') Chat? actorChat,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'old_reaction') List<ReactionType> oldReaction,
      @JsonKey(name: 'new_reaction') List<ReactionType> newReaction});

  @override
  $ChatCopyWith<$Res> get chat;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ChatCopyWith<$Res>? get actorChat;
}

/// @nodoc
class __$$MessageReactionUpdatedImplCopyWithImpl<$Res>
    extends _$MessageReactionUpdatedCopyWithImpl<$Res,
        _$MessageReactionUpdatedImpl>
    implements _$$MessageReactionUpdatedImplCopyWith<$Res> {
  __$$MessageReactionUpdatedImplCopyWithImpl(
      _$MessageReactionUpdatedImpl _value,
      $Res Function(_$MessageReactionUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? messageId = null,
    Object? user = freezed,
    Object? actorChat = freezed,
    Object? date = null,
    Object? oldReaction = null,
    Object? newReaction = null,
  }) {
    return _then(_$MessageReactionUpdatedImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      actorChat: freezed == actorChat
          ? _value.actorChat
          : actorChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      oldReaction: null == oldReaction
          ? _value._oldReaction
          : oldReaction // ignore: cast_nullable_to_non_nullable
              as List<ReactionType>,
      newReaction: null == newReaction
          ? _value._newReaction
          : newReaction // ignore: cast_nullable_to_non_nullable
              as List<ReactionType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageReactionUpdatedImpl implements _MessageReactionUpdated {
  const _$MessageReactionUpdatedImpl(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'actor_chat') this.actorChat,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'old_reaction')
      required final List<ReactionType> oldReaction,
      @JsonKey(name: 'new_reaction')
      required final List<ReactionType> newReaction})
      : _oldReaction = oldReaction,
        _newReaction = newReaction;

  factory _$MessageReactionUpdatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageReactionUpdatedImplFromJson(json);

  /// The chat containing the message the user reacted to.
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Unique identifier of the message inside the chat.
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  /// The user that changed the reaction, if the user isn't anonymous.
  @override
  @JsonKey(name: 'user')
  final User? user;

  /// The chat on behalf of which the reaction was changed, if the user is anonymous.
  @override
  @JsonKey(name: 'actor_chat')
  final Chat? actorChat;

  /// Date of the change in Unix time.
  @override
  @JsonKey(name: 'date')
  final int date;

  /// Previous list of reaction types that were set by the user.
  final List<ReactionType> _oldReaction;

  /// Previous list of reaction types that were set by the user.
  @override
  @JsonKey(name: 'old_reaction')
  List<ReactionType> get oldReaction {
    if (_oldReaction is EqualUnmodifiableListView) return _oldReaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldReaction);
  }

  /// New list of reaction types that have been set by the user.
  final List<ReactionType> _newReaction;

  /// New list of reaction types that have been set by the user.
  @override
  @JsonKey(name: 'new_reaction')
  List<ReactionType> get newReaction {
    if (_newReaction is EqualUnmodifiableListView) return _newReaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newReaction);
  }

  @override
  String toString() {
    return 'MessageReactionUpdated(chat: $chat, messageId: $messageId, user: $user, actorChat: $actorChat, date: $date, oldReaction: $oldReaction, newReaction: $newReaction)';
  }

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReactionUpdatedImplCopyWith<_$MessageReactionUpdatedImpl>
      get copyWith => __$$MessageReactionUpdatedImplCopyWithImpl<
          _$MessageReactionUpdatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageReactionUpdatedImplToJson(
      this,
    );
  }
}

abstract class _MessageReactionUpdated implements MessageReactionUpdated {
  const factory _MessageReactionUpdated(
          {@JsonKey(name: 'chat') required final Chat chat,
          @JsonKey(name: 'message_id') required final int messageId,
          @JsonKey(name: 'user') final User? user,
          @JsonKey(name: 'actor_chat') final Chat? actorChat,
          @JsonKey(name: 'date') required final int date,
          @JsonKey(name: 'old_reaction')
          required final List<ReactionType> oldReaction,
          @JsonKey(name: 'new_reaction')
          required final List<ReactionType> newReaction}) =
      _$MessageReactionUpdatedImpl;

  factory _MessageReactionUpdated.fromJson(Map<String, dynamic> json) =
      _$MessageReactionUpdatedImpl.fromJson;

  /// The chat containing the message the user reacted to.
  @override
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Unique identifier of the message inside the chat.
  @override
  @JsonKey(name: 'message_id')
  int get messageId;

  /// The user that changed the reaction, if the user isn't anonymous.
  @override
  @JsonKey(name: 'user')
  User? get user;

  /// The chat on behalf of which the reaction was changed, if the user is anonymous.
  @override
  @JsonKey(name: 'actor_chat')
  Chat? get actorChat;

  /// Date of the change in Unix time.
  @override
  @JsonKey(name: 'date')
  int get date;

  /// Previous list of reaction types that were set by the user.
  @override
  @JsonKey(name: 'old_reaction')
  List<ReactionType> get oldReaction;

  /// New list of reaction types that have been set by the user.
  @override
  @JsonKey(name: 'new_reaction')
  List<ReactionType> get newReaction;

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReactionUpdatedImplCopyWith<_$MessageReactionUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
