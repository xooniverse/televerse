// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_member_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMemberUpdated {
  /// Chat the user belongs to
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Performer of the action, which resulted in the change
  @JsonKey(name: 'from')
  User get from;

  /// Date the change was done in Unix time
  @JsonKey(name: 'date')
  int get date;

  /// Previous information about the chat member
  @JsonKey(name: 'old_chat_member')
  ChatMember get oldChatMember;

  /// New information about the chat member
  @JsonKey(name: 'new_chat_member')
  ChatMember get newChatMember;

  /// Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
  @JsonKey(name: 'invite_link')
  ChatInviteLink? get inviteLink;

  /// Optional. True, if the user joined the chat via a chat folder invite link
  @JsonKey(name: 'via_chat_folder_invite_link')
  bool? get viaChatFolderInviteLink;

  /// Optional. True, if the user joined the chat after sending a direct join request and being approved by an administrator
  @JsonKey(name: 'via_join_request')
  bool? get viaJoinRequest;

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMemberUpdatedCopyWith<ChatMemberUpdated> get copyWith =>
      _$ChatMemberUpdatedCopyWithImpl<ChatMemberUpdated>(
        this as ChatMemberUpdated,
        _$identity,
      );

  /// Serializes this ChatMemberUpdated to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatMemberUpdated(chat: $chat, from: $from, date: $date, oldChatMember: $oldChatMember, newChatMember: $newChatMember, inviteLink: $inviteLink, viaChatFolderInviteLink: $viaChatFolderInviteLink, viaJoinRequest: $viaJoinRequest)';
  }
}

/// @nodoc
abstract mixin class $ChatMemberUpdatedCopyWith<$Res> {
  factory $ChatMemberUpdatedCopyWith(
    ChatMemberUpdated value,
    $Res Function(ChatMemberUpdated) _then,
  ) = _$ChatMemberUpdatedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'chat') Chat chat,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'old_chat_member') ChatMember oldChatMember,
    @JsonKey(name: 'new_chat_member') ChatMember newChatMember,
    @JsonKey(name: 'invite_link') ChatInviteLink? inviteLink,
    @JsonKey(name: 'via_chat_folder_invite_link') bool? viaChatFolderInviteLink,
    @JsonKey(name: 'via_join_request') bool? viaJoinRequest,
  });

  $ChatCopyWith<$Res> get chat;
  $UserCopyWith<$Res> get from;
  $ChatMemberCopyWith<$Res> get oldChatMember;
  $ChatMemberCopyWith<$Res> get newChatMember;
  $ChatInviteLinkCopyWith<$Res>? get inviteLink;
}

