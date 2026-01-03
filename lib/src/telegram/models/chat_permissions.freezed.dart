// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatPermissions {
  /// Optional. True, if the user is allowed to send text messages, contacts,
  /// locations and venues
  @JsonKey(name: 'can_send_messages')
  bool? get canSendMessages;

  /// Optional. True, if the user is allowed to send polls, implies
  /// can_send_messages
  @JsonKey(name: 'can_send_polls')
  bool? get canSendPolls;

  /// Optional. True, if the user is allowed to send animations, games,
  /// stickers and use inline bots, implies can_send_media_messages
  @JsonKey(name: 'can_send_other_messages')
  bool? get canSendOtherMessages;

  /// Optional. True, if the user is allowed to add web page previews to their
  /// messages, implies can_send_media_messages
  @JsonKey(name: 'can_add_web_page_previews')
  bool? get canAddWebPagePreviews;

  /// Optional. True, if the user is allowed to change the chat title, photo
  /// and other settings. Ignored in public supergroups
  @JsonKey(name: 'can_change_info')
  bool? get canChangeInfo;

  /// Optional. True, if the user is allowed to invite new users to the chat
  @JsonKey(name: 'can_invite_users')
  bool? get canInviteUsers;

  /// Optional. True, if the user is allowed to pin messages. Ignored in
  /// public supergroups
  @JsonKey(name: 'can_pin_messages')
  bool? get canPinMessages;

  /// Optional. True, if the user is allowed to create forum topics. If
  /// omitted defaults to the value of can_pin_messages
  @JsonKey(name: 'can_manage_topics')
  bool? get canManageTopics;

  /// True, if the user is allowed to send audios Since Bot API 6.5
  @JsonKey(name: 'can_send_audios')
  bool? get canSendAudios;

  /// True, if the user is allowed to send documents
  @JsonKey(name: 'can_send_documents')
  bool? get canSendDocuments;

  /// True, if the user is allowed to send photos
  @JsonKey(name: 'can_send_photos')
  bool? get canSendPhotos;

  /// True, if the user is allowed to send videos
  @JsonKey(name: 'can_send_videos')
  bool? get canSendVideos;

  /// True, if the user is allowed to send video notes
  @JsonKey(name: 'can_send_video_notes')
  bool? get canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  @JsonKey(name: 'can_send_voice_notes')
  bool? get canSendVoiceNotes;

  /// Create a copy of ChatPermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatPermissionsCopyWith<ChatPermissions> get copyWith =>
      _$ChatPermissionsCopyWithImpl<ChatPermissions>(
        this as ChatPermissions,
        _$identity,
      );

  /// Serializes this ChatPermissions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatPermissions(canSendMessages: $canSendMessages, canSendPolls: $canSendPolls, canSendOtherMessages: $canSendOtherMessages, canAddWebPagePreviews: $canAddWebPagePreviews, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics, canSendAudios: $canSendAudios, canSendDocuments: $canSendDocuments, canSendPhotos: $canSendPhotos, canSendVideos: $canSendVideos, canSendVideoNotes: $canSendVideoNotes, canSendVoiceNotes: $canSendVoiceNotes)';
  }
}

/// @nodoc
abstract mixin class $ChatPermissionsCopyWith<$Res> {
  factory $ChatPermissionsCopyWith(
    ChatPermissions value,
    $Res Function(ChatPermissions) _then,
  ) = _$ChatPermissionsCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'can_send_messages') bool? canSendMessages,
    @JsonKey(name: 'can_send_polls') bool? canSendPolls,
    @JsonKey(name: 'can_send_other_messages') bool? canSendOtherMessages,
    @JsonKey(name: 'can_add_web_page_previews') bool? canAddWebPagePreviews,
    @JsonKey(name: 'can_change_info') bool? canChangeInfo,
    @JsonKey(name: 'can_invite_users') bool? canInviteUsers,
    @JsonKey(name: 'can_pin_messages') bool? canPinMessages,
    @JsonKey(name: 'can_manage_topics') bool? canManageTopics,
    @JsonKey(name: 'can_send_audios') bool? canSendAudios,
    @JsonKey(name: 'can_send_documents') bool? canSendDocuments,
    @JsonKey(name: 'can_send_photos') bool? canSendPhotos,
    @JsonKey(name: 'can_send_videos') bool? canSendVideos,
    @JsonKey(name: 'can_send_video_notes') bool? canSendVideoNotes,
    @JsonKey(name: 'can_send_voice_notes') bool? canSendVoiceNotes,
  });
}

