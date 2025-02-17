// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatPermissions _$ChatPermissionsFromJson(Map<String, dynamic> json) {
  return _ChatPermissions.fromJson(json);
}

/// @nodoc
mixin _$ChatPermissions {
  /// Optional. True, if the user is allowed to send text messages, contacts,
  /// locations and venues
  @JsonKey(name: 'can_send_messages')
  bool? get canSendMessages => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to send polls, implies
  /// can_send_messages
  @JsonKey(name: 'can_send_polls')
  bool? get canSendPolls => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to send animations, games,
  /// stickers and use inline bots, implies can_send_media_messages
  @JsonKey(name: 'can_send_other_messages')
  bool? get canSendOtherMessages => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to add web page previews to their
  /// messages, implies can_send_media_messages
  @JsonKey(name: 'can_add_web_page_previews')
  bool? get canAddWebPagePreviews => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to change the chat title, photo
  /// and other settings. Ignored in public supergroups
  @JsonKey(name: 'can_change_info')
  bool? get canChangeInfo => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to invite new users to the chat
  @JsonKey(name: 'can_invite_users')
  bool? get canInviteUsers => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to pin messages. Ignored in
  /// public supergroups
  @JsonKey(name: 'can_pin_messages')
  bool? get canPinMessages => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to create forum topics. If
  /// omitted defaults to the value of can_pin_messages
  @JsonKey(name: 'can_manage_topics')
  bool? get canManageTopics => throw _privateConstructorUsedError;

  /// True, if the user is allowed to send audios Since Bot API 6.5
  @JsonKey(name: 'can_send_audios')
  bool? get canSendAudios => throw _privateConstructorUsedError;

  /// True, if the user is allowed to send documents
  @JsonKey(name: 'can_send_documents')
  bool? get canSendDocuments => throw _privateConstructorUsedError;

  /// True, if the user is allowed to send photos
  @JsonKey(name: 'can_send_photos')
  bool? get canSendPhotos => throw _privateConstructorUsedError;

  /// True, if the user is allowed to send videos
  @JsonKey(name: 'can_send_videos')
  bool? get canSendVideos => throw _privateConstructorUsedError;

  /// True, if the user is allowed to send video notes
  @JsonKey(name: 'can_send_video_notes')
  bool? get canSendVideoNotes => throw _privateConstructorUsedError;

  /// True, if the user is allowed to send voice notes
  @JsonKey(name: 'can_send_voice_notes')
  bool? get canSendVoiceNotes => throw _privateConstructorUsedError;

  /// Serializes this ChatPermissions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatPermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatPermissionsCopyWith<ChatPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPermissionsCopyWith<$Res> {
  factory $ChatPermissionsCopyWith(
          ChatPermissions value, $Res Function(ChatPermissions) then) =
      _$ChatPermissionsCopyWithImpl<$Res, ChatPermissions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'can_send_messages') bool? canSendMessages,
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
      @JsonKey(name: 'can_send_voice_notes') bool? canSendVoiceNotes});
}

/// @nodoc
class _$ChatPermissionsCopyWithImpl<$Res, $Val extends ChatPermissions>
    implements $ChatPermissionsCopyWith<$Res> {
  _$ChatPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      canSendMessages: freezed == canSendMessages
          ? _value.canSendMessages
          : canSendMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendPolls: freezed == canSendPolls
          ? _value.canSendPolls
          : canSendPolls // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendOtherMessages: freezed == canSendOtherMessages
          ? _value.canSendOtherMessages
          : canSendOtherMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canAddWebPagePreviews: freezed == canAddWebPagePreviews
          ? _value.canAddWebPagePreviews
          : canAddWebPagePreviews // ignore: cast_nullable_to_non_nullable
              as bool?,
      canChangeInfo: freezed == canChangeInfo
          ? _value.canChangeInfo
          : canChangeInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      canInviteUsers: freezed == canInviteUsers
          ? _value.canInviteUsers
          : canInviteUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPinMessages: freezed == canPinMessages
          ? _value.canPinMessages
          : canPinMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canManageTopics: freezed == canManageTopics
          ? _value.canManageTopics
          : canManageTopics // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendAudios: freezed == canSendAudios
          ? _value.canSendAudios
          : canSendAudios // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendDocuments: freezed == canSendDocuments
          ? _value.canSendDocuments
          : canSendDocuments // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendPhotos: freezed == canSendPhotos
          ? _value.canSendPhotos
          : canSendPhotos // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendVideos: freezed == canSendVideos
          ? _value.canSendVideos
          : canSendVideos // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendVideoNotes: freezed == canSendVideoNotes
          ? _value.canSendVideoNotes
          : canSendVideoNotes // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendVoiceNotes: freezed == canSendVoiceNotes
          ? _value.canSendVoiceNotes
          : canSendVoiceNotes // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatPermissionsImplCopyWith<$Res>
    implements $ChatPermissionsCopyWith<$Res> {
  factory _$$ChatPermissionsImplCopyWith(_$ChatPermissionsImpl value,
          $Res Function(_$ChatPermissionsImpl) then) =
      __$$ChatPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'can_send_messages') bool? canSendMessages,
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
      @JsonKey(name: 'can_send_voice_notes') bool? canSendVoiceNotes});
}

