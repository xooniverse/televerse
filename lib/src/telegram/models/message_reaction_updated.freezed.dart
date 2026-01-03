// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_reaction_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageReactionUpdated {
  /// The chat containing the message the user reacted to.
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Unique identifier of the message inside the chat.
  @JsonKey(name: 'message_id')
  int get messageId;

  /// The user that changed the reaction, if the user isn't anonymous.
  @JsonKey(name: 'user')
  User? get user;

  /// The chat on behalf of which the reaction was changed, if the user is anonymous.
  @JsonKey(name: 'actor_chat')
  Chat? get actorChat;

  /// Date of the change in Unix time.
  @JsonKey(name: 'date')
  int get date;

  /// Previous list of reaction types that were set by the user.
  @JsonKey(name: 'old_reaction')
  List<ReactionType> get oldReaction;

  /// New list of reaction types that have been set by the user.
  @JsonKey(name: 'new_reaction')
  List<ReactionType> get newReaction;

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageReactionUpdatedCopyWith<MessageReactionUpdated> get copyWith =>
      _$MessageReactionUpdatedCopyWithImpl<MessageReactionUpdated>(
        this as MessageReactionUpdated,
        _$identity,
      );

  /// Serializes this MessageReactionUpdated to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MessageReactionUpdated(chat: $chat, messageId: $messageId, user: $user, actorChat: $actorChat, date: $date, oldReaction: $oldReaction, newReaction: $newReaction)';
  }
}

/// @nodoc
abstract mixin class $MessageReactionUpdatedCopyWith<$Res> {
  factory $MessageReactionUpdatedCopyWith(
    MessageReactionUpdated value,
    $Res Function(MessageReactionUpdated) _then,
  ) = _$MessageReactionUpdatedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'chat') Chat chat,
    @JsonKey(name: 'message_id') int messageId,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'actor_chat') Chat? actorChat,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'old_reaction') List<ReactionType> oldReaction,
    @JsonKey(name: 'new_reaction') List<ReactionType> newReaction,
  });

  $ChatCopyWith<$Res> get chat;
  $UserCopyWith<$Res>? get user;
  $ChatCopyWith<$Res>? get actorChat;
}

/// @nodoc
class _$MessageReactionUpdatedCopyWithImpl<$Res>
    implements $MessageReactionUpdatedCopyWith<$Res> {
  _$MessageReactionUpdatedCopyWithImpl(this._self, this._then);

  final MessageReactionUpdated _self;
  final $Res Function(MessageReactionUpdated) _then;

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
    return _then(
      _self.copyWith(
        chat: null == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat,
        messageId: null == messageId
            ? _self.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        actorChat: freezed == actorChat
            ? _self.actorChat
            : actorChat // ignore: cast_nullable_to_non_nullable
                  as Chat?,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        oldReaction: null == oldReaction
            ? _self.oldReaction
            : oldReaction // ignore: cast_nullable_to_non_nullable
                  as List<ReactionType>,
        newReaction: null == newReaction
            ? _self.newReaction
            : newReaction // ignore: cast_nullable_to_non_nullable
                  as List<ReactionType>,
      ),
    );
  }

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of MessageReactionUpdated
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

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get actorChat {
    if (_self.actorChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.actorChat!, (value) {
      return _then(_self.copyWith(actorChat: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MessageReactionUpdated].
extension MessageReactionUpdatedPatterns on MessageReactionUpdated {
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
    TResult Function(_MessageReactionUpdated value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MessageReactionUpdated() when $default != null:
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
    TResult Function(_MessageReactionUpdated value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageReactionUpdated():
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
    TResult? Function(_MessageReactionUpdated value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageReactionUpdated() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MessageReactionUpdated implements MessageReactionUpdated {
  const _MessageReactionUpdated({
    @JsonKey(name: 'chat') required this.chat,
    @JsonKey(name: 'message_id') required this.messageId,
    @JsonKey(name: 'user') this.user,
    @JsonKey(name: 'actor_chat') this.actorChat,
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'old_reaction')
    required final List<ReactionType> oldReaction,
    @JsonKey(name: 'new_reaction')
    required final List<ReactionType> newReaction,
  }) : _oldReaction = oldReaction,
       _newReaction = newReaction;
  factory _MessageReactionUpdated.fromJson(Map<String, dynamic> json) =>
      _$MessageReactionUpdatedFromJson(json);

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

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageReactionUpdatedCopyWith<_MessageReactionUpdated> get copyWith =>
      __$MessageReactionUpdatedCopyWithImpl<_MessageReactionUpdated>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$MessageReactionUpdatedToJson(this);
  }

  @override
  String toString() {
    return 'MessageReactionUpdated(chat: $chat, messageId: $messageId, user: $user, actorChat: $actorChat, date: $date, oldReaction: $oldReaction, newReaction: $newReaction)';
  }
}

/// @nodoc
abstract mixin class _$MessageReactionUpdatedCopyWith<$Res>
    implements $MessageReactionUpdatedCopyWith<$Res> {
  factory _$MessageReactionUpdatedCopyWith(
    _MessageReactionUpdated value,
    $Res Function(_MessageReactionUpdated) _then,
  ) = __$MessageReactionUpdatedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'chat') Chat chat,
    @JsonKey(name: 'message_id') int messageId,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'actor_chat') Chat? actorChat,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'old_reaction') List<ReactionType> oldReaction,
    @JsonKey(name: 'new_reaction') List<ReactionType> newReaction,
  });

  @override
  $ChatCopyWith<$Res> get chat;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ChatCopyWith<$Res>? get actorChat;
}

/// @nodoc
class __$MessageReactionUpdatedCopyWithImpl<$Res>
    implements _$MessageReactionUpdatedCopyWith<$Res> {
  __$MessageReactionUpdatedCopyWithImpl(this._self, this._then);

  final _MessageReactionUpdated _self;
  final $Res Function(_MessageReactionUpdated) _then;

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chat = null,
    Object? messageId = null,
    Object? user = freezed,
    Object? actorChat = freezed,
    Object? date = null,
    Object? oldReaction = null,
    Object? newReaction = null,
  }) {
    return _then(
      _MessageReactionUpdated(
        chat: null == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat,
        messageId: null == messageId
            ? _self.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        actorChat: freezed == actorChat
            ? _self.actorChat
            : actorChat // ignore: cast_nullable_to_non_nullable
                  as Chat?,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        oldReaction: null == oldReaction
            ? _self._oldReaction
            : oldReaction // ignore: cast_nullable_to_non_nullable
                  as List<ReactionType>,
        newReaction: null == newReaction
            ? _self._newReaction
            : newReaction // ignore: cast_nullable_to_non_nullable
                  as List<ReactionType>,
      ),
    );
  }

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of MessageReactionUpdated
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

  /// Create a copy of MessageReactionUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get actorChat {
    if (_self.actorChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.actorChat!, (value) {
      return _then(_self.copyWith(actorChat: value));
    });
  }
}
