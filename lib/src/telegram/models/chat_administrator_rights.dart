// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_administrator_rights.freezed.dart';
part 'chat_administrator_rights.g.dart';

/// Represents the rights of an administrator in a chat.
@freezed
abstract class ChatAdministratorRights with _$ChatAdministratorRights {
  /// Creates a new [ChatAdministratorRights] object.
  const factory ChatAdministratorRights({
    /// True, if the user's presence in the chat is hidden
    @JsonKey(name: 'is_anonymous') required final bool isAnonymous,

    /// True, if the administrator can access the chat event log, chat
    /// statistics, message statistics in channels, see channel members, see
    /// anonymous administrators in supergroups and ignore slow mode. Implied by
    /// any other administrator privilege
    @JsonKey(name: 'can_manage_chat') required final bool canManageChat,

    /// True, if the administrator can delete messages of other users
    @JsonKey(name: 'can_delete_messages') required final bool canDeleteMessages,

    /// True, if the administrator can manage video chats
    @JsonKey(name: 'can_manage_video_chats')
    required final bool canManageVideoChats,

    /// True, if the administrator can restrict, ban or unban chat members
    @JsonKey(name: 'can_restrict_members')
    required final bool canRestrictMembers,

    /// True, if the administrator can add new administrators with a subset of
    /// their own privileges or demote administrators that he has promoted,
    /// directly or indirectly (promoted by administrators that were appointed
    /// by the user)
    @JsonKey(name: 'can_promote_members') required final bool canPromoteMembers,

    /// True, if the user is allowed to change the chat title, photo and other
    /// settings
    @JsonKey(name: 'can_change_info') required final bool canChangeInfo,

    /// True, if the user is allowed to invite new users to the chat
    @JsonKey(name: 'can_invite_users') required final bool canInviteUsers,

    /// Optional. True, if the administrator can post in the channel; channels
    /// only
    @JsonKey(name: 'can_post_messages') final bool? canPostMessages,

    /// Optional. True, if the administrator can edit messages of other users
    /// and can pin messages; channels only
    @JsonKey(name: 'can_edit_messages') final bool? canEditMessages,

    /// Optional. True, if the user is allowed to pin messages; groups and
    /// supergroups only
    @JsonKey(name: 'can_pin_messages') final bool? canPinMessages,

    /// Optional. True, if the user is allowed to create, rename, close, and
    /// reopen forum topics; supergroups only
    @JsonKey(name: 'can_manage_forum') final bool? canManageForum,

    /// Optional. True, if the administrator can post stories in the channel;
    /// channels only
    @JsonKey(name: 'can_post_stories') final bool? canPostStories,

    /// Optional. True, if the administrator can edit stories posted by other
    /// users; channels only
    @JsonKey(name: 'can_edit_stories') final bool? canEditStories,

    /// Optional. True, if the administrator can delete stories posted by other
    /// users
    @JsonKey(name: 'can_delete_stories') final bool? canDeleteStories,

    /// Optional. True, if the administrator can manage direct messages of the channel and decline suggested posts; for channels only
    @JsonKey(name: 'can_manage_direct_messages') bool? canManageDirectMessages,
  }) = _ChatAdministratorRights;

  /// Creates a new [ChatAdministratorRights] object from json.
  factory ChatAdministratorRights.fromJson(Map<String, dynamic> json) =>
      _$ChatAdministratorRightsFromJson(json);
}