/// @nodoc
class __$$ChatPermissionsImplCopyWithImpl<$Res>
    extends _$ChatPermissionsCopyWithImpl<$Res, _$ChatPermissionsImpl>
    implements _$$ChatPermissionsImplCopyWith<$Res> {
  __$$ChatPermissionsImplCopyWithImpl(
      _$ChatPermissionsImpl _value, $Res Function(_$ChatPermissionsImpl) _then)
      : super(_value, _then);

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
    return _then(_$ChatPermissionsImpl(
      canSendMessages: freezed == canSendMessages
          ? _value.canSendMessages
          : canSendMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendPolls: freezed == canSendPolls
          ? _value.canSendPolls
          : canSendPolls // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendOtherMessages: freezed == canSendOtherMessages
          ? _value.canSendOtherMessages
          : canSendOtherMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canAddWebPagePreviews: freezed == canAddWebPagePreviews
          ? _value.canAddWebPagePreviews
          : canAddWebPagePreviews // ignore: cast_nullable_to_non_nullable
              as bool?,
      canChangeInfo: freezed == canChangeInfo
          ? _value.canChangeInfo
          : canChangeInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      canInviteUsers: freezed == canInviteUsers
          ? _value.canInviteUsers
          : canInviteUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPinMessages: freezed == canPinMessages
          ? _value.canPinMessages
          : canPinMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canManageTopics: freezed == canManageTopics
          ? _value.canManageTopics
          : canManageTopics // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendAudios: freezed == canSendAudios
          ? _value.canSendAudios
          : canSendAudios // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendDocuments: freezed == canSendDocuments
          ? _value.canSendDocuments
          : canSendDocuments // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendPhotos: freezed == canSendPhotos
          ? _value.canSendPhotos
          : canSendPhotos // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendVideos: freezed == canSendVideos
          ? _value.canSendVideos
          : canSendVideos // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendVideoNotes: freezed == canSendVideoNotes
          ? _value.canSendVideoNotes
          : canSendVideoNotes // ignore: cast_nullable_to_non_nullable
              as bool?,
      canSendVoiceNotes: freezed == canSendVoiceNotes
          ? _value.canSendVoiceNotes
          : canSendVoiceNotes // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatPermissionsImpl implements _ChatPermissions {
  const _$ChatPermissionsImpl(
      {@JsonKey(name: 'can_send_messages') this.canSendMessages,
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
      @JsonKey(name: 'can_send_voice_notes') this.canSendVoiceNotes});

  factory _$ChatPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatPermissionsImplFromJson(json);

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

  @override
  String toString() {
    return 'ChatPermissions(canSendMessages: $canSendMessages, canSendPolls: $canSendPolls, canSendOtherMessages: $canSendOtherMessages, canAddWebPagePreviews: $canAddWebPagePreviews, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics, canSendAudios: $canSendAudios, canSendDocuments: $canSendDocuments, canSendPhotos: $canSendPhotos, canSendVideos: $canSendVideos, canSendVideoNotes: $canSendVideoNotes, canSendVoiceNotes: $canSendVoiceNotes)';
  }

  /// Create a copy of ChatPermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatPermissionsImplCopyWith<_$ChatPermissionsImpl> get copyWith =>
      __$$ChatPermissionsImplCopyWithImpl<_$ChatPermissionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatPermissionsImplToJson(
      this,
    );
  }
}

abstract class _ChatPermissions implements ChatPermissions {
  const factory _ChatPermissions(
      {@JsonKey(name: 'can_send_messages') final bool? canSendMessages,
      @JsonKey(name: 'can_send_polls') final bool? canSendPolls,
      @JsonKey(name: 'can_send_other_messages')
      final bool? canSendOtherMessages,
      @JsonKey(name: 'can_add_web_page_previews')
      final bool? canAddWebPagePreviews,
      @JsonKey(name: 'can_change_info') final bool? canChangeInfo,
      @JsonKey(name: 'can_invite_users') final bool? canInviteUsers,
      @JsonKey(name: 'can_pin_messages') final bool? canPinMessages,
      @JsonKey(name: 'can_manage_topics') final bool? canManageTopics,
      @JsonKey(name: 'can_send_audios') final bool? canSendAudios,
      @JsonKey(name: 'can_send_documents') final bool? canSendDocuments,
      @JsonKey(name: 'can_send_photos') final bool? canSendPhotos,
      @JsonKey(name: 'can_send_videos') final bool? canSendVideos,
      @JsonKey(name: 'can_send_video_notes') final bool? canSendVideoNotes,
      @JsonKey(name: 'can_send_voice_notes')
      final bool? canSendVoiceNotes}) = _$ChatPermissionsImpl;

  factory _ChatPermissions.fromJson(Map<String, dynamic> json) =
      _$ChatPermissionsImpl.fromJson;

  /// Optional. True, if the user is allowed to send text messages, contacts,
  /// locations and venues
  @override
  @JsonKey(name: 'can_send_messages')
  bool? get canSendMessages;

  /// Optional. True, if the user is allowed to send polls, implies
  /// can_send_messages
  @override
  @JsonKey(name: 'can_send_polls')
  bool? get canSendPolls;

  /// Optional. True, if the user is allowed to send animations, games,
  /// stickers and use inline bots, implies can_send_media_messages
  @override
  @JsonKey(name: 'can_send_other_messages')
  bool? get canSendOtherMessages;

  /// Optional. True, if the user is allowed to add web page previews to their
  /// messages, implies can_send_media_messages
  @override
  @JsonKey(name: 'can_add_web_page_previews')
  bool? get canAddWebPagePreviews;

  /// Optional. True, if the user is allowed to change the chat title, photo
  /// and other settings. Ignored in public supergroups
  @override
  @JsonKey(name: 'can_change_info')
  bool? get canChangeInfo;

  /// Optional. True, if the user is allowed to invite new users to the chat
  @override
  @JsonKey(name: 'can_invite_users')
  bool? get canInviteUsers;

  /// Optional. True, if the user is allowed to pin messages. Ignored in
  /// public supergroups
  @override
  @JsonKey(name: 'can_pin_messages')
  bool? get canPinMessages;

  /// Optional. True, if the user is allowed to create forum topics. If
  /// omitted defaults to the value of can_pin_messages
  @override
  @JsonKey(name: 'can_manage_topics')
  bool? get canManageTopics;

  /// True, if the user is allowed to send audios Since Bot API 6.5
  @override
  @JsonKey(name: 'can_send_audios')
  bool? get canSendAudios;

  /// True, if the user is allowed to send documents
  @override
  @JsonKey(name: 'can_send_documents')
  bool? get canSendDocuments;

  /// True, if the user is allowed to send photos
  @override
  @JsonKey(name: 'can_send_photos')
  bool? get canSendPhotos;

  /// True, if the user is allowed to send videos
  @override
  @JsonKey(name: 'can_send_videos')
  bool? get canSendVideos;

  /// True, if the user is allowed to send video notes
  @override
  @JsonKey(name: 'can_send_video_notes')
  bool? get canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  @override
  @JsonKey(name: 'can_send_voice_notes')
  bool? get canSendVoiceNotes;

  /// Create a copy of ChatPermissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatPermissionsImplCopyWith<_$ChatPermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