/// @nodoc
class _$ChatPermissionsCopyWithImpl<$Res>
    implements $ChatPermissionsCopyWith<$Res> {
  _$ChatPermissionsCopyWithImpl(this._self, this._then);

  final ChatPermissions _self;
  final $Res Function(ChatPermissions) _then;

  /// Create a copy of ChatPermissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canSendMessages = freezed,
    Object? canSendPolls = freezed,
    Object? canSendOtherMessages = freezed,
    Object? canAddWebPagePreviews = freezed,
    Object? canChangeInfo = freezed,
    Object? canInviteUsers = freezed,
    Object? canPinMessages = freezed,
    Object? canManageTopics = freezed,
    Object? canSendAudios = freezed,
    Object? canSendDocuments = freezed,
    Object? canSendPhotos = freezed,
    Object? canSendVideos = freezed,
    Object? canSendVideoNotes = freezed,
    Object? canSendVoiceNotes = freezed,
  }) {
    return _then(
      _self.copyWith(
        canSendMessages: freezed == canSendMessages
            ? _self.canSendMessages
            : canSendMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendPolls: freezed == canSendPolls
            ? _self.canSendPolls
            : canSendPolls // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendOtherMessages: freezed == canSendOtherMessages
            ? _self.canSendOtherMessages
            : canSendOtherMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canAddWebPagePreviews: freezed == canAddWebPagePreviews
            ? _self.canAddWebPagePreviews
            : canAddWebPagePreviews // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canChangeInfo: freezed == canChangeInfo
            ? _self.canChangeInfo
            : canChangeInfo // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canInviteUsers: freezed == canInviteUsers
            ? _self.canInviteUsers
            : canInviteUsers // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canPinMessages: freezed == canPinMessages
            ? _self.canPinMessages
            : canPinMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canManageTopics: freezed == canManageTopics
            ? _self.canManageTopics
            : canManageTopics // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendAudios: freezed == canSendAudios
            ? _self.canSendAudios
            : canSendAudios // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendDocuments: freezed == canSendDocuments
            ? _self.canSendDocuments
            : canSendDocuments // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendPhotos: freezed == canSendPhotos
            ? _self.canSendPhotos
            : canSendPhotos // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendVideos: freezed == canSendVideos
            ? _self.canSendVideos
            : canSendVideos // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendVideoNotes: freezed == canSendVideoNotes
            ? _self.canSendVideoNotes
            : canSendVideoNotes // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendVoiceNotes: freezed == canSendVoiceNotes
            ? _self.canSendVoiceNotes
            : canSendVoiceNotes // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ChatPermissions].
extension ChatPermissionsPatterns on ChatPermissions {
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
    TResult Function(_ChatPermissions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatPermissions() when $default != null:
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
    TResult Function(_ChatPermissions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatPermissions():
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
    TResult? Function(_ChatPermissions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatPermissions() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatPermissions implements ChatPermissions {
  const _ChatPermissions({
    @JsonKey(name: 'can_send_messages') this.canSendMessages,
    @JsonKey(name: 'can_send_polls') this.canSendPolls,
    @JsonKey(name: 'can_send_other_messages') this.canSendOtherMessages,
    @JsonKey(name: 'can_add_web_page_previews') this.canAddWebPagePreviews,
    @JsonKey(name: 'can_change_info') this.canChangeInfo,
    @JsonKey(name: 'can_invite_users') this.canInviteUsers,
    @JsonKey(name: 'can_pin_messages') this.canPinMessages,
    @JsonKey(name: 'can_manage_topics') this.canManageTopics,
    @JsonKey(name: 'can_send_audios') this.canSendAudios,
    @JsonKey(name: 'can_send_documents') this.canSendDocuments,
    @JsonKey(name: 'can_send_photos') this.canSendPhotos,
    @JsonKey(name: 'can_send_videos') this.canSendVideos,
    @JsonKey(name: 'can_send_video_notes') this.canSendVideoNotes,
    @JsonKey(name: 'can_send_voice_notes') this.canSendVoiceNotes,
  });
  factory _ChatPermissions.fromJson(Map<String, dynamic> json) =>
      _$ChatPermissionsFromJson(json);

  /// Optional. True, if the user is allowed to send text messages, contacts,
  /// locations and venues
  @override
  @JsonKey(name: 'can_send_messages')
  final bool? canSendMessages;

  /// Optional. True, if the user is allowed to send polls, implies
  /// can_send_messages
  @override
  @JsonKey(name: 'can_send_polls')
  final bool? canSendPolls;

  /// Optional. True, if the user is allowed to send animations, games,
  /// stickers and use inline bots, implies can_send_media_messages
  @override
  @JsonKey(name: 'can_send_other_messages')
  final bool? canSendOtherMessages;

  /// Optional. True, if the user is allowed to add web page previews to their
  /// messages, implies can_send_media_messages
  @override
  @JsonKey(name: 'can_add_web_page_previews')
  final bool? canAddWebPagePreviews;

  /// Optional. True, if the user is allowed to change the chat title, photo
  /// and other settings. Ignored in public supergroups
  @override
  @JsonKey(name: 'can_change_info')
  final bool? canChangeInfo;

  /// Optional. True, if the user is allowed to invite new users to the chat
  @override
  @JsonKey(name: 'can_invite_users')
  final bool? canInviteUsers;

  /// Optional. True, if the user is allowed to pin messages. Ignored in
  /// public supergroups
  @override
  @JsonKey(name: 'can_pin_messages')
  final bool? canPinMessages;

  /// Optional. True, if the user is allowed to create forum topics. If
  /// omitted defaults to the value of can_pin_messages
  @override
  @JsonKey(name: 'can_manage_topics')
  final bool? canManageTopics;

  /// True, if the user is allowed to send audios Since Bot API 6.5
  @override
  @JsonKey(name: 'can_send_audios')
  final bool? canSendAudios;

  /// True, if the user is allowed to send documents
  @override
  @JsonKey(name: 'can_send_documents')
  final bool? canSendDocuments;

  /// True, if the user is allowed to send photos
  @override
  @JsonKey(name: 'can_send_photos')
  final bool? canSendPhotos;

  /// True, if the user is allowed to send videos
  @override
  @JsonKey(name: 'can_send_videos')
  final bool? canSendVideos;

  /// True, if the user is allowed to send video notes
  @override
  @JsonKey(name: 'can_send_video_notes')
  final bool? canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  @override
  @JsonKey(name: 'can_send_voice_notes')
  final bool? canSendVoiceNotes;

  /// Create a copy of ChatPermissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatPermissionsCopyWith<_ChatPermissions> get copyWith =>
      __$ChatPermissionsCopyWithImpl<_ChatPermissions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatPermissionsToJson(this);
  }

  @override
  String toString() {
    return 'ChatPermissions(canSendMessages: $canSendMessages, canSendPolls: $canSendPolls, canSendOtherMessages: $canSendOtherMessages, canAddWebPagePreviews: $canAddWebPagePreviews, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics, canSendAudios: $canSendAudios, canSendDocuments: $canSendDocuments, canSendPhotos: $canSendPhotos, canSendVideos: $canSendVideos, canSendVideoNotes: $canSendVideoNotes, canSendVoiceNotes: $canSendVoiceNotes)';
  }
}

/// @nodoc
abstract mixin class _$ChatPermissionsCopyWith<$Res>
    implements $ChatPermissionsCopyWith<$Res> {
  factory _$ChatPermissionsCopyWith(
    _ChatPermissions value,
    $Res Function(_ChatPermissions) _then,
  ) = __$ChatPermissionsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'can_send_messages') bool? canSendMessages,
    @JsonKey(name: 'can_send_polls') bool? canSendPolls,
    @JsonKey(name: 'can_send_other_messages') bool? canSendOtherMessages,
    @JsonKey(name: 'can_add_web_page_previews') bool? canAddWebPagePreviews,
    @JsonKey(name: 'can_change_info') bool? canChangeInfo,
    @JsonKey(name: 'can_invite_users') bool? canInviteUsers,
    @JsonKey(name: 'can_pin_messages') bool? canPinMessages,
    @JsonKey(name: 'can_manage_topics') bool? canManageTopics,
    @JsonKey(name: 'can_send_audios') bool? canSendAudios,
    @JsonKey(name: 'can_send_documents') bool? canSendDocuments,
    @JsonKey(name: 'can_send_photos') bool? canSendPhotos,
    @JsonKey(name: 'can_send_videos') bool? canSendVideos,
    @JsonKey(name: 'can_send_video_notes') bool? canSendVideoNotes,
    @JsonKey(name: 'can_send_voice_notes') bool? canSendVoiceNotes,
  });
}

/// @nodoc
class __$ChatPermissionsCopyWithImpl<$Res>
    implements _$ChatPermissionsCopyWith<$Res> {
  __$ChatPermissionsCopyWithImpl(this._self, this._then);

  final _ChatPermissions _self;
  final $Res Function(_ChatPermissions) _then;

  /// Create a copy of ChatPermissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? canSendMessages = freezed,
    Object? canSendPolls = freezed,
    Object? canSendOtherMessages = freezed,
    Object? canAddWebPagePreviews = freezed,
    Object? canChangeInfo = freezed,
    Object? canInviteUsers = freezed,
    Object? canPinMessages = freezed,
    Object? canManageTopics = freezed,
    Object? canSendAudios = freezed,
    Object? canSendDocuments = freezed,
    Object? canSendPhotos = freezed,
    Object? canSendVideos = freezed,
    Object? canSendVideoNotes = freezed,
    Object? canSendVoiceNotes = freezed,
  }) {
    return _then(
      _ChatPermissions(
        canSendMessages: freezed == canSendMessages
            ? _self.canSendMessages
            : canSendMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendPolls: freezed == canSendPolls
            ? _self.canSendPolls
            : canSendPolls // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendOtherMessages: freezed == canSendOtherMessages
            ? _self.canSendOtherMessages
            : canSendOtherMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canAddWebPagePreviews: freezed == canAddWebPagePreviews
            ? _self.canAddWebPagePreviews
            : canAddWebPagePreviews // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canChangeInfo: freezed == canChangeInfo
            ? _self.canChangeInfo
            : canChangeInfo // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canInviteUsers: freezed == canInviteUsers
            ? _self.canInviteUsers
            : canInviteUsers // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canPinMessages: freezed == canPinMessages
            ? _self.canPinMessages
            : canPinMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canManageTopics: freezed == canManageTopics
            ? _self.canManageTopics
            : canManageTopics // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendAudios: freezed == canSendAudios
            ? _self.canSendAudios
            : canSendAudios // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendDocuments: freezed == canSendDocuments
            ? _self.canSendDocuments
            : canSendDocuments // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendPhotos: freezed == canSendPhotos
            ? _self.canSendPhotos
            : canSendPhotos // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendVideos: freezed == canSendVideos
            ? _self.canSendVideos
            : canSendVideos // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendVideoNotes: freezed == canSendVideoNotes
            ? _self.canSendVideoNotes
            : canSendVideoNotes // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canSendVoiceNotes: freezed == canSendVoiceNotes
            ? _self.canSendVoiceNotes
            : canSendVoiceNotes // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
