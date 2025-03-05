// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_permissions.freezed.dart';
part 'chat_permissions.g.dart';

/// Describes actions that a non-administrator user is allowed to take in a
/// chat.
@freezed
class ChatPermissions with _$ChatPermissions {
  /// Creates a new [ChatPermissions] object.
  const factory ChatPermissions({
    /// Optional. True, if the user is allowed to send text messages, contacts,
    /// locations and venues
    @JsonKey(name: 'can_send_messages') bool? canSendMessages,

    /// Optional. True, if the user is allowed to send polls, implies
    /// can_send_messages
    @JsonKey(name: 'can_send_polls') bool? canSendPolls,

    /// Optional. True, if the user is allowed to send animations, games,
    /// stickers and use inline bots, implies can_send_media_messages
    @JsonKey(name: 'can_send_other_messages') bool? canSendOtherMessages,

    /// Optional. True, if the user is allowed to add web page previews to their
    /// messages, implies can_send_media_messages
    @JsonKey(name: 'can_add_web_page_previews') bool? canAddWebPagePreviews,

    /// Optional. True, if the user is allowed to change the chat title, photo
    /// and other settings. Ignored in public supergroups
    @JsonKey(name: 'can_change_info') bool? canChangeInfo,

    /// Optional. True, if the user is allowed to invite new users to the chat
    @JsonKey(name: 'can_invite_users') bool? canInviteUsers,

    /// Optional. True, if the user is allowed to pin messages. Ignored in
    /// public supergroups
    @JsonKey(name: 'can_pin_messages') bool? canPinMessages,

    /// Optional. True, if the user is allowed to create forum topics. If
    /// omitted defaults to the value of can_pin_messages
    @JsonKey(name: 'can_manage_topics') bool? canManageTopics,

    /// True, if the user is allowed to send audios Since Bot API 6.5
    @JsonKey(name: 'can_send_audios') bool? canSendAudios,

    /// True, if the user is allowed to send documents
    @JsonKey(name: 'can_send_documents') bool? canSendDocuments,

    /// True, if the user is allowed to send photos
    @JsonKey(name: 'can_send_photos') bool? canSendPhotos,

    /// True, if the user is allowed to send videos
    @JsonKey(name: 'can_send_videos') bool? canSendVideos,

    /// True, if the user is allowed to send video notes
    @JsonKey(name: 'can_send_video_notes') bool? canSendVideoNotes,

    /// True, if the user is allowed to send voice notes
    @JsonKey(name: 'can_send_voice_notes') bool? canSendVoiceNotes,
  }) = _ChatPermissions;

  /// Creates a new [ChatPermissions] object from json [String].
  factory ChatPermissions.fromJson(Map<String, dynamic> json) =>
      _$ChatPermissionsFromJson(json);
}
