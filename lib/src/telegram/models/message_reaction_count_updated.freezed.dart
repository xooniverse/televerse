// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_reaction_count_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageReactionCountUpdated {
  /// The chat containing the message.
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Unique message identifier inside the chat.
  @JsonKey(name: 'message_id')
  int get messageId;

  /// Date of the change in Unix time.
  @JsonKey(name: 'date')
  int get date;

  /// List of reactions that are present on the message.
  @JsonKey(name: 'reactions')
  List<ReactionCount> get reactions;

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageReactionCountUpdatedCopyWith<MessageReactionCountUpdated>
  get copyWith =>
      _$MessageReactionCountUpdatedCopyWithImpl<MessageReactionCountUpdated>(
        this as MessageReactionCountUpdated,
        _$identity,
      );

  /// Serializes this MessageReactionCountUpdated to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MessageReactionCountUpdated(chat: $chat, messageId: $messageId, date: $date, reactions: $reactions)';
  }
}

/// @nodoc
abstract mixin class $MessageReactionCountUpdatedCopyWith<$Res> {
  factory $MessageReactionCountUpdatedCopyWith(
    MessageReactionCountUpdated value,
    $Res Function(MessageReactionCountUpdated) _then,
  ) = _$MessageReactionCountUpdatedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'chat') Chat chat,
    @JsonKey(name: 'message_id') int messageId,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'reactions') List<ReactionCount> reactions,
  });

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$MessageReactionCountUpdatedCopyWithImpl<$Res>
    implements $MessageReactionCountUpdatedCopyWith<$Res> {
  _$MessageReactionCountUpdatedCopyWithImpl(this._self, this._then);

  final MessageReactionCountUpdated _self;
  final $Res Function(MessageReactionCountUpdated) _then;

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? messageId = null,
    Object? date = null,
    Object? reactions = null,
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
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        reactions: null == reactions
            ? _self.reactions
            : reactions // ignore: cast_nullable_to_non_nullable
                  as List<ReactionCount>,
      ),
    );
  }

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MessageReactionCountUpdated].
extension MessageReactionCountUpdatedPatterns on MessageReactionCountUpdated {
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
    TResult Function(_MessageReactionCountUpdated value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MessageReactionCountUpdated() when $default != null:
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
    TResult Function(_MessageReactionCountUpdated value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageReactionCountUpdated():
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
    TResult? Function(_MessageReactionCountUpdated value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageReactionCountUpdated() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MessageReactionCountUpdated implements MessageReactionCountUpdated {
  const _MessageReactionCountUpdated({
    @JsonKey(name: 'chat') required this.chat,
    @JsonKey(name: 'message_id') required this.messageId,
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'reactions') required final List<ReactionCount> reactions,
  }) : _reactions = reactions;
  factory _MessageReactionCountUpdated.fromJson(Map<String, dynamic> json) =>
      _$MessageReactionCountUpdatedFromJson(json);

  /// The chat containing the message.
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Unique message identifier inside the chat.
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  /// Date of the change in Unix time.
  @override
  @JsonKey(name: 'date')
  final int date;

  /// List of reactions that are present on the message.
  final List<ReactionCount> _reactions;

  /// List of reactions that are present on the message.
  @override
  @JsonKey(name: 'reactions')
  List<ReactionCount> get reactions {
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reactions);
  }

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageReactionCountUpdatedCopyWith<_MessageReactionCountUpdated>
  get copyWith =>
      __$MessageReactionCountUpdatedCopyWithImpl<_MessageReactionCountUpdated>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$MessageReactionCountUpdatedToJson(this);
  }

  @override
  String toString() {
    return 'MessageReactionCountUpdated(chat: $chat, messageId: $messageId, date: $date, reactions: $reactions)';
  }
}

/// @nodoc
abstract mixin class _$MessageReactionCountUpdatedCopyWith<$Res>
    implements $MessageReactionCountUpdatedCopyWith<$Res> {
  factory _$MessageReactionCountUpdatedCopyWith(
    _MessageReactionCountUpdated value,
    $Res Function(_MessageReactionCountUpdated) _then,
  ) = __$MessageReactionCountUpdatedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'chat') Chat chat,
    @JsonKey(name: 'message_id') int messageId,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'reactions') List<ReactionCount> reactions,
  });

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$MessageReactionCountUpdatedCopyWithImpl<$Res>
    implements _$MessageReactionCountUpdatedCopyWith<$Res> {
  __$MessageReactionCountUpdatedCopyWithImpl(this._self, this._then);

  final _MessageReactionCountUpdated _self;
  final $Res Function(_MessageReactionCountUpdated) _then;

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chat = null,
    Object? messageId = null,
    Object? date = null,
    Object? reactions = null,
  }) {
    return _then(
      _MessageReactionCountUpdated(
        chat: null == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat,
        messageId: null == messageId
            ? _self.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        reactions: null == reactions
            ? _self._reactions
            : reactions // ignore: cast_nullable_to_non_nullable
                  as List<ReactionCount>,
      ),
    );
  }

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}