/// @nodoc
class _$ChatMemberUpdatedCopyWithImpl<$Res>
    implements $ChatMemberUpdatedCopyWith<$Res> {
  _$ChatMemberUpdatedCopyWithImpl(this._self, this._then);

  final ChatMemberUpdated _self;
  final $Res Function(ChatMemberUpdated) _then;

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? from = null,
    Object? date = null,
    Object? oldChatMember = null,
    Object? newChatMember = null,
    Object? inviteLink = freezed,
    Object? viaChatFolderInviteLink = freezed,
    Object? viaJoinRequest = freezed,
  }) {
    return _then(
      _self.copyWith(
        chat: null == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        oldChatMember: null == oldChatMember
            ? _self.oldChatMember
            : oldChatMember // ignore: cast_nullable_to_non_nullable
                  as ChatMember,
        newChatMember: null == newChatMember
            ? _self.newChatMember
            : newChatMember // ignore: cast_nullable_to_non_nullable
                  as ChatMember,
        inviteLink: freezed == inviteLink
            ? _self.inviteLink
            : inviteLink // ignore: cast_nullable_to_non_nullable
                  as ChatInviteLink?,
        viaChatFolderInviteLink: freezed == viaChatFolderInviteLink
            ? _self.viaChatFolderInviteLink
            : viaChatFolderInviteLink // ignore: cast_nullable_to_non_nullable
                  as bool?,
        viaJoinRequest: freezed == viaJoinRequest
            ? _self.viaJoinRequest
            : viaJoinRequest // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberCopyWith<$Res> get oldChatMember {
    return $ChatMemberCopyWith<$Res>(_self.oldChatMember, (value) {
      return _then(_self.copyWith(oldChatMember: value));
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberCopyWith<$Res> get newChatMember {
    return $ChatMemberCopyWith<$Res>(_self.newChatMember, (value) {
      return _then(_self.copyWith(newChatMember: value));
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatInviteLinkCopyWith<$Res>? get inviteLink {
    if (_self.inviteLink == null) {
      return null;
    }

    return $ChatInviteLinkCopyWith<$Res>(_self.inviteLink!, (value) {
      return _then(_self.copyWith(inviteLink: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatMemberUpdated].
extension ChatMemberUpdatedPatterns on ChatMemberUpdated {
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
    TResult Function(_ChatMemberUpdated value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatMemberUpdated() when $default != null:
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
    TResult Function(_ChatMemberUpdated value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMemberUpdated():
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
    TResult? Function(_ChatMemberUpdated value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMemberUpdated() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatMemberUpdated implements ChatMemberUpdated {
  const _ChatMemberUpdated({
    @JsonKey(name: 'chat') required this.chat,
    @JsonKey(name: 'from') required this.from,
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'old_chat_member') required this.oldChatMember,
    @JsonKey(name: 'new_chat_member') required this.newChatMember,
    @JsonKey(name: 'invite_link') this.inviteLink,
    @JsonKey(name: 'via_chat_folder_invite_link') this.viaChatFolderInviteLink,
    @JsonKey(name: 'via_join_request') this.viaJoinRequest,
  });
  factory _ChatMemberUpdated.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberUpdatedFromJson(json);

  /// Chat the user belongs to
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Performer of the action, which resulted in the change
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Date the change was done in Unix time
  @override
  @JsonKey(name: 'date')
  final int date;

  /// Previous information about the chat member
  @override
  @JsonKey(name: 'old_chat_member')
  final ChatMember oldChatMember;

  /// New information about the chat member
  @override
  @JsonKey(name: 'new_chat_member')
  final ChatMember newChatMember;

  /// Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
  @override
  @JsonKey(name: 'invite_link')
  final ChatInviteLink? inviteLink;

  /// Optional. True, if the user joined the chat via a chat folder invite link
  @override
  @JsonKey(name: 'via_chat_folder_invite_link')
  final bool? viaChatFolderInviteLink;

  /// Optional. True, if the user joined the chat after sending a direct join request and being approved by an administrator
  @override
  @JsonKey(name: 'via_join_request')
  final bool? viaJoinRequest;

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatMemberUpdatedCopyWith<_ChatMemberUpdated> get copyWith =>
      __$ChatMemberUpdatedCopyWithImpl<_ChatMemberUpdated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMemberUpdatedToJson(this);
  }

  @override
  String toString() {
    return 'ChatMemberUpdated(chat: $chat, from: $from, date: $date, oldChatMember: $oldChatMember, newChatMember: $newChatMember, inviteLink: $inviteLink, viaChatFolderInviteLink: $viaChatFolderInviteLink, viaJoinRequest: $viaJoinRequest)';
  }
}

/// @nodoc
abstract mixin class _$ChatMemberUpdatedCopyWith<$Res>
    implements $ChatMemberUpdatedCopyWith<$Res> {
  factory _$ChatMemberUpdatedCopyWith(
    _ChatMemberUpdated value,
    $Res Function(_ChatMemberUpdated) _then,
  ) = __$ChatMemberUpdatedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'chat') Chat chat,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'old_chat_member') ChatMember oldChatMember,
    @JsonKey(name: 'new_chat_member') ChatMember newChatMember,
    @JsonKey(name: 'invite_link') ChatInviteLink? inviteLink,
    @JsonKey(name: 'via_chat_folder_invite_link') bool? viaChatFolderInviteLink,
    @JsonKey(name: 'via_join_request') bool? viaJoinRequest,
  });

  @override
  $ChatCopyWith<$Res> get chat;
  @override
  $UserCopyWith<$Res> get from;
  @override
  $ChatMemberCopyWith<$Res> get oldChatMember;
  @override
  $ChatMemberCopyWith<$Res> get newChatMember;
  @override
  $ChatInviteLinkCopyWith<$Res>? get inviteLink;
}

/// @nodoc
class __$ChatMemberUpdatedCopyWithImpl<$Res>
    implements _$ChatMemberUpdatedCopyWith<$Res> {
  __$ChatMemberUpdatedCopyWithImpl(this._self, this._then);

  final _ChatMemberUpdated _self;
  final $Res Function(_ChatMemberUpdated) _then;

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chat = null,
    Object? from = null,
    Object? date = null,
    Object? oldChatMember = null,
    Object? newChatMember = null,
    Object? inviteLink = freezed,
    Object? viaChatFolderInviteLink = freezed,
    Object? viaJoinRequest = freezed,
  }) {
    return _then(
      _ChatMemberUpdated(
        chat: null == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        oldChatMember: null == oldChatMember
            ? _self.oldChatMember
            : oldChatMember // ignore: cast_nullable_to_non_nullable
                  as ChatMember,
        newChatMember: null == newChatMember
            ? _self.newChatMember
            : newChatMember // ignore: cast_nullable_to_non_nullable
                  as ChatMember,
        inviteLink: freezed == inviteLink
            ? _self.inviteLink
            : inviteLink // ignore: cast_nullable_to_non_nullable
                  as ChatInviteLink?,
        viaChatFolderInviteLink: freezed == viaChatFolderInviteLink
            ? _self.viaChatFolderInviteLink
            : viaChatFolderInviteLink // ignore: cast_nullable_to_non_nullable
                  as bool?,
        viaJoinRequest: freezed == viaJoinRequest
            ? _self.viaJoinRequest
            : viaJoinRequest // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberCopyWith<$Res> get oldChatMember {
    return $ChatMemberCopyWith<$Res>(_self.oldChatMember, (value) {
      return _then(_self.copyWith(oldChatMember: value));
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberCopyWith<$Res> get newChatMember {
    return $ChatMemberCopyWith<$Res>(_self.newChatMember, (value) {
      return _then(_self.copyWith(newChatMember: value));
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatInviteLinkCopyWith<$Res>? get inviteLink {
    if (_self.inviteLink == null) {
      return null;
    }

    return $ChatInviteLinkCopyWith<$Res>(_self.inviteLink!, (value) {
      return _then(_self.copyWith(inviteLink: value));
    });
  }
}
